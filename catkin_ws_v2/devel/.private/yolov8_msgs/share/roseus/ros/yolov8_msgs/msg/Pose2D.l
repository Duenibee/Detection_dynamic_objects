;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::Pose2D)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'Pose2D (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::POSE2D")
  (make-package "YOLOV8_MSGS::POSE2D"))

(in-package "ROS")
;;//! \htmlinclude Pose2D.msg.html


(defclass yolov8_msgs::Pose2D
  :super ros::object
  :slots (_position _theta ))

(defmethod yolov8_msgs::Pose2D
  (:init
   (&key
    ((:position __position) (instance yolov8_msgs::Point2D :init))
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _theta (float __theta))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; yolov8_msgs/Point2D _position
    (send _position :serialization-length)
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yolov8_msgs/Point2D _position
       (send _position :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yolov8_msgs/Point2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yolov8_msgs::Pose2D :md5sum-) "d8af0ef1db02b310d0bd6166725bf7b4")
(setf (get yolov8_msgs::Pose2D :datatype-) "yolov8_msgs/Pose2D")
(setf (get yolov8_msgs::Pose2D :definition-)
      "# 2D position in pixel coordinates

yolov8_msgs/Point2D position
float64 theta
================================================================================
MSG: yolov8_msgs/Point2D
# 2D point in pixel coordinates

float64 x
float64 y
")



(provide :yolov8_msgs/Pose2D "d8af0ef1db02b310d0bd6166725bf7b4")


