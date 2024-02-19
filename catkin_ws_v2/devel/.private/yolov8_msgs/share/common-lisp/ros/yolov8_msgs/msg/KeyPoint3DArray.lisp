; Auto-generated. Do not edit!


(cl:in-package yolov8_msgs-msg)


;//! \htmlinclude KeyPoint3DArray.msg.html

(cl:defclass <KeyPoint3DArray> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector yolov8_msgs-msg:KeyPoint3D)
   :initform (cl:make-array 0 :element-type 'yolov8_msgs-msg:KeyPoint3D :initial-element (cl:make-instance 'yolov8_msgs-msg:KeyPoint3D)))
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass KeyPoint3DArray (<KeyPoint3DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyPoint3DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyPoint3DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolov8_msgs-msg:<KeyPoint3DArray> is deprecated: use yolov8_msgs-msg:KeyPoint3DArray instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <KeyPoint3DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:data-val is deprecated.  Use yolov8_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <KeyPoint3DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolov8_msgs-msg:frame_id-val is deprecated.  Use yolov8_msgs-msg:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyPoint3DArray>) ostream)
  "Serializes a message object of type '<KeyPoint3DArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyPoint3DArray>) istream)
  "Deserializes a message object of type '<KeyPoint3DArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yolov8_msgs-msg:KeyPoint3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyPoint3DArray>)))
  "Returns string type for a message object of type '<KeyPoint3DArray>"
  "yolov8_msgs/KeyPoint3DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyPoint3DArray)))
  "Returns string type for a message object of type 'KeyPoint3DArray"
  "yolov8_msgs/KeyPoint3DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyPoint3DArray>)))
  "Returns md5sum for a message object of type '<KeyPoint3DArray>"
  "3fb7359c0337d8b16bcb324732c066fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyPoint3DArray)))
  "Returns md5sum for a message object of type 'KeyPoint3DArray"
  "3fb7359c0337d8b16bcb324732c066fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyPoint3DArray>)))
  "Returns full string definition for message of type '<KeyPoint3DArray>"
  (cl:format cl:nil "# represents all the keypoints for human pose estimation in meters~%~%yolov8_msgs/KeyPoint3D[] data~%~%# frame reference~%string frame_id~%================================================================================~%MSG: yolov8_msgs/KeyPoint3D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 3D point in meters~%geometry_msgs/Point point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyPoint3DArray)))
  "Returns full string definition for message of type 'KeyPoint3DArray"
  (cl:format cl:nil "# represents all the keypoints for human pose estimation in meters~%~%yolov8_msgs/KeyPoint3D[] data~%~%# frame reference~%string frame_id~%================================================================================~%MSG: yolov8_msgs/KeyPoint3D~%# one keypoint for human pose estimation~%~%# id of the keypoint~%int32 id~%~%# 3D point in meters~%geometry_msgs/Point point~%~%# conf of the keypoint~%float64 score~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyPoint3DArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyPoint3DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyPoint3DArray
    (cl:cons ':data (data msg))
    (cl:cons ':frame_id (frame_id msg))
))
