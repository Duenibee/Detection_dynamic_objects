; Auto-generated. Do not edit!


(cl:in-package yolov8_msgs-msg)


;//! \htmlinclude KeyPoint2D.msg.html

(cl:defclass <KeyPoint2D> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type yolov8_msgs-msg:Point2D
    :initform (cl:make-instance 'yolov8_msgs-msg:Point2D))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass KeyPoint2D (<KeyPoint2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyPoint2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyPoint2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov8_msgs-msg:<KeyPoint2D> is deprecated: use yolov8_msgs-msg:KeyPoint2D instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <KeyPoint2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:id-val is deprecated.  Use yolov8_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <KeyPoint2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:point-val is deprecated.  Use yolov8_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <KeyPoint2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:score-val is deprecated.  Use yolov8_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyPoint2D>) ostream)
  "Serializes a message object of type '<KeyPoint2D>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyPoint2D>) istream)
  "Deserializes a message object of type '<KeyPoint2D>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyPoint2D>)))
  "Returns string type for a message object of type '<KeyPoint2D>"
  "yolov8_msgs/KeyPoint2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyPoint2D)))
  "Returns string type for a message object of type 'KeyPoint2D"
  "yolov8_msgs/KeyPoint2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyPoint2D>)))
  "Returns md5sum for a message object of type '<KeyPoint2D>"
  "88de9a841f74ce6110d631408b064ab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyPoint2D)))
  "Returns md5sum for a message object of type 'KeyPoint2D"
  "88de9a841f74ce6110d631408b064ab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyPoint2D>)))
  "Returns full string definition for message of type '<KeyPoint2D>"
  (cl:format cl:nil "# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyPoint2D)))
  "Returns full string definition for message of type 'KeyPoint2D"
  (cl:format cl:nil "# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyPoint2D>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyPoint2D>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyPoint2D
    (cl:cons ':id (id msg))
    (cl:cons ':point (point msg))
    (cl:cons ':score (score msg))
))
