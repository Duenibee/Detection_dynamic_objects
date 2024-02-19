; Auto-generated. Do not edit!


(cl:in-package yolov8_msgs-msg)


;//! \htmlinclude Pose2D.msg.html

(cl:defclass <Pose2D> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type yolov8_msgs-msg:Point2D
    :initform (cl:make-instance 'yolov8_msgs-msg:Point2D))
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pose2D (<Pose2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov8_msgs-msg:<Pose2D> is deprecated: use yolov8_msgs-msg:Pose2D instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Pose2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:position-val is deprecated.  Use yolov8_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Pose2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:theta-val is deprecated.  Use yolov8_msgs-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose2D>) ostream)
  "Serializes a message object of type '<Pose2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose2D>) istream)
  "Deserializes a message object of type '<Pose2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose2D>)))
  "Returns string type for a message object of type '<Pose2D>"
  "yolov8_msgs/Pose2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose2D)))
  "Returns string type for a message object of type 'Pose2D"
  "yolov8_msgs/Pose2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose2D>)))
  "Returns md5sum for a message object of type '<Pose2D>"
  "d8af0ef1db02b310d0bd6166725bf7b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose2D)))
  "Returns md5sum for a message object of type 'Pose2D"
  "d8af0ef1db02b310d0bd6166725bf7b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose2D>)))
  "Returns full string definition for message of type '<Pose2D>"
  (cl:format cl:nil "# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose2D)))
  "Returns full string definition for message of type 'Pose2D"
  (cl:format cl:nil "# 2D position in pixel coordinates~%~%yolov8_msgs/Point2D position~%float64 theta~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose2D
    (cl:cons ':position (position msg))
    (cl:cons ':theta (theta msg))
))
