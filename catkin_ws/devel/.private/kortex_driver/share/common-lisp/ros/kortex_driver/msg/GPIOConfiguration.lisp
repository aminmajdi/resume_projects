; Auto-generated. Do not edit!


(cl:in-package kortex_driver-msg)


;//! \htmlinclude GPIOConfiguration.msg.html

(cl:defclass <GPIOConfiguration> (roslisp-msg-protocol:ros-message)
  ((identifier
    :reader identifier
    :initarg :identifier
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (pull
    :reader pull
    :initarg :pull
    :type cl:integer
    :initform 0)
   (default_value
    :reader default_value
    :initarg :default_value
    :type cl:integer
    :initform 0))
)

(cl:defclass GPIOConfiguration (<GPIOConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPIOConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPIOConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-msg:<GPIOConfiguration> is deprecated: use kortex_driver-msg:GPIOConfiguration instead.")))

(cl:ensure-generic-function 'identifier-val :lambda-list '(m))
(cl:defmethod identifier-val ((m <GPIOConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:identifier-val is deprecated.  Use kortex_driver-msg:identifier instead.")
  (identifier m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GPIOConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:mode-val is deprecated.  Use kortex_driver-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'pull-val :lambda-list '(m))
(cl:defmethod pull-val ((m <GPIOConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:pull-val is deprecated.  Use kortex_driver-msg:pull instead.")
  (pull m))

(cl:ensure-generic-function 'default_value-val :lambda-list '(m))
(cl:defmethod default_value-val ((m <GPIOConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:default_value-val is deprecated.  Use kortex_driver-msg:default_value instead.")
  (default_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPIOConfiguration>) ostream)
  "Serializes a message object of type '<GPIOConfiguration>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'identifier)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'identifier)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'identifier)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'identifier)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pull)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pull)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pull)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pull)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'default_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'default_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'default_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'default_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPIOConfiguration>) istream)
  "Deserializes a message object of type '<GPIOConfiguration>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'identifier)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'identifier)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'identifier)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'identifier)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pull)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pull)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pull)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pull)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'default_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'default_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'default_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'default_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPIOConfiguration>)))
  "Returns string type for a message object of type '<GPIOConfiguration>"
  "kortex_driver/GPIOConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPIOConfiguration)))
  "Returns string type for a message object of type 'GPIOConfiguration"
  "kortex_driver/GPIOConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPIOConfiguration>)))
  "Returns md5sum for a message object of type '<GPIOConfiguration>"
  "beac18d5b1b9bb04dc5a1a2c0d366dac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPIOConfiguration)))
  "Returns md5sum for a message object of type 'GPIOConfiguration"
  "beac18d5b1b9bb04dc5a1a2c0d366dac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPIOConfiguration>)))
  "Returns full string definition for message of type '<GPIOConfiguration>"
  (cl:format cl:nil "~%uint32 identifier~%uint32 mode~%uint32 pull~%uint32 default_value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPIOConfiguration)))
  "Returns full string definition for message of type 'GPIOConfiguration"
  (cl:format cl:nil "~%uint32 identifier~%uint32 mode~%uint32 pull~%uint32 default_value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPIOConfiguration>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPIOConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'GPIOConfiguration
    (cl:cons ':identifier (identifier msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':pull (pull msg))
    (cl:cons ':default_value (default_value msg))
))
