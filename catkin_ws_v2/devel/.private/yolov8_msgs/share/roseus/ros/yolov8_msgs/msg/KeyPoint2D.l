;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::KeyPoint2D)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'KeyPoint2D (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::KEYPOINT2D")
  (make-package "YOLOV8_MSGS::KEYPOINT2D"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint2D.msg.html


(defclass yolov8_msgs::KeyPoint2D
  :super ros::object
  :slots (_id _point _score ))

(defmethod yolov8_msgs::KeyPoint2D
  (:init
   (&key
    ((:id __id) 0)
    ((:point __point) (instance yolov8_msgs::Point2D :init))
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
    ;; yolov8_msgs/Point2D _point
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
     ;; yolov8_msgs/Point2D _point
       (send _point :serialize s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; yolov8_msgs/Point2D _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yolov8_msgs::KeyPoint2D :md5sum-) "88de9a841f74ce6110d631408b064ab7")
(setf (get yolov8_msgs::KeyPoint2D :datatype-) "yolov8_msgs/KeyPoint2D")
(setf (get yolov8_msgs::KeyPoint2D :definition-)
      "# one keypoint for human pose estimation

# id of the keypoint
int32 id

# 2D point in pixels
yolov8_msgs/Point2D point

# conf of the keypoint
float64 score
================================================================================
MSG: yolov8_msgs/Point2D
# 2D point in pixel coordinates

float64 x
float64 y
")



(provide :yolov8_msgs/KeyPoint2D "88de9a841f74ce6110d631408b064ab7")


