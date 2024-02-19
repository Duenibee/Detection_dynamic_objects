; Auto-generated. Do not edit!


(cl:in-package yolov8_msgs-msg)


;//! \htmlinclude DetectionArray.msg.html

(cl:defclass <DetectionArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector yolov8_msgs-msg:Detection)
   :initform (cl:make-array 0 :element-type 'yolov8_msgs-msg:Detection :initial-element (cl:make-instance 'yolov8_msgs-msg:Detection))))
)

(cl:defclass DetectionArray (<DetectionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov8_msgs-msg:<DetectionArray> is deprecated: use yolov8_msgs-msg:DetectionArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:header-val is deprecated.  Use yolov8_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <DetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:detections-val is deprecated.  Use yolov8_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionArray>) ostream)
  "Serializes a message object of type '<DetectionArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionArray>) istream)
  "Deserializes a message object of type '<DetectionArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yolov8_msgs-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionArray>)))
  "Returns string type for a message object of type '<DetectionArray>"
  "yolov8_msgs/DetectionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionArray)))
  "Returns string type for a message object of type 'DetectionArray"
  "yolov8_msgs/DetectionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionArray>)))
  "Returns md5sum for a message object of type '<DetectionArray>"
  "ab40dfc0c14b3f3b43fd349e871f56de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionArray)))
  "Returns md5sum for a message object of type 'DetectionArray"
  "ab40dfc0c14b3f3b43fd349e871f56de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionArray>)))
  "Returns full string definition for message of type '<DetectionArray>"
  (cl:format cl:nil "# represents all YOLOv8 detections in one frame~%~%std_msgs/Header header~%yolov8_msgs/Detection[] detections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: yolov8_msgs/Detection~%# defines a YOLOv8 detection result~%~%# class probability~%int32 class_id~%string class_name~%float64 score~%~%# ID for tracking~%string id~%~%# 2D bounding box surrounding the object in pixels~%yolov8_msgs/BoundingBox2D bbox~%~%# 3D bounding box surrounding the object in meters~%yolov8_msgs/BoundingBox3D bbox3d~%~%# segmentation mask of the detected object~%# it is only the boundary of the segmented object~%yolov8_msgs/Mask mask~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint2DArray keypoints~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint3DArray keypoints3d~%================================================================================~%MSG: yolov8_msgs/BoundingBox2D~%# 2D position and orientation of the bounding box center~%yolov8_msgs/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%yolov8_msgs/Vector2 size~%~%# id of the keypoint~%int32 id~%~%================================================================================~%MSG: yolov8_msgs/Pose2D~%# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/BoundingBox3D~%# 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# total size of the bounding box, in meters, surrounding the object's center~%geometry_msgs/Vector3 size~%~%# frame reference~%string frame_id~%~%# id of the keypoint~%int32 id~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: yolov8_msgs/Mask~%# segmentation mask for one instance~%~%# size of the original image~%int32 height~%int32 width~%~%# mask data represeted by the points of the border of the mask~%yolov8_msgs/Point2D[] data~%~%~%================================================================================~%MSG: yolov8_msgs/KeyPoint2DArray~%# represents all the keypoints for human pose estimation~%~%yolov8_msgs/KeyPoint2D[] data~%================================================================================~%MSG: yolov8_msgs/KeyPoint2D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/KeyPoint3DArray~%# represents all the keypoints for human pose estimation in meters~%~%yolov8_msgs/KeyPoint3D[] data~%~%# frame reference~%string frame_id~%================================================================================~%MSG: yolov8_msgs/KeyPoint3D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 3D point in meters~%geometry_msgs/Point point~%~%# conf of the keypoint~%float64 score~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionArray)))
  "Returns full string definition for message of type 'DetectionArray"
  (cl:format cl:nil "# represents all YOLOv8 detections in one frame~%~%std_msgs/Header header~%yolov8_msgs/Detection[] detections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: yolov8_msgs/Detection~%# defines a YOLOv8 detection result~%~%# class probability~%int32 class_id~%string class_name~%float64 score~%~%# ID for tracking~%string id~%~%# 2D bounding box surrounding the object in pixels~%yolov8_msgs/BoundingBox2D bbox~%~%# 3D bounding box surrounding the object in meters~%yolov8_msgs/BoundingBox3D bbox3d~%~%# segmentation mask of the detected object~%# it is only the boundary of the segmented object~%yolov8_msgs/Mask mask~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint2DArray keypoints~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint3DArray keypoints3d~%================================================================================~%MSG: yolov8_msgs/BoundingBox2D~%# 2D position and orientation of the bounding box center~%yolov8_msgs/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%yolov8_msgs/Vector2 size~%~%# id of the keypoint~%int32 id~%~%================================================================================~%MSG: yolov8_msgs/Pose2D~%# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/BoundingBox3D~%# 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# total size of the bounding box, in meters, surrounding the object's center~%geometry_msgs/Vector3 size~%~%# frame reference~%string frame_id~%~%# id of the keypoint~%int32 id~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: yolov8_msgs/Mask~%# segmentation mask for one instance~%~%# size of the original image~%int32 height~%int32 width~%~%# mask data represeted by the points of the border of the mask~%yolov8_msgs/Point2D[] data~%~%~%================================================================================~%MSG: yolov8_msgs/KeyPoint2DArray~%# represents all the keypoints for human pose estimation~%~%yolov8_msgs/KeyPoint2D[] data~%================================================================================~%MSG: yolov8_msgs/KeyPoint2D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/KeyPoint3DArray~%# represents all the keypoints for human pose estimation in meters~%~%yolov8_msgs/KeyPoint3D[] data~%~%# frame reference~%string frame_id~%================================================================================~%MSG: yolov8_msgs/KeyPoint3D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 3D point in meters~%geometry_msgs/Point point~%~%# conf of the keypoint~%float64 score~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionArray
    (cl:cons ':header (header msg))
    (cl:cons ':detections (detections msg))
))
