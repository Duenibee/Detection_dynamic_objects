;; Auto-generated. Do not edit!


(when (boundp 'yolov8_msgs::Mask)
  (if (not (find-package "YOLOV8_MSGS"))
    (make-package "YOLOV8_MSGS"))
  (shadow 'Mask (find-package "YOLOV8_MSGS")))
(unless (find-package "YOLOV8_MSGS::MASK")
  (make-package "YOLOV8_MSGS::MASK"))

(in-package "ROS")
;;//! \htmlinclude Mask.msg.html


(defclass yolov8_msgs::Mask
  :super ros::object
  :slots (_height _width _data ))

(defmethod yolov8_msgs::Mask
  (:init
   (&key
    ((:height __height) 0)
    ((:width __width) 0)
    ((:data __data) ())
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _data __data)
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
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
    ;; int32 _height
    4
    ;; int32 _width
    4
    ;; yolov8_msgs/Point2D[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _height
       (write-long _height s)
     ;; int32 _width
       (write-long _width s)
     ;; yolov8_msgs/Point2D[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; yolov8_msgs/Point2D[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance yolov8_msgs::Point2D :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yolov8_msgs::Mask :md5sum-) "c0265cc03cecfba2043d52503f335bb0")
(setf (get yolov8_msgs::Mask :datatype-) "yolov8_msgs/Mask")
(setf (get yolov8_msgs::Mask :definition-)
      "# segmentation mask for one instance

# size of the original image
int32 height
int32 width

# mask data represeted by the points of the border of the mask
yolov8_msgs/Point2D[] data


================================================================================
MSG: yolov8_msgs/Point2D
# 2D point in pixel coordinates

float64 x
float64 y
")



(provide :yolov8_msgs/Mask "c0265cc03cecfba2043d52503f335bb0")


