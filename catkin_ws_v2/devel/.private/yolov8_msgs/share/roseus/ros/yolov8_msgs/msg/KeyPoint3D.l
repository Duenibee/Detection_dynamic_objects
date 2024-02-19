;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::KeyPoint3D)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'KeyPoint3D (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::KEYPOINT3D")
  (make-package "YOLOV8_MSGS::KEYPOINT3D"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass yolov8_msgs::KeyPoint3D
  :super ros::object
  :slots (_id _point _score ))

(defmethod yolov8_msgs::KeyPoint3D
  (:init
   (&key
    ((:id __id) 0)
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _point __point)
   (setq _score (float __score))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yolov8_msgs::KeyPoint3D :md5sum-) "41e09e06b21b15ee731700b10966b3dc")
(setf (get yolov8_msgs::KeyPoint3D :datatype-) "yolov8_msgs/KeyPoint3D")
(setf (get yolov8_msgs::KeyPoint3D :definition-)
      "# one keypoint for human pose estimation

# id of the keypoint
int32 id

# 3D point in meters
geometry_msgs/Point point

# conf of the keypoint
float64 score
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :yolov8_msgs/KeyPoint3D "41e09e06b21b15ee731700b10966b3dc")


