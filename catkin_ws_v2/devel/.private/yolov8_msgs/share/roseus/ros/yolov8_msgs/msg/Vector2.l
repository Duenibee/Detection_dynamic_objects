;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::Vector2)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'Vector2 (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::VECTOR2")
  (make-package "YOLOV8_MSGS::VECTOR2"))

(in-package "ROS")
;;//! \htmlinclude Vector2.msg.html


(defclass yolov8_msgs::Vector2
  :super ros::object
  :slots (_x _y ))

(defmethod yolov8_msgs::Vector2
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yolov8_msgs::Vector2 :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get yolov8_msgs::Vector2 :datatype-) "yolov8_msgs/Vector2")
(setf (get yolov8_msgs::Vector2 :definition-)
      "# 2D size in pixel

float64 x
float64 y
")



(provide :yolov8_msgs/Vector2 "209f516d3eb691f0663e25cb750d67c1")


