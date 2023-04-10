; Auto-generated. Do not edit!


(cl:in-package kortex_driver-msg)


;//! \htmlinclude ControlModeNotification.msg.html

(cl:defclass <ControlModeNotification> (roslisp-msg-protocol:ros-message)
  ((control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:integer
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type kortex_driver-msg:Timestamp
    :initform (cl:make-instance 'kortex_driver-msg:Timestamp))
   (user_handle
    :reader user_handle
    :initarg :user_handle
    :type kortex_driver-msg:UserProfileHandle
    :initform (cl:make-instance 'kortex_driver-msg:UserProfileHandle))
   (connection
    :reader connection
    :initarg :connection
    :type kortex_driver-msg:Connection
    :initform (cl:make-instance 'kortex_driver-msg:Connection)))
)

(cl:defclass ControlModeNotification (<ControlModeNotification>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlModeNotification>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlModeNotification)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-msg:<ControlModeNotification> is deprecated: use kortex_driver-msg:ControlModeNotification instead.")))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <ControlModeNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:control_mode-val is deprecated.  Use kortex_driver-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ControlModeNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:timestamp-val is deprecated.  Use kortex_driver-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'user_handle-val :lambda-list '(m))
(cl:defmethod user_handle-val ((m <ControlModeNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:user_handle-val is deprecated.  Use kortex_driver-msg:user_handle instead.")
  (user_handle m))

(cl:ensure-generic-function 'connection-val :lambda-list '(m))
(cl:defmethod connection-val ((m <ControlModeNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:connection-val is deprecated.  Use kortex_driver-msg:connection instead.")
  (connection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlModeNotification>) ostream)
  "Serializes a message object of type '<ControlModeNotification>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'control_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'control_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'user_handle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'connection) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlModeNotification>) istream)
  "Deserializes a message object of type '<ControlModeNotification>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'user_handle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'connection) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlModeNotification>)))
  "Returns string type for a message object of type '<ControlModeNotification>"
  "kortex_driver/ControlModeNotification")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlModeNotification)))
  "Returns string type for a message object of type 'ControlModeNotification"
  "kortex_driver/ControlModeNotification")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlModeNotification>)))
  "Returns md5sum for a message object of type '<ControlModeNotification>"
  "de6c0474dc1823fff14e6223b9e6b591")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlModeNotification)))
  "Returns md5sum for a message object of type 'ControlModeNotification"
  "de6c0474dc1823fff14e6223b9e6b591")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlModeNotification>)))
  "Returns full string definition for message of type '<ControlModeNotification>"
  (cl:format cl:nil "~%uint32 control_mode~%Timestamp timestamp~%UserProfileHandle user_handle~%Connection connection~%================================================================================~%MSG: kortex_driver/Timestamp~%~%uint32 sec~%uint32 usec~%================================================================================~%MSG: kortex_driver/UserProfileHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/Connection~%~%UserProfileHandle user_handle~%string connection_information~%uint32 connection_identifier~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlModeNotification)))
  "Returns full string definition for message of type 'ControlModeNotification"
  (cl:format cl:nil "~%uint32 control_mode~%Timestamp timestamp~%UserProfileHandle user_handle~%Connection connection~%================================================================================~%MSG: kortex_driver/Timestamp~%~%uint32 sec~%uint32 usec~%================================================================================~%MSG: kortex_driver/UserProfileHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/Connection~%~%UserProfileHandle user_handle~%string connection_information~%uint32 connection_identifier~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlModeNotification>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'user_handle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'connection))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlModeNotification>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlModeNotification
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':user_handle (user_handle msg))
    (cl:cons ':connection (connection msg))
))
