;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ActionList)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ActionList (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::ACTIONLIST")
  (make-package "KORTEX_DRIVER::ACTIONLIST"))

(in-package "ROS")
;;//! \htmlinclude ActionList.msg.html


(defclass kortex_driver::ActionList
  :super ros::object
  :slots (_action_list ))

(defmethod kortex_driver::ActionList
  (:init
   (&key
    ((:action_list __action_list) (let (r) (dotimes (i 0) (push (instance kortex_driver::Action :init) r)) r))
    )
   (send-super :init)
   (setq _action_list __action_list)
   self)
  (:action_list
   (&rest __action_list)
   (if (keywordp (car __action_list))
       (send* _action_list __action_list)
     (progn
       (if __action_list (setq _action_list (car __action_list)))
       _action_list)))
  (:serialization-length
   ()
   (+
    ;; kortex_driver/Action[] _action_list
    (apply #'+ (send-all _action_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kortex_driver/Action[] _action_list
     (write-long (length _action_list) s)
     (dolist (elem _action_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kortex_driver/Action[] _action_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action_list (let (r) (dotimes (i n) (push (instance kortex_driver::Action :init) r)) r))
     (dolist (elem- _action_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kortex_driver::ActionList :md5sum-) "d1107f23aa321f27a7d93df51b7f542a")
(setf (get kortex_driver::ActionList :datatype-) "kortex_driver/ActionList")
(setf (get kortex_driver::ActionList :definition-)
      "
Action[] action_list
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
MSG: kortex_driver/MapHandle

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
float32 time_from_start
")



(provide :kortex_driver/ActionList "d1107f23aa321f27a7d93df51b7f542a")


