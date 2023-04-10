;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::GpioBehavior)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'GpioBehavior (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::GPIOBEHAVIOR")
  (make-package "KORTEX_DRIVER::GPIOBEHAVIOR"))

(in-package "ROS")
;;//! \htmlinclude GpioBehavior.msg.html


(intern "*UNSPECIFIED_GPIO_BEHAVIOR*" (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(shadow '*UNSPECIFIED_GPIO_BEHAVIOR* (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(defconstant kortex_driver::GpioBehavior::*UNSPECIFIED_GPIO_BEHAVIOR* 0)
(intern "*GPIO_FALLING*" (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(shadow '*GPIO_FALLING* (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(defconstant kortex_driver::GpioBehavior::*GPIO_FALLING* 1)
(intern "*GPIO_RISING*" (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(shadow '*GPIO_RISING* (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(defconstant kortex_driver::GpioBehavior::*GPIO_RISING* 2)
(intern "*GPIO_PULSE_LOW*" (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(shadow '*GPIO_PULSE_LOW* (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(defconstant kortex_driver::GpioBehavior::*GPIO_PULSE_LOW* 3)
(intern "*GPIO_PULSE_HIGH*" (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(shadow '*GPIO_PULSE_HIGH* (find-package "KORTEX_DRIVER::GPIOBEHAVIOR"))
(defconstant kortex_driver::GpioBehavior::*GPIO_PULSE_HIGH* 4)
(defclass kortex_driver::GpioBehavior
  :super ros::object
  :slots ())

(defmethod kortex_driver::GpioBehavior
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

(setf (get kortex_driver::GpioBehavior :md5sum-) "bab6a79d9354d811892ee96dadfee3b4")
(setf (get kortex_driver::GpioBehavior :datatype-) "kortex_driver/GpioBehavior")
(setf (get kortex_driver::GpioBehavior :definition-)
      "
uint32 UNSPECIFIED_GPIO_BEHAVIOR = 0

uint32 GPIO_FALLING = 1

uint32 GPIO_RISING = 2

uint32 GPIO_PULSE_LOW = 3

uint32 GPIO_PULSE_HIGH = 4

")



(provide :kortex_driver/GpioBehavior "bab6a79d9354d811892ee96dadfee3b4")


