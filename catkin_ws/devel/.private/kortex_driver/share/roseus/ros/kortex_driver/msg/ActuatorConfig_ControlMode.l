;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ActuatorConfig_ControlMode)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ActuatorConfig_ControlMode (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE")
  (make-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude ActuatorConfig_ControlMode.msg.html


(intern "*NONE*" (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(shadow '*NONE* (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ActuatorConfig_ControlMode::*NONE* 0)
(intern "*POSITION*" (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(shadow '*POSITION* (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ActuatorConfig_ControlMode::*POSITION* 1)
(intern "*VELOCITY*" (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(shadow '*VELOCITY* (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ActuatorConfig_ControlMode::*VELOCITY* 2)
(intern "*TORQUE*" (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(shadow '*TORQUE* (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ActuatorConfig_ControlMode::*TORQUE* 3)
(intern "*CURRENT*" (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(shadow '*CURRENT* (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ActuatorConfig_ControlMode::*CURRENT* 4)
(intern "*CUSTOM*" (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(shadow '*CUSTOM* (find-package "KORTEX_DRIVER::ACTUATORCONFIG_CONTROLMODE"))
(defconstant kortex_driver::ActuatorConfig_ControlMode::*CUSTOM* 5)
(defclass kortex_driver::ActuatorConfig_ControlMode
  :super ros::object
  :slots ())

(defmethod kortex_driver::ActuatorConfig_ControlMode
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

(setf (get kortex_driver::ActuatorConfig_ControlMode :md5sum-) "4631dafc32c722e97dd50884c1bede6d")
(setf (get kortex_driver::ActuatorConfig_ControlMode :datatype-) "kortex_driver/ActuatorConfig_ControlMode")
(setf (get kortex_driver::ActuatorConfig_ControlMode :definition-)
      "
uint32 NONE = 0

uint32 POSITION = 1

uint32 VELOCITY = 2

uint32 TORQUE = 3

uint32 CURRENT = 4

uint32 CUSTOM = 5

")



(provide :kortex_driver/ActuatorConfig_ControlMode "4631dafc32c722e97dd50884c1bede6d")


