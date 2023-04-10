; Auto-generated. Do not edit!


(cl:in-package kortex_driver-msg)


;//! \htmlinclude ActuatorFeedback.msg.html

(cl:defclass <ActuatorFeedback> (roslisp-msg-protocol:ros-message)
  ((command_id
    :reader command_id
    :initarg :command_id
    :type cl:integer
    :initform 0)
   (status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0)
   (jitter_comm
    :reader jitter_comm
    :initarg :jitter_comm
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (torque
    :reader torque
    :initarg :torque
    :type cl:float
    :initform 0.0)
   (current_motor
    :reader current_motor
    :initarg :current_motor
    :type cl:float
    :initform 0.0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (temperature_motor
    :reader temperature_motor
    :initarg :temperature_motor
    :type cl:float
    :initform 0.0)
   (temperature_core
    :reader temperature_core
    :initarg :temperature_core
    :type cl:float
    :initform 0.0)
   (fault_bank_a
    :reader fault_bank_a
    :initarg :fault_bank_a
    :type cl:integer
    :initform 0)
   (fault_bank_b
    :reader fault_bank_b
    :initarg :fault_bank_b
    :type cl:integer
    :initform 0)
   (warning_bank_a
    :reader warning_bank_a
    :initarg :warning_bank_a
    :type cl:integer
    :initform 0)
   (warning_bank_b
    :reader warning_bank_b
    :initarg :warning_bank_b
    :type cl:integer
    :initform 0))
)

(cl:defclass ActuatorFeedback (<ActuatorFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-msg:<ActuatorFeedback> is deprecated: use kortex_driver-msg:ActuatorFeedback instead.")))

(cl:ensure-generic-function 'command_id-val :lambda-list '(m))
(cl:defmethod command_id-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:command_id-val is deprecated.  Use kortex_driver-msg:command_id instead.")
  (command_id m))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:status_flags-val is deprecated.  Use kortex_driver-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 'jitter_comm-val :lambda-list '(m))
(cl:defmethod jitter_comm-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:jitter_comm-val is deprecated.  Use kortex_driver-msg:jitter_comm instead.")
  (jitter_comm m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:position-val is deprecated.  Use kortex_driver-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:velocity-val is deprecated.  Use kortex_driver-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:torque-val is deprecated.  Use kortex_driver-msg:torque instead.")
  (torque m))

(cl:ensure-generic-function 'current_motor-val :lambda-list '(m))
(cl:defmethod current_motor-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:current_motor-val is deprecated.  Use kortex_driver-msg:current_motor instead.")
  (current_motor m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:voltage-val is deprecated.  Use kortex_driver-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'temperature_motor-val :lambda-list '(m))
(cl:defmethod temperature_motor-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:temperature_motor-val is deprecated.  Use kortex_driver-msg:temperature_motor instead.")
  (temperature_motor m))

(cl:ensure-generic-function 'temperature_core-val :lambda-list '(m))
(cl:defmethod temperature_core-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:temperature_core-val is deprecated.  Use kortex_driver-msg:temperature_core instead.")
  (temperature_core m))

(cl:ensure-generic-function 'fault_bank_a-val :lambda-list '(m))
(cl:defmethod fault_bank_a-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:fault_bank_a-val is deprecated.  Use kortex_driver-msg:fault_bank_a instead.")
  (fault_bank_a m))

(cl:ensure-generic-function 'fault_bank_b-val :lambda-list '(m))
(cl:defmethod fault_bank_b-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:fault_bank_b-val is deprecated.  Use kortex_driver-msg:fault_bank_b instead.")
  (fault_bank_b m))

(cl:ensure-generic-function 'warning_bank_a-val :lambda-list '(m))
(cl:defmethod warning_bank_a-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:warning_bank_a-val is deprecated.  Use kortex_driver-msg:warning_bank_a instead.")
  (warning_bank_a m))

(cl:ensure-generic-function 'warning_bank_b-val :lambda-list '(m))
(cl:defmethod warning_bank_b-val ((m <ActuatorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:warning_bank_b-val is deprecated.  Use kortex_driver-msg:warning_bank_b instead.")
  (warning_bank_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorFeedback>) ostream)
  "Serializes a message object of type '<ActuatorFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jitter_comm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'jitter_comm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'jitter_comm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'jitter_comm)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature_core))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fault_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fault_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_bank_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_bank_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fault_bank_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fault_bank_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warning_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warning_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'warning_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'warning_bank_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warning_bank_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warning_bank_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'warning_bank_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'warning_bank_b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorFeedback>) istream)
  "Deserializes a message object of type '<ActuatorFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jitter_comm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'jitter_comm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'jitter_comm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'jitter_comm)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_motor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_motor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_core) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fault_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fault_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_bank_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_bank_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fault_bank_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fault_bank_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warning_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warning_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'warning_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'warning_bank_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warning_bank_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warning_bank_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'warning_bank_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'warning_bank_b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorFeedback>)))
  "Returns string type for a message object of type '<ActuatorFeedback>"
  "kortex_driver/ActuatorFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorFeedback)))
  "Returns string type for a message object of type 'ActuatorFeedback"
  "kortex_driver/ActuatorFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorFeedback>)))
  "Returns md5sum for a message object of type '<ActuatorFeedback>"
  "1c44a9029e2d1e74ae3d04b3c212afbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorFeedback)))
  "Returns md5sum for a message object of type 'ActuatorFeedback"
  "1c44a9029e2d1e74ae3d04b3c212afbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorFeedback>)))
  "Returns full string definition for message of type '<ActuatorFeedback>"
  (cl:format cl:nil "~%uint32 command_id~%uint32 status_flags~%uint32 jitter_comm~%float32 position~%float32 velocity~%float32 torque~%float32 current_motor~%float32 voltage~%float32 temperature_motor~%float32 temperature_core~%uint32 fault_bank_a~%uint32 fault_bank_b~%uint32 warning_bank_a~%uint32 warning_bank_b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorFeedback)))
  "Returns full string definition for message of type 'ActuatorFeedback"
  (cl:format cl:nil "~%uint32 command_id~%uint32 status_flags~%uint32 jitter_comm~%float32 position~%float32 velocity~%float32 torque~%float32 current_motor~%float32 voltage~%float32 temperature_motor~%float32 temperature_core~%uint32 fault_bank_a~%uint32 fault_bank_b~%uint32 warning_bank_a~%uint32 warning_bank_b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorFeedback>))
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
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorFeedback
    (cl:cons ':command_id (command_id msg))
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':jitter_comm (jitter_comm msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':current_motor (current_motor msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':temperature_motor (temperature_motor msg))
    (cl:cons ':temperature_core (temperature_core msg))
    (cl:cons ':fault_bank_a (fault_bank_a msg))
    (cl:cons ':fault_bank_b (fault_bank_b msg))
    (cl:cons ':warning_bank_a (warning_bank_a msg))
    (cl:cons ':warning_bank_b (warning_bank_b msg))
))
