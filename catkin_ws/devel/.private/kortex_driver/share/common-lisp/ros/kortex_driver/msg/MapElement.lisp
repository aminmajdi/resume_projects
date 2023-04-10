; Auto-generated. Do not edit!


(cl:in-package kortex_driver-msg)


;//! \htmlinclude MapElement.msg.html

(cl:defclass <MapElement> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type kortex_driver-msg:MapEvent
    :initform (cl:make-instance 'kortex_driver-msg:MapEvent))
   (action
    :reader action
    :initarg :action
    :type kortex_driver-msg:Action
    :initform (cl:make-instance 'kortex_driver-msg:Action))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass MapElement (<MapElement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapElement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapElement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kortex_driver-msg:<MapElement> is deprecated: use kortex_driver-msg:MapElement instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <MapElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:event-val is deprecated.  Use kortex_driver-msg:event instead.")
  (event m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <MapElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:action-val is deprecated.  Use kortex_driver-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MapElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kortex_driver-msg:name-val is deprecated.  Use kortex_driver-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapElement>) ostream)
  "Serializes a message object of type '<MapElement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapElement>) istream)
  "Deserializes a message object of type '<MapElement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapElement>)))
  "Returns string type for a message object of type '<MapElement>"
  "kortex_driver/MapElement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapElement)))
  "Returns string type for a message object of type 'MapElement"
  "kortex_driver/MapElement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapElement>)))
  "Returns md5sum for a message object of type '<MapElement>"
  "55c1af8e8739f6d8c27cf3cdb4a9a05b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapElement)))
  "Returns md5sum for a message object of type 'MapElement"
  "55c1af8e8739f6d8c27cf3cdb4a9a05b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapElement>)))
  "Returns full string definition for message of type '<MapElement>"
  (cl:format cl:nil "~%MapEvent event~%Action action~%string name~%================================================================================~%MSG: kortex_driver/MapEvent~%~%string name~%MapEvent_events oneof_events~%================================================================================~%MSG: kortex_driver/MapEvent_events~%~%SafetyEvent[] safety_event~%GpioEvent[] gpio_event~%ControllerEvent[] controller_event~%================================================================================~%MSG: kortex_driver/SafetyEvent~%~%SafetyHandle safety_handle~%================================================================================~%MSG: kortex_driver/SafetyHandle~%~%uint32 identifier~%================================================================================~%MSG: kortex_driver/GpioEvent~%~%uint32 input_type~%uint32 behavior~%uint32 input_identifier~%================================================================================~%MSG: kortex_driver/ControllerEvent~%~%uint32 input_type~%uint32 behavior~%uint32 input_identifier~%================================================================================~%MSG: kortex_driver/Action~%~%ActionHandle handle~%string name~%string application_data~%Action_action_parameters oneof_action_parameters~%================================================================================~%MSG: kortex_driver/ActionHandle~%~%uint32 identifier~%uint32 action_type~%uint32 permission~%================================================================================~%MSG: kortex_driver/Action_action_parameters~%~%TwistCommand[] send_twist_command~%WrenchCommand[] send_wrench_command~%Base_JointSpeeds[] send_joint_speeds~%ConstrainedPose[] reach_pose~%ConstrainedJointAngles[] reach_joint_angles~%uint32[] toggle_admittance_mode~%Snapshot[] snapshot~%SwitchControlMapping[] switch_control_mapping~%uint32[] navigate_joints~%uint32[] navigate_mappings~%ChangeTwist[] change_twist~%ChangeJointSpeeds[] change_joint_speeds~%ChangeWrench[] change_wrench~%EmergencyStop[] apply_emergency_stop~%Faults[] clear_faults~%Delay[] delay~%ActionHandle[] execute_action~%GripperCommand[] send_gripper_command~%Base_Stop[] stop_action~%PreComputedJointTrajectory[] play_pre_computed_trajectory~%================================================================================~%MSG: kortex_driver/TwistCommand~%~%uint32 reference_frame~%Twist twist~%uint32 duration~%================================================================================~%MSG: kortex_driver/Twist~%~%float32 linear_x~%float32 linear_y~%float32 linear_z~%float32 angular_x~%float32 angular_y~%float32 angular_z~%================================================================================~%MSG: kortex_driver/WrenchCommand~%~%uint32 reference_frame~%uint32 mode~%Wrench wrench~%uint32 duration~%================================================================================~%MSG: kortex_driver/Wrench~%~%float32 force_x~%float32 force_y~%float32 force_z~%float32 torque_x~%float32 torque_y~%float32 torque_z~%================================================================================~%MSG: kortex_driver/Base_JointSpeeds~%~%JointSpeed[] joint_speeds~%uint32 duration~%================================================================================~%MSG: kortex_driver/JointSpeed~%~%uint32 joint_identifier~%float32 value~%uint32 duration~%================================================================================~%MSG: kortex_driver/ConstrainedPose~%~%Pose target_pose~%CartesianTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/Pose~%~%float32 x~%float32 y~%float32 z~%float32 theta_x~%float32 theta_y~%float32 theta_z~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint~%~%CartesianTrajectoryConstraint_type oneof_type~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint_type~%~%CartesianSpeed[] speed~%uint32[] duration~%================================================================================~%MSG: kortex_driver/CartesianSpeed~%~%float32 translation~%float32 orientation~%================================================================================~%MSG: kortex_driver/ConstrainedJointAngles~%~%JointAngles joint_angles~%JointTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/JointAngles~%~%JointAngle[] joint_angles~%================================================================================~%MSG: kortex_driver/JointAngle~%~%uint32 joint_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/JointTrajectoryConstraint~%~%uint32 type~%float32 value~%================================================================================~%MSG: kortex_driver/Snapshot~%~%uint32 snapshot_type~%================================================================================~%MSG: kortex_driver/SwitchControlMapping~%~%uint32 controller_identifier~%MapGroupHandle map_group_handle~%MapHandle map_handle~%================================================================================~%MSG: kortex_driver/MapGroupHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/MapHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/ChangeTwist~%~%float32 linear~%float32 angular~%================================================================================~%MSG: kortex_driver/ChangeJointSpeeds~%~%Base_JointSpeeds joint_speeds~%================================================================================~%MSG: kortex_driver/ChangeWrench~%~%float32 force~%float32 torque~%================================================================================~%MSG: kortex_driver/EmergencyStop~%~%================================================================================~%MSG: kortex_driver/Faults~%~%================================================================================~%MSG: kortex_driver/Delay~%~%uint32 duration~%================================================================================~%MSG: kortex_driver/GripperCommand~%~%uint32 mode~%Gripper gripper~%uint32 duration~%================================================================================~%MSG: kortex_driver/Gripper~%~%Finger[] finger~%================================================================================~%MSG: kortex_driver/Finger~%~%uint32 finger_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/Base_Stop~%~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectory~%~%uint32 mode~%PreComputedJointTrajectoryElement[] trajectory_elements~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectoryElement~%~%float32[] joint_angles~%float32[] joint_speeds~%float32[] joint_accelerations~%float32 time_from_start~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapElement)))
  "Returns full string definition for message of type 'MapElement"
  (cl:format cl:nil "~%MapEvent event~%Action action~%string name~%================================================================================~%MSG: kortex_driver/MapEvent~%~%string name~%MapEvent_events oneof_events~%================================================================================~%MSG: kortex_driver/MapEvent_events~%~%SafetyEvent[] safety_event~%GpioEvent[] gpio_event~%ControllerEvent[] controller_event~%================================================================================~%MSG: kortex_driver/SafetyEvent~%~%SafetyHandle safety_handle~%================================================================================~%MSG: kortex_driver/SafetyHandle~%~%uint32 identifier~%================================================================================~%MSG: kortex_driver/GpioEvent~%~%uint32 input_type~%uint32 behavior~%uint32 input_identifier~%================================================================================~%MSG: kortex_driver/ControllerEvent~%~%uint32 input_type~%uint32 behavior~%uint32 input_identifier~%================================================================================~%MSG: kortex_driver/Action~%~%ActionHandle handle~%string name~%string application_data~%Action_action_parameters oneof_action_parameters~%================================================================================~%MSG: kortex_driver/ActionHandle~%~%uint32 identifier~%uint32 action_type~%uint32 permission~%================================================================================~%MSG: kortex_driver/Action_action_parameters~%~%TwistCommand[] send_twist_command~%WrenchCommand[] send_wrench_command~%Base_JointSpeeds[] send_joint_speeds~%ConstrainedPose[] reach_pose~%ConstrainedJointAngles[] reach_joint_angles~%uint32[] toggle_admittance_mode~%Snapshot[] snapshot~%SwitchControlMapping[] switch_control_mapping~%uint32[] navigate_joints~%uint32[] navigate_mappings~%ChangeTwist[] change_twist~%ChangeJointSpeeds[] change_joint_speeds~%ChangeWrench[] change_wrench~%EmergencyStop[] apply_emergency_stop~%Faults[] clear_faults~%Delay[] delay~%ActionHandle[] execute_action~%GripperCommand[] send_gripper_command~%Base_Stop[] stop_action~%PreComputedJointTrajectory[] play_pre_computed_trajectory~%================================================================================~%MSG: kortex_driver/TwistCommand~%~%uint32 reference_frame~%Twist twist~%uint32 duration~%================================================================================~%MSG: kortex_driver/Twist~%~%float32 linear_x~%float32 linear_y~%float32 linear_z~%float32 angular_x~%float32 angular_y~%float32 angular_z~%================================================================================~%MSG: kortex_driver/WrenchCommand~%~%uint32 reference_frame~%uint32 mode~%Wrench wrench~%uint32 duration~%================================================================================~%MSG: kortex_driver/Wrench~%~%float32 force_x~%float32 force_y~%float32 force_z~%float32 torque_x~%float32 torque_y~%float32 torque_z~%================================================================================~%MSG: kortex_driver/Base_JointSpeeds~%~%JointSpeed[] joint_speeds~%uint32 duration~%================================================================================~%MSG: kortex_driver/JointSpeed~%~%uint32 joint_identifier~%float32 value~%uint32 duration~%================================================================================~%MSG: kortex_driver/ConstrainedPose~%~%Pose target_pose~%CartesianTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/Pose~%~%float32 x~%float32 y~%float32 z~%float32 theta_x~%float32 theta_y~%float32 theta_z~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint~%~%CartesianTrajectoryConstraint_type oneof_type~%================================================================================~%MSG: kortex_driver/CartesianTrajectoryConstraint_type~%~%CartesianSpeed[] speed~%uint32[] duration~%================================================================================~%MSG: kortex_driver/CartesianSpeed~%~%float32 translation~%float32 orientation~%================================================================================~%MSG: kortex_driver/ConstrainedJointAngles~%~%JointAngles joint_angles~%JointTrajectoryConstraint constraint~%================================================================================~%MSG: kortex_driver/JointAngles~%~%JointAngle[] joint_angles~%================================================================================~%MSG: kortex_driver/JointAngle~%~%uint32 joint_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/JointTrajectoryConstraint~%~%uint32 type~%float32 value~%================================================================================~%MSG: kortex_driver/Snapshot~%~%uint32 snapshot_type~%================================================================================~%MSG: kortex_driver/SwitchControlMapping~%~%uint32 controller_identifier~%MapGroupHandle map_group_handle~%MapHandle map_handle~%================================================================================~%MSG: kortex_driver/MapGroupHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/MapHandle~%~%uint32 identifier~%uint32 permission~%================================================================================~%MSG: kortex_driver/ChangeTwist~%~%float32 linear~%float32 angular~%================================================================================~%MSG: kortex_driver/ChangeJointSpeeds~%~%Base_JointSpeeds joint_speeds~%================================================================================~%MSG: kortex_driver/ChangeWrench~%~%float32 force~%float32 torque~%================================================================================~%MSG: kortex_driver/EmergencyStop~%~%================================================================================~%MSG: kortex_driver/Faults~%~%================================================================================~%MSG: kortex_driver/Delay~%~%uint32 duration~%================================================================================~%MSG: kortex_driver/GripperCommand~%~%uint32 mode~%Gripper gripper~%uint32 duration~%================================================================================~%MSG: kortex_driver/Gripper~%~%Finger[] finger~%================================================================================~%MSG: kortex_driver/Finger~%~%uint32 finger_identifier~%float32 value~%================================================================================~%MSG: kortex_driver/Base_Stop~%~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectory~%~%uint32 mode~%PreComputedJointTrajectoryElement[] trajectory_elements~%================================================================================~%MSG: kortex_driver/PreComputedJointTrajectoryElement~%~%float32[] joint_angles~%float32[] joint_speeds~%float32[] joint_accelerations~%float32 time_from_start~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapElement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapElement>))
  "Converts a ROS message object to a list"
  (cl:list 'MapElement
    (cl:cons ':event (event msg))
    (cl:cons ':action (action msg))
    (cl:cons ':name (name msg))
))
