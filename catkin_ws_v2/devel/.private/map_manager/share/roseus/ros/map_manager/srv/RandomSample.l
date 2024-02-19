;; Auto-generated. Do not edit!


(when (boundp 'map_manager::RandomSample)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'RandomSample (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::RANDOMSAMPLE")
  (make-package "MAP_MANAGER::RANDOMSAMPLE"))
(unless (find-package "MAP_MANAGER::RANDOMSAMPLEREQUEST")
  (make-package "MAP_MANAGER::RANDOMSAMPLEREQUEST"))
(unless (find-package "MAP_MANAGER::RANDOMSAMPLERESPONSE")
  (make-package "MAP_MANAGER::RANDOMSAMPLERESPONSE"))

(in-package "ROS")





(defclass map_manager::RandomSampleRequest
  :super ros::object
  :slots (_xsize _ysize _zsize _ignore_unknown ))

(defmethod map_manager::RandomSampleRequest
  (:init
   (&key
    ((:xsize __xsize) 0.0)
    ((:ysize __ysize) 0.0)
    ((:zsize __zsize) 0.0)
    ((:ignore_unknown __ignore_unknown) nil)
    )
   (send-super :init)
   (setq _xsize (float __xsize))
   (setq _ysize (float __ysize))
   (setq _zsize (float __zsize))
   (setq _ignore_unknown __ignore_unknown)
   self)
  (:xsize
   (&optional __xsize)
   (if __xsize (setq _xsize __xsize)) _xsize)
  (:ysize
   (&optional __ysize)
   (if __ysize (setq _ysize __ysize)) _ysize)
  (:zsize
   (&optional __zsize)
   (if __zsize (setq _zsize __zsize)) _zsize)
  (:ignore_unknown
   (&optional (__ignore_unknown :null))
   (if (not (eq __ignore_unknown :null)) (setq _ignore_unknown __ignore_unknown)) _ignore_unknown)
  (:serialization-length
   ()
   (+
    ;; float64 _xsize
    8
    ;; float64 _ysize
    8
    ;; float64 _zsize
    8
    ;; bool _ignore_unknown
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _xsize
       (sys::poke _xsize (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ysize
       (sys::poke _ysize (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zsize
       (sys::poke _zsize (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _ignore_unknown
       (if _ignore_unknown (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _xsize
     (setq _xsize (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ysize
     (setq _ysize (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zsize
     (setq _zsize (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _ignore_unknown
     (setq _ignore_unknown (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass map_manager::RandomSampleResponse
  :super ros::object
  :slots (_x _y _z _yaw ))

(defmethod map_manager::RandomSampleResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _yaw
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
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass map_manager::RandomSample
  :super ros::object
  :slots ())

(setf (get map_manager::RandomSample :md5sum-) "498b6ea7d13c53a4744bbed23ba7fed1")
(setf (get map_manager::RandomSample :datatype-) "map_manager/RandomSample")
(setf (get map_manager::RandomSample :request) map_manager::RandomSampleRequest)
(setf (get map_manager::RandomSample :response) map_manager::RandomSampleResponse)

(defmethod map_manager::RandomSampleRequest
  (:response () (instance map_manager::RandomSampleResponse :init)))

(setf (get map_manager::RandomSampleRequest :md5sum-) "498b6ea7d13c53a4744bbed23ba7fed1")
(setf (get map_manager::RandomSampleRequest :datatype-) "map_manager/RandomSampleRequest")
(setf (get map_manager::RandomSampleRequest :definition-)
      "float64 xsize
float64 ysize
float64 zsize
bool ignore_unknown
---
float64 x
float64 y
float64 z
float64 yaw
")

(setf (get map_manager::RandomSampleResponse :md5sum-) "498b6ea7d13c53a4744bbed23ba7fed1")
(setf (get map_manager::RandomSampleResponse :datatype-) "map_manager/RandomSampleResponse")
(setf (get map_manager::RandomSampleResponse :definition-)
      "float64 xsize
float64 ysize
float64 zsize
bool ignore_unknown
---
float64 x
float64 y
float64 z
float64 yaw
")



(provide :map_manager/RandomSample "498b6ea7d13c53a4744bbed23ba7fed1")


