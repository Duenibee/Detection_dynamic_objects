;; Auto-generated. Do not edit!


(when (boundp 'map_manager::CheckCollision)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'CheckCollision (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::CHECKCOLLISION")
  (make-package "MAP_MANAGER::CHECKCOLLISION"))
(unless (find-package "MAP_MANAGER::CHECKCOLLISIONREQUEST")
  (make-package "MAP_MANAGER::CHECKCOLLISIONREQUEST"))
(unless (find-package "MAP_MANAGER::CHECKCOLLISIONRESPONSE")
  (make-package "MAP_MANAGER::CHECKCOLLISIONRESPONSE"))

(in-package "ROS")





(defclass map_manager::CheckCollisionRequest
  :super ros::object
  :slots (_x _y _z _xsize _ysize _zsize _update_map _ignore_unknown ))

(defmethod map_manager::CheckCollisionRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:xsize __xsize) 0.0)
    ((:ysize __ysize) 0.0)
    ((:zsize __zsize) 0.0)
    ((:update_map __update_map) nil)
    ((:ignore_unknown __ignore_unknown) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _xsize (float __xsize))
   (setq _ysize (float __ysize))
   (setq _zsize (float __zsize))
   (setq _update_map __update_map)
   (setq _ignore_unknown __ignore_unknown)
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
  (:xsize
   (&optional __xsize)
   (if __xsize (setq _xsize __xsize)) _xsize)
  (:ysize
   (&optional __ysize)
   (if __ysize (setq _ysize __ysize)) _ysize)
  (:zsize
   (&optional __zsize)
   (if __zsize (setq _zsize __zsize)) _zsize)
  (:update_map
   (&optional (__update_map :null))
   (if (not (eq __update_map :null)) (setq _update_map __update_map)) _update_map)
  (:ignore_unknown
   (&optional (__ignore_unknown :null))
   (if (not (eq __ignore_unknown :null)) (setq _ignore_unknown __ignore_unknown)) _ignore_unknown)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _xsize
    8
    ;; float64 _ysize
    8
    ;; float64 _zsize
    8
    ;; bool _update_map
    1
    ;; bool _ignore_unknown
    1
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
     ;; float64 _xsize
       (sys::poke _xsize (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ysize
       (sys::poke _ysize (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zsize
       (sys::poke _zsize (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _update_map
       (if _update_map (write-byte -1 s) (write-byte 0 s))
     ;; bool _ignore_unknown
       (if _ignore_unknown (write-byte -1 s) (write-byte 0 s))
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
   ;; float64 _xsize
     (setq _xsize (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ysize
     (setq _ysize (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zsize
     (setq _zsize (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _update_map
     (setq _update_map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ignore_unknown
     (setq _ignore_unknown (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass map_manager::CheckCollisionResponse
  :super ros::object
  :slots (_has_collision ))

(defmethod map_manager::CheckCollisionResponse
  (:init
   (&key
    ((:has_collision __has_collision) nil)
    )
   (send-super :init)
   (setq _has_collision __has_collision)
   self)
  (:has_collision
   (&optional (__has_collision :null))
   (if (not (eq __has_collision :null)) (setq _has_collision __has_collision)) _has_collision)
  (:serialization-length
   ()
   (+
    ;; bool _has_collision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _has_collision
       (if _has_collision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _has_collision
     (setq _has_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass map_manager::CheckCollision
  :super ros::object
  :slots ())

(setf (get map_manager::CheckCollision :md5sum-) "175e32ae1f050a1a9b19e0c69bf5eab8")
(setf (get map_manager::CheckCollision :datatype-) "map_manager/CheckCollision")
(setf (get map_manager::CheckCollision :request) map_manager::CheckCollisionRequest)
(setf (get map_manager::CheckCollision :response) map_manager::CheckCollisionResponse)

(defmethod map_manager::CheckCollisionRequest
  (:response () (instance map_manager::CheckCollisionResponse :init)))

(setf (get map_manager::CheckCollisionRequest :md5sum-) "175e32ae1f050a1a9b19e0c69bf5eab8")
(setf (get map_manager::CheckCollisionRequest :datatype-) "map_manager/CheckCollisionRequest")
(setf (get map_manager::CheckCollisionRequest :definition-)
      "float64 x
float64 y
float64 z
float64 xsize
float64 ysize
float64 zsize
bool update_map
bool ignore_unknown
---
bool has_collision
")

(setf (get map_manager::CheckCollisionResponse :md5sum-) "175e32ae1f050a1a9b19e0c69bf5eab8")
(setf (get map_manager::CheckCollisionResponse :datatype-) "map_manager/CheckCollisionResponse")
(setf (get map_manager::CheckCollisionResponse :definition-)
      "float64 x
float64 y
float64 z
float64 xsize
float64 ysize
float64 zsize
bool update_map
bool ignore_unknown
---
bool has_collision
")



(provide :map_manager/CheckCollision "175e32ae1f050a1a9b19e0c69bf5eab8")


