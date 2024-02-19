; Auto-generated. Do not edit!


(cl:in-package yolov8_msgs-msg)


;//! \htmlinclude BoundingBox2D.msg.html

(cl:defclass <BoundingBox2D> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type yolov8_msgs-msg:Pose2D
    :initform (cl:make-instance 'yolov8_msgs-msg:Pose2D))
   (size
    :reader size
    :initarg :size
    :type yolov8_msgs-msg:Vector2
    :initform (cl:make-instance 'yolov8_msgs-msg:Vector2))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass BoundingBox2D (<BoundingBox2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov8_msgs-msg:<BoundingBox2D> is deprecated: use yolov8_msgs-msg:BoundingBox2D instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:center-val is deprecated.  Use yolov8_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:size-val is deprecated.  Use yolov8_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:id-val is deprecated.  Use yolov8_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox2D>) ostream)
  "Serializes a message object of type '<BoundingBox2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox2D>) istream)
  "Deserializes a message object of type '<BoundingBox2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox2D>)))
  "Returns string type for a message object of type '<BoundingBox2D>"
  "yolov8_msgs/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox2D)))
  "Returns string type for a message object of type 'BoundingBox2D"
  "yolov8_msgs/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox2D>)))
  "Returns md5sum for a message object of type '<BoundingBox2D>"
  "7a678d71f8998ae4690f9ad4663f405f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox2D)))
  "Returns md5sum for a message object of type 'BoundingBox2D"
  "7a678d71f8998ae4690f9ad4663f405f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox2D>)))
  "Returns full string definition for message of type '<BoundingBox2D>"
  (cl:format cl:nil "# 2D position and orientation of the bounding box center~%yolov8_msgs/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%yolov8_msgs/Vector2 size~%~%# id of the keypoint~%int32 id~%~%================================================================================~%MSG: yolov8_msgs/Pose2D~%# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox2D)))
  "Returns full string definition for message of type 'BoundingBox2D"
  (cl:format cl:nil "# 2D position and orientation of the bounding box center~%yolov8_msgs/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%yolov8_msgs/Vector2 size~%~%# id of the keypoint~%int32 id~%~%================================================================================~%MSG: yolov8_msgs/Pose2D~%# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: yolov8_msgs/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox2D>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox2D
    (cl:cons ':center (center msg))
    (cl:cons ':size (size msg))
    (cl:cons ':id (id msg))
))
