; Auto-generated. Do not edit!


(cl:in-package kortex_driver-msg)


;//! \htmlinclude TrajectoryErrorType.msg.html

(cl:defclass <TrajectoryErrorType> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrajectoryErrorType (<TrajectoryErrorType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryErrorType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryErrorType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-msg:<TrajectoryErrorType> is deprecated: use kortex_driver-msg:TrajectoryErrorType instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrajectoryErrorType>)))
    "Constants for message type '<TrajectoryErrorType>"
  '((:TRAJECTORY_ERROR_TYPE_UNSPECIFIED . 0)
    (:TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE . 1)
    (:TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH . 2)
    (:TRAJECTORY_ERROR_TYPE_INVALID_DURATION . 3)
    (:TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE . 4)
    (:TRAJECTORY_ERROR_TYPE_INVALID_SPEED . 5)
    (:TRAJECTORY_ERROR_TYPE_LARGE_SPEED . 6)
    (:TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION . 7)
    (:TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP . 8)
    (:TRAJECTORY_ERROR_TYPE_LARGE_SIZE . 9)
    (:TRAJECTORY_ERROR_TYPE_WRONG_MODE . 10)
    (:TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT . 11)
    (:TRAJECTORY_ERROR_TYPE_FILE_ERROR . 12)
    (:TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY . 13)
    (:TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ . 14)
    (:TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING . 15)
    (:TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT . 16)
    (:TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START . 17)
    (:TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED . 18)
    (:TRAJECTORY_ERROR_TYPE_INVALID_POSITION . 19))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrajectoryErrorType)))
    "Constants for message type 'TrajectoryErrorType"
  '((:TRAJECTORY_ERROR_TYPE_UNSPECIFIED . 0)
    (:TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE . 1)
    (:TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH . 2)
    (:TRAJECTORY_ERROR_TYPE_INVALID_DURATION . 3)
    (:TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE . 4)
    (:TRAJECTORY_ERROR_TYPE_INVALID_SPEED . 5)
    (:TRAJECTORY_ERROR_TYPE_LARGE_SPEED . 6)
    (:TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION . 7)
    (:TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP . 8)
    (:TRAJECTORY_ERROR_TYPE_LARGE_SIZE . 9)
    (:TRAJECTORY_ERROR_TYPE_WRONG_MODE . 10)
    (:TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT . 11)
    (:TRAJECTORY_ERROR_TYPE_FILE_ERROR . 12)
    (:TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY . 13)
    (:TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ . 14)
    (:TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING . 15)
    (:TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT . 16)
    (:TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START . 17)
    (:TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED . 18)
    (:TRAJECTORY_ERROR_TYPE_INVALID_POSITION . 19))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryErrorType>) ostream)
  "Serializes a message object of type '<TrajectoryErrorType>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryErrorType>) istream)
  "Deserializes a message object of type '<TrajectoryErrorType>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryErrorType>)))
  "Returns string type for a message object of type '<TrajectoryErrorType>"
  "kortex_driver/TrajectoryErrorType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryErrorType)))
  "Returns string type for a message object of type 'TrajectoryErrorType"
  "kortex_driver/TrajectoryErrorType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryErrorType>)))
  "Returns md5sum for a message object of type '<TrajectoryErrorType>"
  "13800948a2dcbdce2d2c2bb24af1783c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryErrorType)))
  "Returns md5sum for a message object of type 'TrajectoryErrorType"
  "13800948a2dcbdce2d2c2bb24af1783c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryErrorType>)))
  "Returns full string definition for message of type '<TrajectoryErrorType>"
  (cl:format cl:nil "~%uint32 TRAJECTORY_ERROR_TYPE_UNSPECIFIED = 0~%~%uint32 TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE = 1~%~%uint32 TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH = 2~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_DURATION = 3~%~%uint32 TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE = 4~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_SPEED = 5~%~%uint32 TRAJECTORY_ERROR_TYPE_LARGE_SPEED = 6~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION = 7~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP = 8~%~%uint32 TRAJECTORY_ERROR_TYPE_LARGE_SIZE = 9~%~%uint32 TRAJECTORY_ERROR_TYPE_WRONG_MODE = 10~%~%uint32 TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT = 11~%~%uint32 TRAJECTORY_ERROR_TYPE_FILE_ERROR = 12~%~%uint32 TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY = 13~%~%uint32 TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ = 14~%~%uint32 TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING = 15~%~%uint32 TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT = 16~%~%uint32 TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START = 17~%~%uint32 TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED = 18~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_POSITION = 19~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryErrorType)))
  "Returns full string definition for message of type 'TrajectoryErrorType"
  (cl:format cl:nil "~%uint32 TRAJECTORY_ERROR_TYPE_UNSPECIFIED = 0~%~%uint32 TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE = 1~%~%uint32 TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH = 2~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_DURATION = 3~%~%uint32 TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE = 4~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_SPEED = 5~%~%uint32 TRAJECTORY_ERROR_TYPE_LARGE_SPEED = 6~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION = 7~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP = 8~%~%uint32 TRAJECTORY_ERROR_TYPE_LARGE_SIZE = 9~%~%uint32 TRAJECTORY_ERROR_TYPE_WRONG_MODE = 10~%~%uint32 TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT = 11~%~%uint32 TRAJECTORY_ERROR_TYPE_FILE_ERROR = 12~%~%uint32 TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY = 13~%~%uint32 TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ = 14~%~%uint32 TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING = 15~%~%uint32 TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT = 16~%~%uint32 TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START = 17~%~%uint32 TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED = 18~%~%uint32 TRAJECTORY_ERROR_TYPE_INVALID_POSITION = 19~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryErrorType>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryErrorType>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryErrorType
))
