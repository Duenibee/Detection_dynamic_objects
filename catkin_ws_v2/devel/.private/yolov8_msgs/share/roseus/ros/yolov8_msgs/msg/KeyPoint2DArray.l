;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::KeyPoint2DArray)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'KeyPoint2DArray (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::KEYPOINT2DARRAY")
  (make-package "YOLOV8_MSGS::KEYPOINT2DARRAY"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint2DArray.msg.html


(defclass yolov8_msgs::KeyPoint2DArray
  :super ros::object
  :slots (_data ))

(defmethod yolov8_msgs::KeyPoint2DArray
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; yolov8_msgs/KeyPoint2D[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yolov8_msgs/KeyPoint2D[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yolov8_msgs/KeyPoint2D[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance yolov8_msgs::KeyPoint2D :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yolov8_msgs::KeyPoint2DArray :md5sum-) "c319c71fb3a0d705740c7312436635df")
(setf (get yolov8_msgs::KeyPoint2DArray :datatype-) "yolov8_msgs/KeyPoint2DArray")
(setf (get yolov8_msgs::KeyPoint2DArray :definition-)
      "# represents all the keypoints for human pose estimation

yolov8_msgs/KeyPoint2D[] data
================================================================================
MSG: yolov8_msgs/KeyPoint2D
# one keypoint for human pose estimation

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



(provide :yolov8_msgs/KeyPoint2DArray "c319c71fb3a0d705740c7312436635df")


