; Auto-generated. Do not edit!


(cl:in-package yolov8_msgs-msg)


;//! \htmlinclude KeyPoint2DArray.msg.html

(cl:defclass <KeyPoint2DArray> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector yolov8_msgs-msg:KeyPoint2D)
   :initform (cl:make-array 0 :element-type 'yolov8_msgs-msg:KeyPoint2D :initial-element (cl:make-instance 'yolov8_msgs-msg:KeyPoint2D))))
)

(cl:defclass KeyPoint2DArray (<KeyPoint2DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyPoint2DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyPoint2DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov8_msgs-msg:<KeyPoint2DArray> is deprecated: use yolov8_msgs-msg:KeyPoint2DArray instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <KeyPoint2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:data-val is deprecated.  Use yolov8_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyPoint2DArray>) ostream)
  "Serializes a message object of type '<KeyPoint2DArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyPoint2DArray>) istream)
  "Deserializes a message object of type '<KeyPoint2DArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yolov8_msgs-msg:KeyPoint2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyPoint2DArray>)))
  "Returns string type for a message object of type '<KeyPoint2DArray>"
  "yolov8_msgs/KeyPoint2DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyPoint2DArray)))
  "Returns string type for a message object of type 'KeyPoint2DArray"
  "yolov8_msgs/KeyPoint2DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyPoint2DArray>)))
  "Returns md5sum for a message object of type '<KeyPoint2DArray>"
  "c319c71fb3a0d705740c7312436635df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyPoint2DArray)))
  "Returns md5sum for a message object of type 'KeyPoint2DArray"
  "c319c71fb3a0d705740c7312436635df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyPoint2DArray>)))
  "Returns full string definition for message of type '<KeyPoint2DArray>"
  (cl:format cl:nil "# represents all the keypoints for human pose estimation~%~%yolov8_msgs/KeyPoint2D[] data~%================================================================================~%MSG: yolov8_msgs/KeyPoint2D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyPoint2DArray)))
  "Returns full string definition for message of type 'KeyPoint2DArray"
  (cl:format cl:nil "# represents all the keypoints for human pose estimation~%~%yolov8_msgs/KeyPoint2D[] data~%================================================================================~%MSG: yolov8_msgs/KeyPoint2D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 2D point in pixels~%yolov8_msgs/Point2D point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: yolov8_msgs/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyPoint2DArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyPoint2DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyPoint2DArray
    (cl:cons ':data (data msg))
))
