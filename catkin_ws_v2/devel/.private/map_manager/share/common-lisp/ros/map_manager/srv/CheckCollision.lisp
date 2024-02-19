; Auto-generated. Do not edit!


(cl:in-package map_manager-srv)


;//! \htmlinclude CheckCollision-request.msg.html

(cl:defclass <CheckCollision-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (xsize
    :reader xsize
    :initarg :xsize
    :type cl:float
    :initform 0.0)
   (ysize
    :reader ysize
    :initarg :ysize
    :type cl:float
    :initform 0.0)
   (zsize
    :reader zsize
    :initarg :zsize
    :type cl:float
    :initform 0.0)
   (update_map
    :reader update_map
    :initarg :update_map
    :type cl:boolean
    :initform cl:nil)
   (ignore_unknown
    :reader ignore_unknown
    :initarg :ignore_unknown
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckCollision-request (<CheckCollision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<CheckCollision-request> is deprecated: use map_manager-srv:CheckCollision-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:x-val is deprecated.  Use map_manager-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:y-val is deprecated.  Use map_manager-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:z-val is deprecated.  Use map_manager-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'xsize-val :lambda-list '(m))
(cl:defmethod xsize-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:xsize-val is deprecated.  Use map_manager-srv:xsize instead.")
  (xsize m))

(cl:ensure-generic-function 'ysize-val :lambda-list '(m))
(cl:defmethod ysize-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:ysize-val is deprecated.  Use map_manager-srv:ysize instead.")
  (ysize m))

(cl:ensure-generic-function 'zsize-val :lambda-list '(m))
(cl:defmethod zsize-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:zsize-val is deprecated.  Use map_manager-srv:zsize instead.")
  (zsize m))

(cl:ensure-generic-function 'update_map-val :lambda-list '(m))
(cl:defmethod update_map-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:update_map-val is deprecated.  Use map_manager-srv:update_map instead.")
  (update_map m))

(cl:ensure-generic-function 'ignore_unknown-val :lambda-list '(m))
(cl:defmethod ignore_unknown-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:ignore_unknown-val is deprecated.  Use map_manager-srv:ignore_unknown instead.")
  (ignore_unknown m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-request>) ostream)
  "Serializes a message object of type '<CheckCollision-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xsize))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ysize))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zsize))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'update_map) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ignore_unknown) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-request>) istream)
  "Deserializes a message object of type '<CheckCollision-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xsize) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ysize) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zsize) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'update_map) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ignore_unknown) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-request>)))
  "Returns string type for a service object of type '<CheckCollision-request>"
  "map_manager/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-request)))
  "Returns string type for a service object of type 'CheckCollision-request"
  "map_manager/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-request>)))
  "Returns md5sum for a message object of type '<CheckCollision-request>"
  "175e32ae1f050a1a9b19e0c69bf5eab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-request)))
  "Returns md5sum for a message object of type 'CheckCollision-request"
  "175e32ae1f050a1a9b19e0c69bf5eab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-request>)))
  "Returns full string definition for message of type '<CheckCollision-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 xsize~%float64 ysize~%float64 zsize~%bool update_map~%bool ignore_unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-request)))
  "Returns full string definition for message of type 'CheckCollision-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 xsize~%float64 ysize~%float64 zsize~%bool update_map~%bool ignore_unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':xsize (xsize msg))
    (cl:cons ':ysize (ysize msg))
    (cl:cons ':zsize (zsize msg))
    (cl:cons ':update_map (update_map msg))
    (cl:cons ':ignore_unknown (ignore_unknown msg))
))
;//! \htmlinclude CheckCollision-response.msg.html

(cl:defclass <CheckCollision-response> (roslisp-msg-protocol:ros-message)
  ((has_collision
    :reader has_collision
    :initarg :has_collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckCollision-response (<CheckCollision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<CheckCollision-response> is deprecated: use map_manager-srv:CheckCollision-response instead.")))

(cl:ensure-generic-function 'has_collision-val :lambda-list '(m))
(cl:defmethod has_collision-val ((m <CheckCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:has_collision-val is deprecated.  Use map_manager-srv:has_collision instead.")
  (has_collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-response>) ostream)
  "Serializes a message object of type '<CheckCollision-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-response>) istream)
  "Deserializes a message object of type '<CheckCollision-response>"
    (cl:setf (cl:slot-value msg 'has_collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-response>)))
  "Returns string type for a service object of type '<CheckCollision-response>"
  "map_manager/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-response)))
  "Returns string type for a service object of type 'CheckCollision-response"
  "map_manager/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-response>)))
  "Returns md5sum for a message object of type '<CheckCollision-response>"
  "175e32ae1f050a1a9b19e0c69bf5eab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-response)))
  "Returns md5sum for a message object of type 'CheckCollision-response"
  "175e32ae1f050a1a9b19e0c69bf5eab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-response>)))
  "Returns full string definition for message of type '<CheckCollision-response>"
  (cl:format cl:nil "bool has_collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-response)))
  "Returns full string definition for message of type 'CheckCollision-response"
  (cl:format cl:nil "bool has_collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-response
    (cl:cons ':has_collision (has_collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision)))
  "Returns string type for a service object of type '<CheckCollision>"
  "map_manager/CheckCollision")