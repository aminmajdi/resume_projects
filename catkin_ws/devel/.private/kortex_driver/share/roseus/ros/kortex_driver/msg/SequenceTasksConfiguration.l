;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::SequenceTasksConfiguration)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'SequenceTasksConfiguration (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::SEQUENCETASKSCONFIGURATION")
  (make-package "KORTEX_DRIVER::SEQUENCETASKSCONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude SequenceTasksConfiguration.msg.html


(defclass kortex_driver::SequenceTasksConfiguration
  :super ros::object
  :slots (_sequence_task_handle _sequence_tasks ))

(defmethod kortex_driver::SequenceTasksConfiguration
  (:init
   (&key
    ((:sequence_task_handle __sequence_task_handle) (instance kortex_driver::SequenceTaskHandle :init))
    ((:sequence_tasks __sequence_tasks) (let (r) (dotimes (i 0) (push (instance kortex_driver::SequenceTask :init) r)) r))
    )
   (send-super :init)
   (setq _sequence_task_handle __sequence_task_handle)
   (setq _sequence_tasks __sequence_tasks)
   self)
  (:sequence_task_handle
   (&rest __sequence_task_handle)
   (if (keywordp (car __sequence_task_handle))
       (send* _sequence_task_handle __sequence_task_handle)
     (progn
       (if __sequence_task_handle (setq _sequence_task_handle (car __sequence_task_handle)))
       _sequence_task_handle)))
  (:sequence_tasks
   (&rest __sequence_tasks)
   (if (keywordp (car __sequence_tasks))
       (send* _sequence_tasks __sequence_tasks)
     (progn
       (if __sequence_tasks (setq _sequence_tasks (car __sequence_tasks)))
       _sequence_tasks)))
  (:serialization-length
   ()
   (+
    ;; kortex_driver/SequenceTaskHandle _sequence_task_handle
    (send _sequence_task_handle :serialization-length)
    ;; kortex_driver/SequenceTask[] _sequence_tasks
    (apply #'+ (send-all _sequence_tasks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kortex_driver/SequenceTaskHandle _sequence_task_handle
       (send _sequence_task_handle :serialize s)
     ;; kortex_driver/SequenceTask[] _sequence_tasks
     (write-long (length _sequence_tasks) s)
     (dolist (elem _sequence_tasks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kortex_driver/SequenceTaskHandle _sequence_task_handle
     (send _sequence_task_handle :deserialize buf ptr-) (incf ptr- (send _sequence_task_handle :serialization-length))
   ;; kortex_driver/SequenceTask[] _sequence_tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sequence_tasks (let (r) (dotimes (i n) (push (instance kortex_driver::SequenceTask :init) r)) r))
     (dolist (elem- _sequence_tasks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kortex_driver::SequenceTasksConfiguration :md5sum-) "8cfb4d6d4cf259094a6733c1459e33ad")
(setf (get kortex_driver::SequenceTasksConfiguration :datatype-) "kortex_driver/SequenceTasksConfiguration")
(setf (get kortex_driver::SequenceTasksConfiguration :definition-)
      "
SequenceTaskHandle sequence_task_handle
SequenceTask[] sequence_tasks
================================================================================
MSG: kortex_driver/SequenceTaskHandle

SequenceHandle sequence_handle
uint32 task_index
================================================================================
MSG: kortex_driver/SequenceHandle

uint32 identifier
uint32 permission
================================================================================
MSG: kortex_driver/SequenceTask

uint32 group_identifier
Action action
string application_data
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



(provide :kortex_driver/SequenceTasksConfiguration "8cfb4d6d4cf259094a6733c1459e33ad")


