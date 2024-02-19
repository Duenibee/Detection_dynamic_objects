;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::BoundingBox3D)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'BoundingBox3D (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::BOUNDINGBOX3D")
  (make-package "YOLOV8_MSGS::BOUNDINGBOX3D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass yolov8_msgs::BoundingBox3D
  :super ros::object
  :slots (_center _size _frame_id _id ))

(defmethod yolov8_msgs::BoundingBox3D
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Pose :init))
    ((:size __size) (instance geometry_msgs::Vector3 :init))
    ((:frame_id __frame_id) "")
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _size __size)
   (setq _frame_id (string __frame_id))
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
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _center
    (send _center :serialization-length)
    ;; geometry_msgs/Vector3 _size
    (send _size :serialization-length)
    ;; string _frame_id
    4 (length _frame_id)
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _center
       (send _center :serialize s)
     ;; geometry_msgs/Vector3 _size
       (send _size :serialize s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Vector3 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yolov8_msgs::BoundingBox3D :md5sum-) "d8c2308213968a5c730da9ad2a547294")
(setf (get yolov8_msgs::BoundingBox3D :datatype-) "yolov8_msgs/BoundingBox3D")
(setf (get yolov8_msgs::BoundingBox3D :definition-)
      "# 3D position and orientation of the bounding box center
geometry_msgs/Pose center

# total size of the bounding box, in meters, surrounding the object's center
geometry_msgs/Vector3 size

# frame reference
string frame_id

# id of the keypoint
int32 id
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :yolov8_msgs/BoundingBox3D "d8c2308213968a5c730da9ad2a547294")


