; Auto-generated. Do not edit!


(cl:in-package kortex_driver-srv)


;//! \htmlinclude SetServoingMode-request.msg.html

(cl:defclass <SetServoingMode-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type kortex_driver-msg:ServoingModeInformation
    :initform (cl:make-instance 'kortex_driver-msg:ServoingModeInformation)))
)

(cl:defclass SetServoingMode-request (<SetServoingMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetServoingMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetServoingMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-srv:<SetServoingMode-request> is deprecated: use kortex_driver-srv:SetServoingMode-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <SetServoingMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-srv:input-val is deprecated.  Use kortex_driver-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetServoingMode-request>) ostream)
  "Serializes a message object of type '<SetServoingMode-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetServoingMode-request>) istream)
  "Deserializes a message object of type '<SetServoingMode-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetServoingMode-request>)))
  "Returns string type for a service object of type '<SetServoingMode-request>"
  "kortex_driver/SetServoingModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetServoingMode-request)))
  "Returns string type for a service object of type 'SetServoingMode-request"
  "kortex_driver/SetServoingModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetServoingMode-request>)))
  "Returns md5sum for a message object of type '<SetServoingMode-request>"
  "a5076ba162fd0403b8672e41a673c035")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetServoingMode-request)))
  "Returns md5sum for a message object of type 'SetServoingMode-request"
  "a5076ba162fd0403b8672e41a673c035")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetServoingMode-request>)))
  "Returns full string definition for message of type '<SetServoingMode-request>"
  (cl:format cl:nil "ServoingModeInformation input~%~%================================================================================~%MSG: kortex_driver/ServoingModeInformation~%~%uint32 servoing_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetServoingMode-request)))
  "Returns full string definition for message of type 'SetServoingMode-request"
  (cl:format cl:nil "ServoingModeInformation input~%~%================================================================================~%MSG: kortex_driver/ServoingModeInformation~%~%uint32 servoing_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetServoingMode-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetServoingMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetServoingMode-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude SetServoingMode-response.msg.html

(cl:defclass <SetServoingMode-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type kortex_driver-msg:Empty
    :initform (cl:make-instance 'kortex_driver-msg:Empty)))
)

(cl:defclass SetServoingMode-response (<SetServoingMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetServoingMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetServoingMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-srv:<SetServoingMode-response> is deprecated: use kortex_driver-srv:SetServoingMode-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <SetServoingMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-srv:output-val is deprecated.  Use kortex_driver-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetServoingMode-response>) ostream)
  "Serializes a message object of type '<SetServoingMode-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetServoingMode-response>) istream)
  "Deserializes a message object of type '<SetServoingMode-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetServoingMode-response>)))
  "Returns string type for a service object of type '<SetServoingMode-response>"
  "kortex_driver/SetServoingModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetServoingMode-response)))
  "Returns string type for a service object of type 'SetServoingMode-response"
  "kortex_driver/SetServoingModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetServoingMode-response>)))
  "Returns md5sum for a message object of type '<SetServoingMode-response>"
  "a5076ba162fd0403b8672e41a673c035")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetServoingMode-response)))
  "Returns md5sum for a message object of type 'SetServoingMode-response"
  "a5076ba162fd0403b8672e41a673c035")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetServoingMode-response>)))
  "Returns full string definition for message of type '<SetServoingMode-response>"
  (cl:format cl:nil "Empty output~%~%================================================================================~%MSG: kortex_driver/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetServoingMode-response)))
  "Returns full string definition for message of type 'SetServoingMode-response"
  (cl:format cl:nil "Empty output~%~%================================================================================~%MSG: kortex_driver/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetServoingMode-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetServoingMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetServoingMode-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetServoingMode)))
  'SetServoingMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetServoingMode)))
  'SetServoingMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetServoingMode)))
  "Returns string type for a service object of type '<SetServoingMode>"
  "kortex_driver/SetServoingMode")