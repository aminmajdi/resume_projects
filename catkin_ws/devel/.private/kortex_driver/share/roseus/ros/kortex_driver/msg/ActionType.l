;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ActionType)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ActionType (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::ACTIONTYPE")
  (make-package "KORTEX_DRIVER::ACTIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude ActionType.msg.html


(intern "*UNSPECIFIED_ACTION*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*UNSPECIFIED_ACTION* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*UNSPECIFIED_ACTION* 0)
(intern "*SEND_TWIST_COMMAND*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*SEND_TWIST_COMMAND* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*SEND_TWIST_COMMAND* 1)
(intern "*SEND_WRENCH_COMMAND*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*SEND_WRENCH_COMMAND* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*SEND_WRENCH_COMMAND* 2)
(intern "*SEND_JOINT_SPEEDS*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*SEND_JOINT_SPEEDS* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*SEND_JOINT_SPEEDS* 4)
(intern "*REACH_POSE*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*REACH_POSE* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*REACH_POSE* 6)
(intern "*REACH_JOINT_ANGLES*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*REACH_JOINT_ANGLES* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*REACH_JOINT_ANGLES* 7)
(intern "*TOGGLE_ADMITTANCE_MODE*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*TOGGLE_ADMITTANCE_MODE* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*TOGGLE_ADMITTANCE_MODE* 13)
(intern "*SNAPSHOT*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*SNAPSHOT* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*SNAPSHOT* 14)
(intern "*SWITCH_CONTROL_MAPPING*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*SWITCH_CONTROL_MAPPING* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*SWITCH_CONTROL_MAPPING* 16)
(intern "*NAVIGATE_JOINTS*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*NAVIGATE_JOINTS* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*NAVIGATE_JOINTS* 17)
(intern "*NAVIGATE_MAPPINGS*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*NAVIGATE_MAPPINGS* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*NAVIGATE_MAPPINGS* 18)
(intern "*CHANGE_TWIST*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*CHANGE_TWIST* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*CHANGE_TWIST* 22)
(intern "*CHANGE_JOINT_SPEEDS*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*CHANGE_JOINT_SPEEDS* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*CHANGE_JOINT_SPEEDS* 23)
(intern "*CHANGE_WRENCH*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*CHANGE_WRENCH* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*CHANGE_WRENCH* 25)
(intern "*APPLY_EMERGENCY_STOP*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*APPLY_EMERGENCY_STOP* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*APPLY_EMERGENCY_STOP* 28)
(intern "*CLEAR_FAULTS*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*CLEAR_FAULTS* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*CLEAR_FAULTS* 29)
(intern "*TIME_DELAY*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*TIME_DELAY* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*TIME_DELAY* 31)
(intern "*EXECUTE_ACTION*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*EXECUTE_ACTION* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*EXECUTE_ACTION* 32)
(intern "*SEND_GRIPPER_COMMAND*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*SEND_GRIPPER_COMMAND* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*SEND_GRIPPER_COMMAND* 33)
(intern "*STOP_ACTION*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*STOP_ACTION* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*STOP_ACTION* 35)
(intern "*PLAY_PRE_COMPUTED_TRAJECTORY*" (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(shadow '*PLAY_PRE_COMPUTED_TRAJECTORY* (find-package "KORTEX_DRIVER::ACTIONTYPE"))
(defconstant kortex_driver::ActionType::*PLAY_PRE_COMPUTED_TRAJECTORY* 39)
(defclass kortex_driver::ActionType
  :super ros::object
  :slots ())

(defmethod kortex_driver::ActionType
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get kortex_driver::ActionType :md5sum-) "e2090a0cda2c1161052081f00045b76f")
(setf (get kortex_driver::ActionType :datatype-) "kortex_driver/ActionType")
(setf (get kortex_driver::ActionType :definition-)
      "
uint32 UNSPECIFIED_ACTION = 0

uint32 SEND_TWIST_COMMAND = 1

uint32 SEND_WRENCH_COMMAND = 2

uint32 SEND_JOINT_SPEEDS = 4

uint32 REACH_POSE = 6

uint32 REACH_JOINT_ANGLES = 7

uint32 TOGGLE_ADMITTANCE_MODE = 13

uint32 SNAPSHOT = 14

uint32 SWITCH_CONTROL_MAPPING = 16

uint32 NAVIGATE_JOINTS = 17

uint32 NAVIGATE_MAPPINGS = 18

uint32 CHANGE_TWIST = 22

uint32 CHANGE_JOINT_SPEEDS = 23

uint32 CHANGE_WRENCH = 25

uint32 APPLY_EMERGENCY_STOP = 28

uint32 CLEAR_FAULTS = 29

uint32 TIME_DELAY = 31

uint32 EXECUTE_ACTION = 32

uint32 SEND_GRIPPER_COMMAND = 33

uint32 STOP_ACTION = 35

uint32 PLAY_PRE_COMPUTED_TRAJECTORY = 39

")



(provide :kortex_driver/ActionType "e2090a0cda2c1161052081f00045b76f")


