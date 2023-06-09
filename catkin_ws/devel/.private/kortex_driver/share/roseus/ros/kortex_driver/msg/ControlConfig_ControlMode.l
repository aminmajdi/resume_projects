;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ControlConfig_ControlMode)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ControlConfig_ControlMode (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE")
  (make-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude ControlConfig_ControlMode.msg.html


(intern "*UNSPECIFIED_CONTROL_MODE*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*UNSPECIFIED_CONTROL_MODE* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*UNSPECIFIED_CONTROL_MODE* 0)
(intern "*ANGULAR_JOYSTICK*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*ANGULAR_JOYSTICK* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*ANGULAR_JOYSTICK* 1)
(intern "*CARTESIAN_JOYSTICK*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*CARTESIAN_JOYSTICK* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*CARTESIAN_JOYSTICK* 2)
(intern "*ANGULAR_TRAJECTORY*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*ANGULAR_TRAJECTORY* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*ANGULAR_TRAJECTORY* 4)
(intern "*CARTESIAN_TRAJECTORY*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*CARTESIAN_TRAJECTORY* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*CARTESIAN_TRAJECTORY* 5)
(intern "*CARTESIAN_ADMITTANCE*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*CARTESIAN_ADMITTANCE* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*CARTESIAN_ADMITTANCE* 6)
(intern "*JOINT_ADMITTANCE*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*JOINT_ADMITTANCE* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*JOINT_ADMITTANCE* 7)
(intern "*NULL_SPACE_ADMITTANCE*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*NULL_SPACE_ADMITTANCE* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*NULL_SPACE_ADMITTANCE* 8)
(intern "*FORCE_CONTROL*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*FORCE_CONTROL* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*FORCE_CONTROL* 10)
(intern "*FORCE_CONTROL_MOTION_RESTRICTED*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*FORCE_CONTROL_MOTION_RESTRICTED* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*FORCE_CONTROL_MOTION_RESTRICTED* 11)
(intern "*IDLE*" (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(shadow '*IDLE* (find-package "KORTEX_DRIVER::CONTROLCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ControlConfig_ControlMode::*IDLE* 13)
(defclass kortex_driver::ControlConfig_ControlMode
  :super ros::object
  :slots ())

(defmethod kortex_driver::ControlConfig_ControlMode
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

(setf (get kortex_driver::ControlConfig_ControlMode :md5sum-) "027ce394a2c0dcd8cf27153deda7b144")
(setf (get kortex_driver::ControlConfig_ControlMode :datatype-) "kortex_driver/ControlConfig_ControlMode")
(setf (get kortex_driver::ControlConfig_ControlMode :definition-)
      "
uint32 UNSPECIFIED_CONTROL_MODE = 0

uint32 ANGULAR_JOYSTICK = 1

uint32 CARTESIAN_JOYSTICK = 2

uint32 ANGULAR_TRAJECTORY = 4

uint32 CARTESIAN_TRAJECTORY = 5

uint32 CARTESIAN_ADMITTANCE = 6

uint32 JOINT_ADMITTANCE = 7

uint32 NULL_SPACE_ADMITTANCE = 8

uint32 FORCE_CONTROL = 10

uint32 FORCE_CONTROL_MOTION_RESTRICTED = 11

uint32 IDLE = 13

")



(provide :kortex_driver/ControlConfig_ControlMode "027ce394a2c0dcd8cf27153deda7b144")


