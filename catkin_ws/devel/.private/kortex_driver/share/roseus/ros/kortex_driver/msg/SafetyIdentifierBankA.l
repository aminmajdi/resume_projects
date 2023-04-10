;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::SafetyIdentifierBankA)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'SafetyIdentifierBankA (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA")
  (make-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))

(in-package "ROS")
;;//! \htmlinclude SafetyIdentifierBankA.msg.html


(intern "*UNSPECIFIED_ACTUATOR_SAFETY_IDENTIFIER_BANK_A*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*UNSPECIFIED_ACTUATOR_SAFETY_IDENTIFIER_BANK_A* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*UNSPECIFIED_ACTUATOR_SAFETY_IDENTIFIER_BANK_A* 0)
(intern "*FOLLOWING_ERROR*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*FOLLOWING_ERROR* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*FOLLOWING_ERROR* 1)
(intern "*MAXIMUM_VELOCITY*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MAXIMUM_VELOCITY* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MAXIMUM_VELOCITY* 2)
(intern "*JOINT_LIMIT_HIGH*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*JOINT_LIMIT_HIGH* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*JOINT_LIMIT_HIGH* 4)
(intern "*JOINT_LIMIT_LOW*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*JOINT_LIMIT_LOW* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*JOINT_LIMIT_LOW* 8)
(intern "*STRAIN_GAUGE_MISMATCH*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*STRAIN_GAUGE_MISMATCH* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*STRAIN_GAUGE_MISMATCH* 16)
(intern "*MAXIMUM_TORQUE*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MAXIMUM_TORQUE* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MAXIMUM_TORQUE* 32)
(intern "*UNRELIABLE_ABSOLUTE_POSITION*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*UNRELIABLE_ABSOLUTE_POSITION* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*UNRELIABLE_ABSOLUTE_POSITION* 64)
(intern "*MAGNETIC_POSITION*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MAGNETIC_POSITION* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MAGNETIC_POSITION* 128)
(intern "*HALL_POSITION*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*HALL_POSITION* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*HALL_POSITION* 256)
(intern "*HALL_SEQUENCE*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*HALL_SEQUENCE* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*HALL_SEQUENCE* 512)
(intern "*INPUT_ENCODER_HALL_MISMATCH*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*INPUT_ENCODER_HALL_MISMATCH* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*INPUT_ENCODER_HALL_MISMATCH* 1024)
(intern "*INPUT_ENCODER_INDEX_MISMATCH*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*INPUT_ENCODER_INDEX_MISMATCH* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*INPUT_ENCODER_INDEX_MISMATCH* 2048)
(intern "*INPUT_ENCODER_MAGNETIC_MISMATCH*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*INPUT_ENCODER_MAGNETIC_MISMATCH* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*INPUT_ENCODER_MAGNETIC_MISMATCH* 4096)
(intern "*MAXIMUM_MOTOR_CURRENT*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MAXIMUM_MOTOR_CURRENT* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MAXIMUM_MOTOR_CURRENT* 8192)
(intern "*MOTOR_CURRENT_MISMATCH*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MOTOR_CURRENT_MISMATCH* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MOTOR_CURRENT_MISMATCH* 16384)
(intern "*MAXIMUM_VOLTAGE*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MAXIMUM_VOLTAGE* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MAXIMUM_VOLTAGE* 32768)
(intern "*MINIMUM_VOLTAGE*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MINIMUM_VOLTAGE* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MINIMUM_VOLTAGE* 65536)
(intern "*MAXIMUM_MOTOR_TEMPERATURE*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MAXIMUM_MOTOR_TEMPERATURE* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MAXIMUM_MOTOR_TEMPERATURE* 131072)
(intern "*MAXIMUM_CORE_TEMPERATURE*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MAXIMUM_CORE_TEMPERATURE* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MAXIMUM_CORE_TEMPERATURE* 262144)
(intern "*NON_VOLATILE_MEMORY_CORRUPTED*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*NON_VOLATILE_MEMORY_CORRUPTED* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*NON_VOLATILE_MEMORY_CORRUPTED* 524288)
(intern "*MOTOR_DRIVER_FAULT*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*MOTOR_DRIVER_FAULT* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*MOTOR_DRIVER_FAULT* 1048576)
(intern "*EMERGENCY_LINE_ASSERTED*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*EMERGENCY_LINE_ASSERTED* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*EMERGENCY_LINE_ASSERTED* 2097152)
(intern "*COMMUNICATION_TICK_LOST*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*COMMUNICATION_TICK_LOST* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*COMMUNICATION_TICK_LOST* 4194304)
(intern "*WATCHDOG_TRIGGERED*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*WATCHDOG_TRIGGERED* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*WATCHDOG_TRIGGERED* 8388608)
(intern "*UNRELIABLE_CAPACITIVE_SENSOR*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*UNRELIABLE_CAPACITIVE_SENSOR* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*UNRELIABLE_CAPACITIVE_SENSOR* 16777216)
(intern "*UNEXPECTED_GEAR_RATIO*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*UNEXPECTED_GEAR_RATIO* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*UNEXPECTED_GEAR_RATIO* 33554432)
(intern "*HALL_MAGNETIC_MISMATCH*" (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(shadow '*HALL_MAGNETIC_MISMATCH* (find-package "KORTEX_DRIVER::SAFETYIDENTIFIERBANKA"))
(defconstant kortex_driver::SafetyIdentifierBankA::*HALL_MAGNETIC_MISMATCH* 67108864)
(defclass kortex_driver::SafetyIdentifierBankA
  :super ros::object
  :slots ())

(defmethod kortex_driver::SafetyIdentifierBankA
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

(setf (get kortex_driver::SafetyIdentifierBankA :md5sum-) "b1876cb37822156652f9b965a67d4838")
(setf (get kortex_driver::SafetyIdentifierBankA :datatype-) "kortex_driver/SafetyIdentifierBankA")
(setf (get kortex_driver::SafetyIdentifierBankA :definition-)
      "
uint32 UNSPECIFIED_ACTUATOR_SAFETY_IDENTIFIER_BANK_A = 0

uint32 FOLLOWING_ERROR = 1

uint32 MAXIMUM_VELOCITY = 2

uint32 JOINT_LIMIT_HIGH = 4

uint32 JOINT_LIMIT_LOW = 8

uint32 STRAIN_GAUGE_MISMATCH = 16

uint32 MAXIMUM_TORQUE = 32

uint32 UNRELIABLE_ABSOLUTE_POSITION = 64

uint32 MAGNETIC_POSITION = 128

uint32 HALL_POSITION = 256

uint32 HALL_SEQUENCE = 512

uint32 INPUT_ENCODER_HALL_MISMATCH = 1024

uint32 INPUT_ENCODER_INDEX_MISMATCH = 2048

uint32 INPUT_ENCODER_MAGNETIC_MISMATCH = 4096

uint32 MAXIMUM_MOTOR_CURRENT = 8192

uint32 MOTOR_CURRENT_MISMATCH = 16384

uint32 MAXIMUM_VOLTAGE = 32768

uint32 MINIMUM_VOLTAGE = 65536

uint32 MAXIMUM_MOTOR_TEMPERATURE = 131072

uint32 MAXIMUM_CORE_TEMPERATURE = 262144

uint32 NON_VOLATILE_MEMORY_CORRUPTED = 524288

uint32 MOTOR_DRIVER_FAULT = 1048576

uint32 EMERGENCY_LINE_ASSERTED = 2097152

uint32 COMMUNICATION_TICK_LOST = 4194304

uint32 WATCHDOG_TRIGGERED = 8388608

uint32 UNRELIABLE_CAPACITIVE_SENSOR = 16777216

uint32 UNEXPECTED_GEAR_RATIO = 33554432

uint32 HALL_MAGNETIC_MISMATCH = 67108864

")



(provide :kortex_driver/SafetyIdentifierBankA "b1876cb37822156652f9b965a67d4838")


