; Auto-generated. Do not edit!


(cl:in-package kortex_driver-msg)


;//! \htmlinclude ActionNotification.msg.html

(cl:defclass <ActionNotification> (roslisp-msg-protocol:ros-message)
  ((action_event
    :reader action_event
    :initarg :action_event
    :type cl:integer
    :initform 0)
   (handle
    :reader handle
    :initarg :handle
    :type kortex_driver-msg:ActionHandle
    :initform (cl:make-instance 'kortex_driver-msg:ActionHandle))
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
   (abort_details
    :reader abort_details
    :initarg :abort_details
    :type cl:integer
    :initform 0)
   (connection
    :reader connection
    :initarg :connection
    :type kortex_driver-msg:Connection
    :initform (cl:make-instance 'kortex_driver-msg:Connection)))
)

(cl:defclass ActionNotification (<ActionNotification>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionNotification>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionNotification)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-msg:<ActionNotification> is deprecated: use kortex_driver-msg:ActionNotification instead.")))

(cl:ensure-generic-function 'action_event-val :lambda-list '(m))
(cl:defmethod action_event-val ((m <ActionNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:action_event-val is deprecated.  Use kortex_driver-msg:action_event instead.")
  (action_event m))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <ActionNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:handle-val is deprecated.  Use kortex_driver-msg:handle instead.")
  (handle m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ActionNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:timestamp-val is deprecated.  Use kortex_driver-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'user_handle-val :lambda-list '(m))
(cl:defmethod user_handle-val ((m <ActionNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:user_handle-val is deprecated.  Use kortex_driver-msg:user_handle instead.")
  (user_handle m))

(cl:ensure-generic-function 'abort_details-val :lambda-list '(m))
(cl:defmethod abort_details-val ((m <ActionNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:abort_details-val is deprecated.  Use kortex_driver-msg:abort_details instead.")
  (abort_details m))

(cl:ensure-generic-function 'connection-val :lambda-list '(m))
(cl:defmethod connection-val ((m <ActionNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:connection-val is deprecated.  Use kortex_driver-msg:connection instead.")
  (connection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionNotification>) ostream)
  "Serializes a message object of type '<ActionNotification>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_event)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action_event)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action_event)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action_event)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'handle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'user_handle) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'abort_details)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'abort_details)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'abort_details)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'abort_details)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'connection) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionNotification>) istream)
  "Deserializes a message object of type '<ActionNotification>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_event)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action_event)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action_event)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action_event)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'handle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'user_handle) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'abort_details)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'abort_details)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'abort_details)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'abort_details)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'connection) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionNotification>)))
  "Returns string type for a message object of type '<ActionNotification>"
  "kortex_driver/ActionNotification")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionNotification)))
  "Returns string type for a message object of type 'ActionNotification"
  "kortex_driver/ActionNotification")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionNotification>)))
  "Returns md5sum for a message object of type '<ActionNotification>"
  "0b783b1807e59b154e3f4695d4fecd26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionNotification)))
  "Returns md5sum for a message object of type 'ActionNotification"
  "0b783b1807e59b154e3f4695d4fecd26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionNotification>)))
  "Returns full string definition for message of type '<ActionNotification>"
  (cl:format cl:nil "~%uint32 action_event~%ActionHandle handle~%Timestamp timestamp~%UserProfileHandle user_handle~%uint32 abort_details~%Connection connection~%================================================================================~%MSG: kortex_driver/ActionHandle~%~%uint32 identifier~%uint32 action_type~%uint32 permission~%================================================================================~%MSG: kortex_driver/Timestamp~%~%uint32 sec~%uint32 usec~%================================================================================~%MSG: kortex_driver/UserProfileHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/Connection~%~%UserProfileHandle user_handle~%string connection_information~%uint32 connection_identifier~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionNotification)))
  "Returns full string definition for message of type 'ActionNotification"
  (cl:format cl:nil "~%uint32 action_event~%ActionHandle handle~%Timestamp timestamp~%UserProfileHandle user_handle~%uint32 abort_details~%Connection connection~%================================================================================~%MSG: kortex_driver/ActionHandle~%~%uint32 identifier~%uint32 action_type~%uint32 permission~%================================================================================~%MSG: kortex_driver/Timestamp~%~%uint32 sec~%uint32 usec~%================================================================================~%MSG: kortex_driver/UserProfileHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/Connection~%~%UserProfileHandle user_handle~%string connection_information~%uint32 connection_identifier~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionNotification>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'handle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'user_handle))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'connection))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionNotification>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionNotification
    (cl:cons ':action_event (action_event msg))
    (cl:cons ':handle (handle msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':user_handle (user_handle msg))
    (cl:cons ':abort_details (abort_details msg))
    (cl:cons ':connection (connection msg))
))
