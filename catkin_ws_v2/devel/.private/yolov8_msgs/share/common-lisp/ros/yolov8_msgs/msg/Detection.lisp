; Auto-generated. Do not edit!


(cl:in-package yolov8_msgs-msg)


;//! \htmlinclude Detection.msg.html

(cl:defclass <Detection> (roslisp-msg-protocol:ros-message)
  ((class_id
    :reader class_id
    :initarg :class_id
    :type cl:integer
    :initform 0)
   (class_name
    :reader class_name
    :initarg :class_name
    :type cl:string
    :initform "")
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (bbox
    :reader bbox
    :initarg :bbox
    :type yolov8_msgs-msg:BoundingBox2D
    :initform (cl:make-instance 'yolov8_msgs-msg:BoundingBox2D))
   (bbox3d
    :reader bbox3d
    :initarg :bbox3d
    :type yolov8_msgs-msg:BoundingBox3D
    :initform (cl:make-instance 'yolov8_msgs-msg:BoundingBox3D))
   (mask
    :reader mask
    :initarg :mask
    :type yolov8_msgs-msg:Mask
    :initform (cl:make-instance 'yolov8_msgs-msg:Mask))
   (keypoints
    :reader keypoints
    :initarg :keypoints
    :type yolov8_msgs-msg:KeyPoint2DArray
    :initform (cl:make-instance 'yolov8_msgs-msg:KeyPoint2DArray))
   (keypoints3d
    :reader keypoints3d
    :initarg :keypoints3d
    :type yolov8_msgs-msg:KeyPoint3DArray
    :initform (cl:make-instance 'yolov8_msgs-msg:KeyPoint3DArray)))
)

(cl:defclass Detection (<Detection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov8_msgs-msg:<Detection> is deprecated: use yolov8_msgs-msg:Detection instead.")))

(cl:ensure-generic-function 'class_id-val :lambda-list '(m))
(cl:defmethod class_id-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:class_id-val is deprecated.  Use yolov8_msgs-msg:class_id instead.")
  (class_id m))

(cl:ensure-generic-function 'class_name-val :lambda-list '(m))
(cl:defmethod class_name-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:class_name-val is deprecated.  Use yolov8_msgs-msg:class_name instead.")
  (class_name m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:score-val is deprecated.  Use yolov8_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:id-val is deprecated.  Use yolov8_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'bbox-val :lambda-list '(m))
(cl:defmethod bbox-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:bbox-val is deprecated.  Use yolov8_msgs-msg:bbox instead.")
  (bbox m))

(cl:ensure-generic-function 'bbox3d-val :lambda-list '(m))
(cl:defmethod bbox3d-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:bbox3d-val is deprecated.  Use yolov8_msgs-msg:bbox3d instead.")
  (bbox3d m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:mask-val is deprecated.  Use yolov8_msgs-msg:mask instead.")
  (mask m))

(cl:ensure-generic-function 'keypoints-val :lambda-list '(m))
(cl:defmethod keypoints-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:keypoints-val is deprecated.  Use yolov8_msgs-msg:keypoints instead.")
  (keypoints m))

(cl:ensure-generic-function 'keypoints3d-val :lambda-list '(m))
(cl:defmethod keypoints3d-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:keypoints3d-val is deprecated.  Use yolov8_msgs-msg:keypoints3d instead.")
  (keypoints3d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection>) ostream)
  "Serializes a message object of type '<Detection>"
  (cl:let* ((signed (cl:slot-value msg 'class_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox3d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'keypoints) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'keypoints3d) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection>) istream)
  "Deserializes a message object of type '<Detection>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox3d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'keypoints) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'keypoints3d) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection>)))
  "Returns string type for a message object of type '<Detection>"
  "yolov8_msgs/Detection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection)))
  "Returns string type for a message object of type 'Detection"
  "yolov8_msgs/Detection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection>)))
  "Returns md5sum for a message object of type '<Detection>"
  "31ba195dd6b98bf5c109b7496238608a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection)))
  "Returns md5sum for a message object of type 'Detection"
  "31ba195dd6b98bf5c109b7496238608a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection>)))
  "Returns full string definition for message of type '<Detection>"
  (cl:format cl:nil "# defines a YOLOv8 detection result~%~%# class probability~%int32 class_id~%string class_name~%float64 score~%~%# ID for tracking~%string id~%~%# 2D bounding box surrounding the object in pixels~%yolov8_msgs/BoundingBox2D bbox~%~%# 3D bounding box surrounding the object in meters~%yolov8_msgs/BoundingBox3D bbox3d~%~%# segmentation mask of the detected object~%# it is only the boundary of the segmented object~%yolov8_msgs/Mask mask~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint2DArray keypoints~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint3DArray keypoints3d~%================================================================================~%MSG: yolov8_msgs/BoundingBox2D~%# 2D position and orientation of the bounding box center~%yolov8_msgs/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%yolov8_msgs/Vector2 size~%~%# id of the keypoint~%int32 id~%~%================================================================================~%MSG: yolov8_msgs/Pose2D~%# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/BoundingBox3D~%# 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# total size of the bounding box, in meters, surrounding the object's center~%geometry_msgs/Vector3 size~%~%# frame reference~%string frame_id~%~%# id of the keypoint~%int32 id~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: yolov8_msgs/Mask~%# segmentation mask for one instance~%~%# size of the original image~%int32 height~%int32 width~%~%# mask data represeted by the points of the border of the mask~%yolov8_msgs/Point2D[] data~%~%~%================================================================================~%MSG: yolov8_msgs/KeyPoint2DArray~%# represents all the keypoints for human pose estimation~%~%yolov8_msgs/KeyPoint2D[] data~%================================================================================~%MSG: yolov8_msgs/KeyPoint2D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/KeyPoint3DArray~%# represents all the keypoints for human pose estimation in meters~%~%yolov8_msgs/KeyPoint3D[] data~%~%# frame reference~%string frame_id~%================================================================================~%MSG: yolov8_msgs/KeyPoint3D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 3D point in meters~%geometry_msgs/Point point~%~%# conf of the keypoint~%float64 score~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection)))
  "Returns full string definition for message of type 'Detection"
  (cl:format cl:nil "# defines a YOLOv8 detection result~%~%# class probability~%int32 class_id~%string class_name~%float64 score~%~%# ID for tracking~%string id~%~%# 2D bounding box surrounding the object in pixels~%yolov8_msgs/BoundingBox2D bbox~%~%# 3D bounding box surrounding the object in meters~%yolov8_msgs/BoundingBox3D bbox3d~%~%# segmentation mask of the detected object~%# it is only the boundary of the segmented object~%yolov8_msgs/Mask mask~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint2DArray keypoints~%~%# keypoints for human pose estimation~%yolov8_msgs/KeyPoint3DArray keypoints3d~%================================================================================~%MSG: yolov8_msgs/BoundingBox2D~%# 2D position and orientation of the bounding box center~%yolov8_msgs/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%yolov8_msgs/Vector2 size~%~%# id of the keypoint~%int32 id~%~%================================================================================~%MSG: yolov8_msgs/Pose2D~%# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/BoundingBox3D~%# 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# total size of the bounding box, in meters, surrounding the object's center~%geometry_msgs/Vector3 size~%~%# frame reference~%string frame_id~%~%# id of the keypoint~%int32 id~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: yolov8_msgs/Mask~%# segmentation mask for one instance~%~%# size of the original image~%int32 height~%int32 width~%~%# mask data represeted by the points of the border of the mask~%yolov8_msgs/Point2D[] data~%~%~%================================================================================~%MSG: yolov8_msgs/KeyPoint2DArray~%# represents all the keypoints for human pose estimation~%~%yolov8_msgs/KeyPoint2D[] data~%================================================================================~%MSG: yolov8_msgs/KeyPoint2D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/KeyPoint3DArray~%# represents all the keypoints for human pose estimation in meters~%~%yolov8_msgs/KeyPoint3D[] data~%~%# frame reference~%string frame_id~%================================================================================~%MSG: yolov8_msgs/KeyPoint3D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 3D point in meters~%geometry_msgs/Point point~%~%# conf of the keypoint~%float64 score~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'class_name))
     8
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox3d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'keypoints))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'keypoints3d))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection
    (cl:cons ':class_id (class_id msg))
    (cl:cons ':class_name (class_name msg))
    (cl:cons ':score (score msg))
    (cl:cons ':id (id msg))
    (cl:cons ':bbox (bbox msg))
    (cl:cons ':bbox3d (bbox3d msg))
    (cl:cons ':mask (mask msg))
    (cl:cons ':keypoints (keypoints msg))
    (cl:cons ':keypoints3d (keypoints3d msg))
))
