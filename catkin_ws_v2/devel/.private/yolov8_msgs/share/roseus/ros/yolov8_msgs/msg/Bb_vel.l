;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::Bb_vel)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'Bb_vel (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::BB_VEL")
  (make-package "YOLOV8_MSGS::BB_VEL"))

(in-package "ROS")
;;//! \htmlinclude Bb_vel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass yolov8_msgs::Bb_vel
  :super ros::object
  :slots (_header _id _vel ))

(defmethod yolov8_msgs::Bb_vel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0.0)
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (float __id))
   (setq _vel (float __vel))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _id
    8
    ;; float64 _vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _id
       (sys::poke _id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _id
     (setq _id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yolov8_msgs::Bb_vel :md5sum-) "d36faa96a33eaf5bde4b09cd5ead446f")
(setf (get yolov8_msgs::Bb_vel :datatype-) "yolov8_msgs/Bb_vel")
(setf (get yolov8_msgs::Bb_vel :definition-)
      "# vel
std_msgs/Header header
float64 id
float64 vel
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :yolov8_msgs/Bb_vel "d36faa96a33eaf5bde4b09cd5ead446f")


