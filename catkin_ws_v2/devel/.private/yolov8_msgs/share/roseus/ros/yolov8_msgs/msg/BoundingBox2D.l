;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::BoundingBox2D)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'BoundingBox2D (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::BOUNDINGBOX2D")
  (make-package "YOLOV8_MSGS::BOUNDINGBOX2D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox2D.msg.html


(defclass yolov8_msgs::BoundingBox2D
  :super ros::object
  :slots (_center _size _id ))

(defmethod yolov8_msgs::BoundingBox2D
  (:init
   (&key
    ((:center __center) (instance yolov8_msgs::Pose2D :init))
    ((:size __size) (instance yolov8_msgs::Vector2 :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _size __size)
   (setq _id (round __id))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; yolov8_msgs/Pose2D _center
    (send _center :serialization-length)
    ;; yolov8_msgs/Vector2 _size
    (send _size :serialization-length)
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yolov8_msgs/Pose2D _center
       (send _center :serialize s)
     ;; yolov8_msgs/Vector2 _size
       (send _size :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yolov8_msgs/Pose2D _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; yolov8_msgs/Vector2 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yolov8_msgs::BoundingBox2D :md5sum-) "7a678d71f8998ae4690f9ad4663f405f")
(setf (get yolov8_msgs::BoundingBox2D :datatype-) "yolov8_msgs/BoundingBox2D")
(setf (get yolov8_msgs::BoundingBox2D :definition-)
      "# 2D position and orientation of the bounding box center
yolov8_msgs/Pose2D center

# total size of the bounding box, in pixels, surrounding the object's center
yolov8_msgs/Vector2 size

# id of the keypoint
int32 id

================================================================================
MSG: yolov8_msgs/Pose2D
# 2D position in pixel coordinates

yolov8_msgs/Point2D position
float64 theta
================================================================================
MSG: yolov8_msgs/Point2D
# 2D point in pixel coordinates

float64 x
float64 y
================================================================================
MSG: yolov8_msgs/Vector2
# 2D size in pixel

float64 x
float64 y
")



(provide :yolov8_msgs/BoundingBox2D "7a678d71f8998ae4690f9ad4663f405f")


