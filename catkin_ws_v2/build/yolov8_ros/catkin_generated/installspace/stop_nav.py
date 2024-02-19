#!/usr/bin/env python3
from geometry_msgs.msg import Twist
import rospy
from yolov8_msgs.msg import DetectionArray
from visualization_msgs.msg import MarkerArray
from yolov8_msgs.msg import Bb_vel
import message_filters
import numpy as np
class SubscribeAndPublish:
    def __init__(self):
        rospy.init_node('subscribe_and_publish', anonymous=True)
        # self.sub = rospy.Subscriber("/detections_3d", DetectionArray, self.callback)
        #         # subs
        self.sub = message_filters.Subscriber(
            "/detections_3d", DetectionArray)
        self.sub_vel = message_filters.Subscriber(
            "/bb_vel", Bb_vel)


        self._synchronizer = message_filters.ApproximateTimeSynchronizer(
            (self.sub, self.sub_vel), 10, 0.5)
        self._synchronizer.registerCallback(self.callback)

        self.bb_array={}
        self.pub = rospy.Publisher('/pause_nav', Twist, queue_size=10)
        
        self.pause = 0  #0 is continue, 1 is stop
        self.delta_t= 1
    def callback(self, detection_msg: DetectionArray, bb_vel: Bb_vel,):
        self.pause = 0
        self.bb_array[bb_vel.id]=bb_vel.vel
        
        for detection in detection_msg.detections:

            if abs(self.bb_array[bb_vel.id]>60) and abs(detection.bbox3d.center.position.y) < 1.0 :
                self.pause=1
                print("dynamic obstacle")
                print("vel:", self.bb_array[bb_vel.id])

                print(detection.class_name, "distacne:",detection.bbox3d.center.position.y)

            elif abs(self.bb_array[bb_vel.id]<60) and abs(detection.bbox3d.center.position.y) < 0.4:
                self.pause=1
                print("static obstacle")   
                print("vel:", self.bb_array[bb_vel.id])
                print(detection.class_name, "distacne:",detection.bbox3d.center.position.y)


        if self.pause == 1:
            output = Twist()
            output.linear.x= 0
            output.linear.y= 0
            output.angular.z= 0
            self.pub.publish(output)
            
    def spin(self):
        rospy.spin()

if __name__ == '__main__':
    node = SubscribeAndPublish()
    node.spin()