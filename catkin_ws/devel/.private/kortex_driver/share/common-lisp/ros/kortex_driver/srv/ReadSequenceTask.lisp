; Auto-generated. Do not edit!


(cl:in-package kortex_driver-srv)


;//! \htmlinclude ReadSequenceTask-request.msg.html

(cl:defclass <ReadSequenceTask-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type kortex_driver-msg:SequenceTaskHandle
    :initform (cl:make-instance 'kortex_driver-msg:SequenceTaskHandle)))
)

(cl:defclass ReadSequenceTask-request (<ReadSequenceTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadSequenceTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadSequenceTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-srv:<ReadSequenceTask-request> is deprecated: use kortex_driver-srv:ReadSequenceTask-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <ReadSequenceTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-srv:input-val is deprecated.  Use kortex_driver-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadSequenceTask-request>) ostream)
  "Serializes a message object of type '<ReadSequenceTask-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadSequenceTask-request>) istream)
  "Deserializes a message object of type '<ReadSequenceTask-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadSequenceTask-request>)))
  "Returns string type for a service object of type '<ReadSequenceTask-request>"
  "kortex_driver/ReadSequenceTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadSequenceTask-request)))
  "Returns string type for a service object of type 'ReadSequenceTask-request"
  "kortex_driver/ReadSequenceTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadSequenceTask-request>)))
  "Returns md5sum for a message object of type '<ReadSequenceTask-request>"
  "12f1e57da9dc4439676f3faaa4977e1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadSequenceTask-request)))
  "Returns md5sum for a message object of type 'ReadSequenceTask-request"
  "12f1e57da9dc4439676f3faaa4977e1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadSequenceTask-request>)))
  "Returns full string definition for message of type '<ReadSequenceTask-request>"
  (cl:format cl:nil "SequenceTaskHandle input~%~%================================================================================~%MSG: kortex_driver/SequenceTaskHandle~%~%SequenceHandle sequence_handle~%uint32 task_index~%================================================================================~%MSG: kortex_driver/SequenceHandle~%~%uint32 identifier~%uint32 permission~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadSequenceTask-request)))
  "Returns full string definition for message of type 'ReadSequenceTask-request"
  (cl:format cl:nil "SequenceTaskHandle input~%~%================================================================================~%MSG: kortex_driver/SequenceTaskHandle~%~%SequenceHandle sequence_handle~%uint32 task_index~%================================================================================~%MSG: kortex_driver/SequenceHandle~%~%uint32 identifier~%uint32 permission~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadSequenceTask-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadSequenceTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadSequenceTask-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude ReadSequenceTask-response.msg.html

(cl:defclass <ReadSequenceTask-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type kortex_driver-msg:SequenceTask
    :initform (cl:make-instance 'kortex_driver-msg:SequenceTask)))
)

(cl:defclass ReadSequenceTask-response (<ReadSequenceTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadSequenceTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadSequenceTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-srv:<ReadSequenceTask-response> is deprecated: use kortex_driver-srv:ReadSequenceTask-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <ReadSequenceTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-srv:output-val is deprecated.  Use kortex_driver-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadSequenceTask-response>) ostream)
  "Serializes a message object of type '<ReadSequenceTask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadSequenceTask-response>) istream)
  "Deserializes a message object of type '<ReadSequenceTask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadSequenceTask-response>)))
  "Returns string type for a service object of type '<ReadSequenceTask-response>"
  "kortex_driver/ReadSequenceTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadSequenceTask-response)))
  "Returns string type for a service object of type 'ReadSequenceTask-response"
  "kortex_driver/ReadSequenceTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadSequenceTask-response>)))
  "Returns md5sum for a message object of type '<ReadSequenceTask-response>"
  "12f1e57da9dc4439676f3faaa4977e1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadSequenceTask-response)))
  "Returns md5sum for a message object of type 'ReadSequenceTask-response"
  "12f1e57da9dc4439676f3faaa4977e1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadSequenceTask-response>)))
  "Returns full string definition for message of type '<ReadSequenceTask-response>"
  (cl:format cl:nil "SequenceTask output~%~%================================================================================~%MSG: kortex_driver/SequenceTask~%~%uint32 group_identifier~%Action action~%string application_data~%================================================================================~%MSG: kortex_driver/Action~%~%ActionHandle handle~%string name~%string application_data~%Action_action_parameters oneof_action_parameters~%================================================================================~%MSG: kortex_driver/ActionHandle~%~%uint32 identifier~%uint32 action_type~%uint32 permission~%================================================================================~%MSG: kortex_driver/Action_action_parameters~%~%TwistCommand[] send_twist_command~%WrenchCommand[] send_wrench_command~%Base_JointSpeeds[] send_joint_speeds~%ConstrainedPose[] reach_pose~%ConstrainedJointAngles[] reach_joint_angles~%uint32[] toggle_admittance_mode~%Snapshot[] snapshot~%SwitchControlMapping[] switch_control_mapping~%uint32[] navigate_joints~%uint32[] navigate_mappings~%ChangeTwist[] change_twist~%ChangeJointSpeeds[] change_joint_speeds~%ChangeWrench[] change_wrench~%EmergencyStop[] apply_emergency_stop~%Faults[] clear_faults~%Delay[] delay~%ActionHandle[] execute_action~%GripperCommand[] send_gripper_command~%Base_Stop[] stop_action~%PreComputedJointTrajectory[] play_pre_computed_trajectory~%================================================================================~%MSG: kortex_driver/TwistCommand~%~%uint32 reference_frame~%Twist twist~%uint32 duration~%================================================================================~%MSG: kortex_driver/Twist~%~%float32 linear_x~%float32 linear_y~%float32 linear_z~%float32 angular_x~%float32 angular_y~%float32 angular_z~%================================================================================~%MSG: kortex_driver/WrenchCommand~%~%uint32 reference_frame~%uint32 mode~%Wrench wrench~%uint32 duration~%================================================================================~%MSG: kortex_driver/Wrench~%~%float32 force_x~%float32 force_y~%float32 force_z~%float32 torque_x~%float32 torque_y~%float32 torque_z~%================================================================================~%MSG: kortex_driver/Base_JointSpeeds~%~%JointSpeed[] joint_speeds~%uint32 duration~%================================================================================~%MSG: kortex_driver/JointSpeed~%~%uint32 joint_identifier~%float32 value~%uint32 duration~%================================================================================~%MSG: kortex_driver/ConstrainedPose~%~%Pose target_pose~%CartesianTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/Pose~%~%float32 x~%float32 y~%float32 z~%float32 theta_x~%float32 theta_y~%float32 theta_z~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint~%~%CartesianTrajectoryConstraint_type oneof_type~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint_type~%~%CartesianSpeed[] speed~%uint32[] duration~%================================================================================~%MSG: kortex_driver/CartesianSpeed~%~%float32 translation~%float32 orientation~%================================================================================~%MSG: kortex_driver/ConstrainedJointAngles~%~%JointAngles joint_angles~%JointTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/JointAngles~%~%JointAngle[] joint_angles~%================================================================================~%MSG: kortex_driver/JointAngle~%~%uint32 joint_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/JointTrajectoryConstraint~%~%uint32 type~%float32 value~%================================================================================~%MSG: kortex_driver/Snapshot~%~%uint32 snapshot_type~%================================================================================~%MSG: kortex_driver/SwitchControlMapping~%~%uint32 controller_identifier~%MapGroupHandle map_group_handle~%MapHandle map_handle~%================================================================================~%MSG: kortex_driver/MapGroupHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/MapHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/ChangeTwist~%~%float32 linear~%float32 angular~%================================================================================~%MSG: kortex_driver/ChangeJointSpeeds~%~%Base_JointSpeeds joint_speeds~%================================================================================~%MSG: kortex_driver/ChangeWrench~%~%float32 force~%float32 torque~%================================================================================~%MSG: kortex_driver/EmergencyStop~%~%================================================================================~%MSG: kortex_driver/Faults~%~%================================================================================~%MSG: kortex_driver/Delay~%~%uint32 duration~%================================================================================~%MSG: kortex_driver/GripperCommand~%~%uint32 mode~%Gripper gripper~%uint32 duration~%================================================================================~%MSG: kortex_driver/Gripper~%~%Finger[] finger~%================================================================================~%MSG: kortex_driver/Finger~%~%uint32 finger_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/Base_Stop~%~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectory~%~%uint32 mode~%PreComputedJointTrajectoryElement[] trajectory_elements~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectoryElement~%~%float32[] joint_angles~%float32[] joint_speeds~%float32[] joint_accelerations~%float32 time_from_start~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadSequenceTask-response)))
  "Returns full string definition for message of type 'ReadSequenceTask-response"
  (cl:format cl:nil "SequenceTask output~%~%================================================================================~%MSG: kortex_driver/SequenceTask~%~%uint32 group_identifier~%Action action~%string application_data~%================================================================================~%MSG: kortex_driver/Action~%~%ActionHandle handle~%string name~%string application_data~%Action_action_parameters oneof_action_parameters~%================================================================================~%MSG: kortex_driver/ActionHandle~%~%uint32 identifier~%uint32 action_type~%uint32 permission~%================================================================================~%MSG: kortex_driver/Action_action_parameters~%~%TwistCommand[] send_twist_command~%WrenchCommand[] send_wrench_command~%Base_JointSpeeds[] send_joint_speeds~%ConstrainedPose[] reach_pose~%ConstrainedJointAngles[] reach_joint_angles~%uint32[] toggle_admittance_mode~%Snapshot[] snapshot~%SwitchControlMapping[] switch_control_mapping~%uint32[] navigate_joints~%uint32[] navigate_mappings~%ChangeTwist[] change_twist~%ChangeJointSpeeds[] change_joint_speeds~%ChangeWrench[] change_wrench~%EmergencyStop[] apply_emergency_stop~%Faults[] clear_faults~%Delay[] delay~%ActionHandle[] execute_action~%GripperCommand[] send_gripper_command~%Base_Stop[] stop_action~%PreComputedJointTrajectory[] play_pre_computed_trajectory~%================================================================================~%MSG: kortex_driver/TwistCommand~%~%uint32 reference_frame~%Twist twist~%uint32 duration~%================================================================================~%MSG: kortex_driver/Twist~%~%float32 linear_x~%float32 linear_y~%float32 linear_z~%float32 angular_x~%float32 angular_y~%float32 angular_z~%================================================================================~%MSG: kortex_driver/WrenchCommand~%~%uint32 reference_frame~%uint32 mode~%Wrench wrench~%uint32 duration~%================================================================================~%MSG: kortex_driver/Wrench~%~%float32 force_x~%float32 force_y~%float32 force_z~%float32 torque_x~%float32 torque_y~%float32 torque_z~%================================================================================~%MSG: kortex_driver/Base_JointSpeeds~%~%JointSpeed[] joint_speeds~%uint32 duration~%================================================================================~%MSG: kortex_driver/JointSpeed~%~%uint32 joint_identifier~%float32 value~%uint32 duration~%================================================================================~%MSG: kortex_driver/ConstrainedPose~%~%Pose target_pose~%CartesianTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/Pose~%~%float32 x~%float32 y~%float32 z~%float32 theta_x~%float32 theta_y~%float32 theta_z~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint~%~%CartesianTrajectoryConstraint_type oneof_type~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint_type~%~%CartesianSpeed[] speed~%uint32[] duration~%================================================================================~%MSG: kortex_driver/CartesianSpeed~%~%float32 translation~%float32 orientation~%================================================================================~%MSG: kortex_driver/ConstrainedJointAngles~%~%JointAngles joint_angles~%JointTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/JointAngles~%~%JointAngle[] joint_angles~%================================================================================~%MSG: kortex_driver/JointAngle~%~%uint32 joint_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/JointTrajectoryConstraint~%~%uint32 type~%float32 value~%================================================================================~%MSG: kortex_driver/Snapshot~%~%uint32 snapshot_type~%================================================================================~%MSG: kortex_driver/SwitchControlMapping~%~%uint32 controller_identifier~%MapGroupHandle map_group_handle~%MapHandle map_handle~%================================================================================~%MSG: kortex_driver/MapGroupHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/MapHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/ChangeTwist~%~%float32 linear~%float32 angular~%================================================================================~%MSG: kortex_driver/ChangeJointSpeeds~%~%Base_JointSpeeds joint_speeds~%================================================================================~%MSG: kortex_driver/ChangeWrench~%~%float32 force~%float32 torque~%================================================================================~%MSG: kortex_driver/EmergencyStop~%~%================================================================================~%MSG: kortex_driver/Faults~%~%================================================================================~%MSG: kortex_driver/Delay~%~%uint32 duration~%================================================================================~%MSG: kortex_driver/GripperCommand~%~%uint32 mode~%Gripper gripper~%uint32 duration~%================================================================================~%MSG: kortex_driver/Gripper~%~%Finger[] finger~%================================================================================~%MSG: kortex_driver/Finger~%~%uint32 finger_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/Base_Stop~%~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectory~%~%uint32 mode~%PreComputedJointTrajectoryElement[] trajectory_elements~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectoryElement~%~%float32[] joint_angles~%float32[] joint_speeds~%float32[] joint_accelerations~%float32 time_from_start~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadSequenceTask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadSequenceTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadSequenceTask-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadSequenceTask)))
  'ReadSequenceTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadSequenceTask)))
  'ReadSequenceTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadSequenceTask)))
  "Returns string type for a service object of type '<ReadSequenceTask>"
  "kortex_driver/ReadSequenceTask")