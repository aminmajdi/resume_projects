;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ReadAllMaps)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ReadAllMaps (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::READALLMAPS")
  (make-package "KORTEX_DRIVER::READALLMAPS"))
(unless (find-package "KORTEX_DRIVER::READALLMAPSREQUEST")
  (make-package "KORTEX_DRIVER::READALLMAPSREQUEST"))
(unless (find-package "KORTEX_DRIVER::READALLMAPSRESPONSE")
  (make-package "KORTEX_DRIVER::READALLMAPSRESPONSE"))

(in-package "ROS")





(defclass kortex_driver::ReadAllMapsRequest
  :super ros::object
  :slots (_input ))

(defmethod kortex_driver::ReadAllMapsRequest
  (:init
   (&key
    ((:input __input) (instance kortex_driver::MappingHandle :init))
    )
   (send-super :init)
   (setq _input __input)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:serialization-length
   ()
   (+
    ;; kortex_driver/MappingHandle _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kortex_driver/MappingHandle _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kortex_driver/MappingHandle _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass kortex_driver::ReadAllMapsResponse
  :super ros::object
  :slots (_output ))

(defmethod kortex_driver::ReadAllMapsResponse
  (:init
   (&key
    ((:output __output) (instance kortex_driver::MapList :init))
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; kortex_driver/MapList _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kortex_driver/MapList _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kortex_driver/MapList _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass kortex_driver::ReadAllMaps
  :super ros::object
  :slots ())

(setf (get kortex_driver::ReadAllMaps :md5sum-) "59991239ce77432a143c9e36e7d95b3d")
(setf (get kortex_driver::ReadAllMaps :datatype-) "kortex_driver/ReadAllMaps")
(setf (get kortex_driver::ReadAllMaps :request) kortex_driver::ReadAllMapsRequest)
(setf (get kortex_driver::ReadAllMaps :response) kortex_driver::ReadAllMapsResponse)

(defmethod kortex_driver::ReadAllMapsRequest
  (:response () (instance kortex_driver::ReadAllMapsResponse :init)))

(setf (get kortex_driver::ReadAllMapsRequest :md5sum-) "59991239ce77432a143c9e36e7d95b3d")
(setf (get kortex_driver::ReadAllMapsRequest :datatype-) "kortex_driver/ReadAllMapsRequest")
(setf (get kortex_driver::ReadAllMapsRequest :definition-)
      "MappingHandle input

================================================================================
MSG: kortex_driver/MappingHandle

uint32 identifier
---
MapList output

================================================================================
MSG: kortex_driver/MapList

Map[] map_list
================================================================================
MSG: kortex_driver/Map

MapHandle handle
string name
MapElement[] elements
================================================================================
MSG: kortex_driver/MapHandle

uint32 identifier
uint32 permission
================================================================================
MSG: kortex_driver/MapElement

MapEvent event
Action action
string name
================================================================================
MSG: kortex_driver/MapEvent

string name
MapEvent_events oneof_events
================================================================================
MSG: kortex_driver/MapEvent_events

SafetyEvent[] safety_event
GpioEvent[] gpio_event
ControllerEvent[] controller_event
================================================================================
MSG: kortex_driver/SafetyEvent

SafetyHandle safety_handle
================================================================================
MSG: kortex_driver/SafetyHandle

uint32 identifier
================================================================================
MSG: kortex_driver/GpioEvent

uint32 input_type
uint32 behavior
uint32 input_identifier
================================================================================
MSG: kortex_driver/ControllerEvent

uint32 input_type
uint32 behavior
uint32 input_identifier
================================================================================
MSG: kortex_driver/Action

ActionHandle handle
string name
string application_data
Action_action_parameters oneof_action_parameters
================================================================================
MSG: kortex_driver/ActionHandle

uint32 identifier
uint32 action_type
uint32 permission
================================================================================
MSG: kortex_driver/Action_action_parameters

TwistCommand[] send_twist_command
WrenchCommand[] send_wrench_command
Base_JointSpeeds[] send_joint_speeds
ConstrainedPose[] reach_pose
ConstrainedJointAngles[] reach_joint_angles
uint32[] toggle_admittance_mode
Snapshot[] snapshot
SwitchControlMapping[] switch_control_mapping
uint32[] navigate_joints
uint32[] navigate_mappings
ChangeTwist[] change_twist
ChangeJointSpeeds[] change_joint_speeds
ChangeWrench[] change_wrench
EmergencyStop[] apply_emergency_stop
Faults[] clear_faults
Delay[] delay
ActionHandle[] execute_action
GripperCommand[] send_gripper_command
Base_Stop[] stop_action
PreComputedJointTrajectory[] play_pre_computed_trajectory
================================================================================
MSG: kortex_driver/TwistCommand

uint32 reference_frame
Twist twist
uint32 duration
================================================================================
MSG: kortex_driver/Twist

float32 linear_x
float32 linear_y
float32 linear_z
float32 angular_x
float32 angular_y
float32 angular_z
================================================================================
MSG: kortex_driver/WrenchCommand

uint32 reference_frame
uint32 mode
Wrench wrench
uint32 duration
================================================================================
MSG: kortex_driver/Wrench

float32 force_x
float32 force_y
float32 force_z
float32 torque_x
float32 torque_y
float32 torque_z
================================================================================
MSG: kortex_driver/Base_JointSpeeds

JointSpeed[] joint_speeds
uint32 duration
================================================================================
MSG: kortex_driver/JointSpeed

uint32 joint_identifier
float32 value
uint32 duration
================================================================================
MSG: kortex_driver/ConstrainedPose

Pose target_pose
CartesianTrajectoryConstraint constraint
================================================================================
MSG: kortex_driver/Pose

float32 x
float32 y
float32 z
float32 theta_x
float32 theta_y
float32 theta_z
================================================================================
MSG: kortex_driver/CartesianTrajectoryConstraint

CartesianTrajectoryConstraint_type oneof_type
================================================================================
MSG: kortex_driver/CartesianTrajectoryConstraint_type

CartesianSpeed[] speed
uint32[] duration
================================================================================
MSG: kortex_driver/CartesianSpeed

float32 translation
float32 orientation
================================================================================
MSG: kortex_driver/ConstrainedJointAngles

JointAngles joint_angles
JointTrajectoryConstraint constraint
================================================================================
MSG: kortex_driver/JointAngles

JointAngle[] joint_angles
================================================================================
MSG: kortex_driver/JointAngle

uint32 joint_identifier
float32 value
================================================================================
MSG: kortex_driver/JointTrajectoryConstraint

uint32 type
float32 value
================================================================================
MSG: kortex_driver/Snapshot

uint32 snapshot_type
================================================================================
MSG: kortex_driver/SwitchControlMapping

uint32 controller_identifier
MapGroupHandle map_group_handle
MapHandle map_handle
================================================================================
MSG: kortex_driver/MapGroupHandle

uint32 identifier
uint32 permission
================================================================================
MSG: kortex_driver/ChangeTwist

float32 linear
float32 angular
================================================================================
MSG: kortex_driver/ChangeJointSpeeds

Base_JointSpeeds joint_speeds
================================================================================
MSG: kortex_driver/ChangeWrench

float32 force
float32 torque
================================================================================
MSG: kortex_driver/EmergencyStop

================================================================================
MSG: kortex_driver/Faults

================================================================================
MSG: kortex_driver/Delay

uint32 duration
================================================================================
MSG: kortex_driver/GripperCommand

uint32 mode
Gripper gripper
uint32 duration
================================================================================
MSG: kortex_driver/Gripper

Finger[] finger
================================================================================
MSG: kortex_driver/Finger

uint32 finger_identifier
float32 value
================================================================================
MSG: kortex_driver/Base_Stop

================================================================================
MSG: kortex_driver/PreComputedJointTrajectory

uint32 mode
PreComputedJointTrajectoryElement[] trajectory_elements
================================================================================
MSG: kortex_driver/PreComputedJointTrajectoryElement

float32[] joint_angles
float32[] joint_speeds
float32[] joint_accelerations
")

(setf (get kortex_driver::ReadAllMapsResponse :md5sum-) "59991239ce77432a143c9e36e7d95b3d")
(setf (get kortex_driver::ReadAllMapsResponse :datatype-) "kortex_driver/ReadAllMapsResponse")
(setf (get kortex_driver::ReadAllMapsResponse :definition-)
      "MappingHandle input

================================================================================
MSG: kortex_driver/MappingHandle

uint32 identifier
---
MapList output

================================================================================
MSG: kortex_driver/MapList

Map[] map_list
================================================================================
MSG: kortex_driver/Map

MapHandle handle
string name
MapElement[] elements
================================================================================
MSG: kortex_driver/MapHandle

uint32 identifier
uint32 permission
================================================================================
MSG: kortex_driver/MapElement

MapEvent event
Action action
string name
================================================================================
MSG: kortex_driver/MapEvent

string name
MapEvent_events oneof_events
================================================================================
MSG: kortex_driver/MapEvent_events

SafetyEvent[] safety_event
GpioEvent[] gpio_event
ControllerEvent[] controller_event
================================================================================
MSG: kortex_driver/SafetyEvent

SafetyHandle safety_handle
================================================================================
MSG: kortex_driver/SafetyHandle

uint32 identifier
================================================================================
MSG: kortex_driver/GpioEvent

uint32 input_type
uint32 behavior
uint32 input_identifier
================================================================================
MSG: kortex_driver/ControllerEvent

uint32 input_type
uint32 behavior
uint32 input_identifier
================================================================================
MSG: kortex_driver/Action

ActionHandle handle
string name
string application_data
Action_action_parameters oneof_action_parameters
================================================================================
MSG: kortex_driver/ActionHandle

uint32 identifier
uint32 action_type
uint32 permission
================================================================================
MSG: kortex_driver/Action_action_parameters

TwistCommand[] send_twist_command
WrenchCommand[] send_wrench_command
Base_JointSpeeds[] send_joint_speeds
ConstrainedPose[] reach_pose
ConstrainedJointAngles[] reach_joint_angles
uint32[] toggle_admittance_mode
Snapshot[] snapshot
SwitchControlMapping[] switch_control_mapping
uint32[] navigate_joints
uint32[] navigate_mappings
ChangeTwist[] change_twist
ChangeJointSpeeds[] change_joint_speeds
ChangeWrench[] change_wrench
EmergencyStop[] apply_emergency_stop
Faults[] clear_faults
Delay[] delay
ActionHandle[] execute_action
GripperCommand[] send_gripper_command
Base_Stop[] stop_action
PreComputedJointTrajectory[] play_pre_computed_trajectory
================================================================================
MSG: kortex_driver/TwistCommand

uint32 reference_frame
Twist twist
uint32 duration
================================================================================
MSG: kortex_driver/Twist

float32 linear_x
float32 linear_y
float32 linear_z
float32 angular_x
float32 angular_y
float32 angular_z
================================================================================
MSG: kortex_driver/WrenchCommand

uint32 reference_frame
uint32 mode
Wrench wrench
uint32 duration
================================================================================
MSG: kortex_driver/Wrench

float32 force_x
float32 force_y
float32 force_z
float32 torque_x
float32 torque_y
float32 torque_z
================================================================================
MSG: kortex_driver/Base_JointSpeeds

JointSpeed[] joint_speeds
uint32 duration
================================================================================
MSG: kortex_driver/JointSpeed

uint32 joint_identifier
float32 value
uint32 duration
================================================================================
MSG: kortex_driver/ConstrainedPose

Pose target_pose
CartesianTrajectoryConstraint constraint
================================================================================
MSG: kortex_driver/Pose

float32 x
float32 y
float32 z
float32 theta_x
float32 theta_y
float32 theta_z
================================================================================
MSG: kortex_driver/CartesianTrajectoryConstraint

CartesianTrajectoryConstraint_type oneof_type
================================================================================
MSG: kortex_driver/CartesianTrajectoryConstraint_type

CartesianSpeed[] speed
uint32[] duration
================================================================================
MSG: kortex_driver/CartesianSpeed

float32 translation
float32 orientation
================================================================================
MSG: kortex_driver/ConstrainedJointAngles

JointAngles joint_angles
JointTrajectoryConstraint constraint
================================================================================
MSG: kortex_driver/JointAngles

JointAngle[] joint_angles
================================================================================
MSG: kortex_driver/JointAngle

uint32 joint_identifier
float32 value
================================================================================
MSG: kortex_driver/JointTrajectoryConstraint

uint32 type
float32 value
================================================================================
MSG: kortex_driver/Snapshot

uint32 snapshot_type
================================================================================
MSG: kortex_driver/SwitchControlMapping

uint32 controller_identifier
MapGroupHandle map_group_handle
MapHandle map_handle
================================================================================
MSG: kortex_driver/MapGroupHandle

uint32 identifier
uint32 permission
================================================================================
MSG: kortex_driver/ChangeTwist

float32 linear
float32 angular
================================================================================
MSG: kortex_driver/ChangeJointSpeeds

Base_JointSpeeds joint_speeds
================================================================================
MSG: kortex_driver/ChangeWrench

float32 force
float32 torque
================================================================================
MSG: kortex_driver/EmergencyStop

================================================================================
MSG: kortex_driver/Faults

================================================================================
MSG: kortex_driver/Delay

uint32 duration
================================================================================
MSG: kortex_driver/GripperCommand

uint32 mode
Gripper gripper
uint32 duration
================================================================================
MSG: kortex_driver/Gripper

Finger[] finger
================================================================================
MSG: kortex_driver/Finger

uint32 finger_identifier
float32 value
================================================================================
MSG: kortex_driver/Base_Stop

================================================================================
MSG: kortex_driver/PreComputedJointTrajectory

uint32 mode
PreComputedJointTrajectoryElement[] trajectory_elements
================================================================================
MSG: kortex_driver/PreComputedJointTrajectoryElement

float32[] joint_angles
float32[] joint_speeds
float32[] joint_accelerations
")



(provide :kortex_driver/ReadAllMaps "59991239ce77432a143c9e36e7d95b3d")


