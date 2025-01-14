# Copyright (C) 2023  Miguel Ángel González Santamarta

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
from std_msgs.msg import Header

import time
import numpy as np
from typing import List, Tuple
import rospy
import message_filters
from cv_bridge import CvBridge
from tf2_ros.buffer import Buffer
from tf2_ros import TransformException
from tf2_ros.transform_listener import TransformListener

from sensor_msgs.msg import CameraInfo, Image
from geometry_msgs.msg import TransformStamped
from yolov8_msgs.msg import Detection
from yolov8_msgs.msg import DetectionArray
from yolov8_msgs.msg import KeyPoint3D
from yolov8_msgs.msg import KeyPoint3DArray
from yolov8_msgs.msg import BoundingBox3D
from yolov8_msgs.msg import Bb_vel


class Detect3DNode():

    def __init__(self) -> None:
        rospy.init_node('detect_3d_node', anonymous=False)

        # aux
        self.tf_buffer = Buffer()
        self.tf_listener = TransformListener(self.tf_buffer)
        self.cv_bridge = CvBridge()
        self.maximum_detection_threshold = 0.05
        self.depth_image_units_divisor = 1000
        self.target_frame="base_link"
        self.class_arr=np.zeros((100,5))
        # pubs
        self._pub = rospy.Publisher("detections_3d",DetectionArray,queue_size= 10)
        self._pub2 = rospy.Publisher("bb_vel",Bb_vel,queue_size= 10)

        # subs
        self.depth_sub = message_filters.Subscriber(
            "/camera/aligned_depth_to_color/image_raw", Image)
        self.depth_info_sub = message_filters.Subscriber(
            "/camera/depth/camera_info", CameraInfo)
        self.detections_sub = message_filters.Subscriber(
            "detections", DetectionArray)

        self._synchronizer = message_filters.ApproximateTimeSynchronizer(
            (self.depth_sub, self.depth_info_sub, self.detections_sub), 10, 0.5)
        self._synchronizer.registerCallback(self.on_detections)

    def on_detections(
        self,
        depth_msg: Image,
        depth_info_msg: CameraInfo,
        detections_msg: DetectionArray,
    ) -> None:

        new_detections_msg = DetectionArray()
        new_detections_msg.header = detections_msg.header
        new_detections_msg.detections = self.process_detections(
            depth_msg, depth_info_msg, detections_msg)
        self._pub.publish(new_detections_msg)

    def process_detections(
        self,
        depth_msg: Image,
        depth_info_msg: CameraInfo,
        detections_msg: DetectionArray
    ) -> List[Detection]:

        # check if there are detections
        if not detections_msg.detections:
            return []

        transform = self.get_transform(depth_info_msg.header.frame_id)

        if transform is None:
            return []

        new_detections = []
        depth_image = self.cv_bridge.imgmsg_to_cv2(depth_msg)

        for detection in detections_msg.detections:
            bbox3d = self.convert_bb_to_3d(
                depth_image, depth_info_msg, detection)
            if bbox3d is not None:
                new_detections.append(detection)

                bbox3d = Detect3DNode.transform_3d_box(
                    bbox3d, transform[0], transform[1],bbox3d.id)
                bbox3d.frame_id = self.target_frame
                new_detections[-1].bbox3d = bbox3d

                if detection.keypoints.data:
                    keypoints3d = self.convert_keypoints_to_3d(
                        depth_image, depth_info_msg, detection)
                    keypoints3d = Detect3DNode.transform_3d_keypoints(
                        keypoints3d, transform[0], transform[1])
                    keypoints3d.frame_id = self.target_frame
                    new_detections[-1].keypoints3d = keypoints3d

        return new_detections

    def convert_bb_to_3d(
        self,
        depth_image: np.ndarray,
        depth_info: CameraInfo,
        detection: Detection
    ) -> BoundingBox3D:

        # crop depth image by the 2d BB
        # Mask의 좌표들을 평균=> 중점 좌표 
        if len(detection.mask.data)!=0:
            total_x = sum(obj.x for obj in detection.mask.data)
            center_x = int(total_x / len(detection.mask.data))
            total_y = sum(obj.y for obj in detection.mask.data)
            center_y = int(total_y / len(detection.mask.data))

        else: 
            center_x = int(detection.bbox.center.position.x)
            center_y = int(detection.bbox.center.position.y)
            
        size_x = int(detection.bbox.size.x)
        size_y = int(detection.bbox.size.y)

        u_min = max(center_x - size_x // 2, 0)
        u_max = min(center_x + size_x // 2, depth_image.shape[1] - 1)
        v_min = max(center_y - size_y // 2, 0)
        v_max = min(center_y + size_y // 2, depth_image.shape[0] - 1)

        roi = depth_image[v_min:v_max, u_min:u_max] / \
            self.depth_image_units_divisor  # convert to meters
        if not np.any(roi):
            return None

        # find the z coordinate on the 3D BB
        bb_center_z_coord = depth_image[int(center_y)][int(
            center_x)] / self.depth_image_units_divisor
        z_diff = np.abs(roi - bb_center_z_coord)
        mask_z = z_diff <= self.maximum_detection_threshold
        if not np.any(mask_z):
            return None

        roi_threshold = roi[mask_z]
        z_min, z_max = np.min(roi_threshold), np.max(roi_threshold)
        z = (z_max + z_min) / 2
        if z == 0:
            return None

        # project from image to world space
        k = depth_info.K
        px, py, fx, fy = k[2], k[5], k[0], k[4]
        x = z * (center_x - px) / fx
        y = z * (center_y - py) / fy
        w = z * (size_x / fx)
        h = z * (size_y / fy)

        # create 3D BB
        msg = BoundingBox3D()
        msg.center.position.x = x
        msg.center.position.y = y
        msg.center.position.z = z
        msg.size.x = w
        msg.size.y = h
        msg.size.z = float(z_max - z_min)
        msg.id = detection.bbox.id
        self.callback2(msg)
        return msg
    
    def callback2(self, msg):
        if self.class_arr[msg.id,3]==1:
            prev_position=[self.class_arr[msg.id,0], self.class_arr[msg.id,1],self.class_arr[msg.id,2]]
            current_position=[msg.center.position.x, msg.center.position.y,msg.center.position.z]
            distance = np.linalg.norm(np.array(current_position) - np.array(prev_position))
            current_time = time.time()
            delta_t= current_time - self.class_arr[msg.id,4]
            velocity = distance / delta_t
            

            # update
            self.class_arr[msg.id,0]= msg.center.position.x
            self.class_arr[msg.id,1]= msg.center.position.y
            self.class_arr[msg.id,2]= msg.center.position.z
            self.class_arr[msg.id,4]= time.time()
            
            print(msg.id,': velocity:', velocity)
            header = Header()
            header.stamp = rospy.Time.now()  # 현재 시간을 타임스탬프로 설정
            header.frame_id = 'base_link'
            vel2=Bb_vel()
            vel2.header = header
            vel2.id = msg.id
            vel2.vel=velocity
            self._pub2.publish(vel2)
        else: # 첫접근 
            self.class_arr[msg.id,0]= msg.center.position.x
            self.class_arr[msg.id,1]= msg.center.position.y
            self.class_arr[msg.id,2]= msg.center.position.z
            self.class_arr[msg.id,3]= 1
            self.class_arr[msg.id,4]= time.time()

    def convert_keypoints_to_3d(
        self,
        depth_image: np.ndarray,
        depth_info: CameraInfo,
        detection: Detection
    ) -> KeyPoint3DArray:

        # build an array of 2d keypoints
        keypoints_2d = np.array([[p.point.x, p.point.y]
                                for p in detection.keypoints.data], dtype=np.int16)
        u = np.array(keypoints_2d[:, 1]).clip(0, depth_info.height - 1)
        v = np.array(keypoints_2d[:, 0]).clip(0, depth_info.width - 1)

        # sample depth image and project to 3D
        z = depth_image[u, v]
        k = depth_info.k
        px, py, fx, fy = k[2], k[5], k[0], k[4]
        x = z * (v - px) / fx
        y = z * (u - py) / fy
        points_3d = np.dstack([x, y, z]).reshape(-1, 3) / \
            self.depth_image_units_divisor  # convert to meters

        # generate message
        msg_array = KeyPoint3DArray()
        for p, d in zip(points_3d, detection.keypoints.data):
            if not np.isnan(p).any():
                msg = KeyPoint3D()
                msg.point.x = p[0]
                msg.point.y = p[1]
                msg.point.z = p[2]
                msg.id = d.id
                msg.score = d.score
                msg_array.data.append(msg)

        return msg_array

    def get_transform(self, frame_id: str) -> Tuple[np.ndarray]:
        # transform position from image frame to target_frame
        rotation = None
        translation = None

        try:
            transform: TransformStamped = self.tf_buffer.lookup_transform(
                self.target_frame,
                frame_id,
                rospy.rostime.Time())

            translation = np.array([transform.transform.translation.x,
                                    transform.transform.translation.y,
                                    transform.transform.translation.z])

            rotation = np.array([transform.transform.rotation.w,
                                 transform.transform.rotation.x,
                                 transform.transform.rotation.y,
                                 transform.transform.rotation.z])

            return translation, rotation

        except TransformException as ex:
            self.get_logger().error(f"Could not transform: {ex}")
            return None

    @staticmethod
    def transform_3d_box(
        bbox: BoundingBox3D,
        translation: np.ndarray,
        rotation: np.ndarray,
        id: int
    ) -> BoundingBox3D:

        # position
        position = Detect3DNode.qv_mult(
            rotation,
            np.array([bbox.center.position.x,
                      bbox.center.position.y,
                      bbox.center.position.z])
        ) + translation

        bbox.center.position.x = position[0]
        bbox.center.position.y = position[1]
        bbox.center.position.z = position[2]

        # size
        size = Detect3DNode.qv_mult(
            rotation,
            np.array([bbox.size.x,
                      bbox.size.y,
                      bbox.size.z])
        )

        bbox.size.x = abs(size[0])
        bbox.size.y = abs(size[1])
        bbox.size.z = abs(size[2])
        bbox.id = id
  

        return bbox

    @staticmethod
    def transform_3d_keypoints(
        keypoints: KeyPoint3DArray,
        translation: np.ndarray,
        rotation: np.ndarray,
    ) -> KeyPoint3DArray:

        for point in keypoints.data:
            position = Detect3DNode.qv_mult(
                rotation,
                np.array([
                    point.point.x,
                    point.point.y,
                    point.point.z
                ])
            ) + translation

            point.point.x = position[0]
            point.point.y = position[1]
            point.point.z = position[2]

        return keypoints

    @staticmethod
    def qv_mult(q: np.ndarray, v: np.ndarray) -> np.ndarray:
        q = np.array(q, dtype=np.float64)
        v = np.array(v, dtype=np.float64)
        qvec = q[1:]
        uv = np.cross(qvec, v)
        uuv = np.cross(qvec, uv)
        return v + 2 * (uv * q[0] + uuv)


def main():

    node = Detect3DNode()
    rate = rospy.Rate(30) #1Hz

    while not rospy.is_shutdown():
                
        # 정해둔 주기(hz)만큼 일시중단
        rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass