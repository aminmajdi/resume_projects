; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-msg)


;//! \htmlinclude PoseVelocityWithFingerVelocity.msg.html

(cl:defclass <PoseVelocityWithFingerVelocity> (roslisp-msg-protocol:ros-message)
  ((twist_linear_x
    :reader twist_linear_x
    :initarg :twist_linear_x
    :type cl:float
    :initform 0.0)
   (twist_linear_y
    :reader twist_linear_y
    :initarg :twist_linear_y
    :type cl:float
    :initform 0.0)
   (twist_linear_z
    :reader twist_linear_z
    :initarg :twist_linear_z
    :type cl:float
    :initform 0.0)
   (twist_angular_x
    :reader twist_angular_x
    :initarg :twist_angular_x
    :type cl:float
    :initform 0.0)
   (twist_angular_y
    :reader twist_angular_y
    :initarg :twist_angular_y
    :type cl:float
    :initform 0.0)
   (twist_angular_z
    :reader twist_angular_z
    :initarg :twist_angular_z
    :type cl:float
    :initform 0.0)
   (finger1
    :reader finger1
    :initarg :finger1
    :type cl:float
    :initform 0.0)
   (finger2
    :reader finger2
    :initarg :finger2
    :type cl:float
    :initform 0.0)
   (finger3
    :reader finger3
    :initarg :finger3
    :type cl:float
    :initform 0.0))
)

(cl:defclass PoseVelocityWithFingerVelocity (<PoseVelocityWithFingerVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseVelocityWithFingerVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseVelocityWithFingerVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-msg:<PoseVelocityWithFingerVelocity> is deprecated: use kinova_msgs-msg:PoseVelocityWithFingerVelocity instead.")))

(cl:ensure-generic-function 'twist_linear_x-val :lambda-list '(m))
(cl:defmethod twist_linear_x-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:twist_linear_x-val is deprecated.  Use kinova_msgs-msg:twist_linear_x instead.")
  (twist_linear_x m))

(cl:ensure-generic-function 'twist_linear_y-val :lambda-list '(m))
(cl:defmethod twist_linear_y-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:twist_linear_y-val is deprecated.  Use kinova_msgs-msg:twist_linear_y instead.")
  (twist_linear_y m))

(cl:ensure-generic-function 'twist_linear_z-val :lambda-list '(m))
(cl:defmethod twist_linear_z-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:twist_linear_z-val is deprecated.  Use kinova_msgs-msg:twist_linear_z instead.")
  (twist_linear_z m))

(cl:ensure-generic-function 'twist_angular_x-val :lambda-list '(m))
(cl:defmethod twist_angular_x-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:twist_angular_x-val is deprecated.  Use kinova_msgs-msg:twist_angular_x instead.")
  (twist_angular_x m))

(cl:ensure-generic-function 'twist_angular_y-val :lambda-list '(m))
(cl:defmethod twist_angular_y-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:twist_angular_y-val is deprecated.  Use kinova_msgs-msg:twist_angular_y instead.")
  (twist_angular_y m))

(cl:ensure-generic-function 'twist_angular_z-val :lambda-list '(m))
(cl:defmethod twist_angular_z-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:twist_angular_z-val is deprecated.  Use kinova_msgs-msg:twist_angular_z instead.")
  (twist_angular_z m))

(cl:ensure-generic-function 'finger1-val :lambda-list '(m))
(cl:defmethod finger1-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:finger1-val is deprecated.  Use kinova_msgs-msg:finger1 instead.")
  (finger1 m))

(cl:ensure-generic-function 'finger2-val :lambda-list '(m))
(cl:defmethod finger2-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:finger2-val is deprecated.  Use kinova_msgs-msg:finger2 instead.")
  (finger2 m))

(cl:ensure-generic-function 'finger3-val :lambda-list '(m))
(cl:defmethod finger3-val ((m <PoseVelocityWithFingerVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:finger3-val is deprecated.  Use kinova_msgs-msg:finger3 instead.")
  (finger3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseVelocityWithFingerVelocity>) ostream)
  "Serializes a message object of type '<PoseVelocityWithFingerVelocity>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'twist_linear_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'twist_linear_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'twist_linear_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'twist_angular_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'twist_angular_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'twist_angular_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finger1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finger2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finger3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseVelocityWithFingerVelocity>) istream)
  "Deserializes a message object of type '<PoseVelocityWithFingerVelocity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'twist_linear_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'twist_linear_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'twist_linear_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'twist_angular_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'twist_angular_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'twist_angular_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finger1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finger2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finger3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseVelocityWithFingerVelocity>)))
  "Returns string type for a message object of type '<PoseVelocityWithFingerVelocity>"
  "kinova_msgs/PoseVelocityWithFingerVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseVelocityWithFingerVelocity)))
  "Returns string type for a message object of type 'PoseVelocityWithFingerVelocity"
  "kinova_msgs/PoseVelocityWithFingerVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseVelocityWithFingerVelocity>)))
  "Returns md5sum for a message object of type '<PoseVelocityWithFingerVelocity>"
  "d8789bad3911d8a482fde371a6b8abac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseVelocityWithFingerVelocity)))
  "Returns md5sum for a message object of type 'PoseVelocityWithFingerVelocity"
  "d8789bad3911d8a482fde371a6b8abac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseVelocityWithFingerVelocity>)))
  "Returns full string definition for message of type '<PoseVelocityWithFingerVelocity>"
  (cl:format cl:nil "float32 twist_linear_x~%float32 twist_linear_y~%float32 twist_linear_z~%float32 twist_angular_x~%float32 twist_angular_y~%float32 twist_angular_z~%float32 finger1~%float32 finger2~%float32 finger3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseVelocityWithFingerVelocity)))
  "Returns full string definition for message of type 'PoseVelocityWithFingerVelocity"
  (cl:format cl:nil "float32 twist_linear_x~%float32 twist_linear_y~%float32 twist_linear_z~%float32 twist_angular_x~%float32 twist_angular_y~%float32 twist_angular_z~%float32 finger1~%float32 finger2~%float32 finger3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseVelocityWithFingerVelocity>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseVelocityWithFingerVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseVelocityWithFingerVelocity
    (cl:cons ':twist_linear_x (twist_linear_x msg))
    (cl:cons ':twist_linear_y (twist_linear_y msg))
    (cl:cons ':twist_linear_z (twist_linear_z msg))
    (cl:cons ':twist_angular_x (twist_angular_x msg))
    (cl:cons ':twist_angular_y (twist_angular_y msg))
    (cl:cons ':twist_angular_z (twist_angular_z msg))
    (cl:cons ':finger1 (finger1 msg))
    (cl:cons ':finger2 (finger2 msg))
    (cl:cons ':finger3 (finger3 msg))
))
