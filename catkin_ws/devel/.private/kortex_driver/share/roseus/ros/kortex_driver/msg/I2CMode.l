;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::I2CMode)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'I2CMode (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::I2CMODE")
  (make-package "KORTEX_DRIVER::I2CMODE"))

(in-package "ROS")
;;//! \htmlinclude I2CMode.msg.html


(intern "*I2C_MODE_UNSPECIFIED*" (find-package "KORTEX_DRIVER::I2CMODE"))
(shadow '*I2C_MODE_UNSPECIFIED* (find-package "KORTEX_DRIVER::I2CMODE"))
(defconstant kortex_driver::I2CMode::*I2C_MODE_UNSPECIFIED* 0)
(intern "*I2C_MODE_STANDARD*" (find-package "KORTEX_DRIVER::I2CMODE"))
(shadow '*I2C_MODE_STANDARD* (find-package "KORTEX_DRIVER::I2CMODE"))
(defconstant kortex_driver::I2CMode::*I2C_MODE_STANDARD* 1)
(intern "*I2C_MODE_FAST*" (find-package "KORTEX_DRIVER::I2CMODE"))
(shadow '*I2C_MODE_FAST* (find-package "KORTEX_DRIVER::I2CMODE"))
(defconstant kortex_driver::I2CMode::*I2C_MODE_FAST* 2)
(intern "*I2C_MODE_FAST_PLUS*" (find-package "KORTEX_DRIVER::I2CMODE"))
(shadow '*I2C_MODE_FAST_PLUS* (find-package "KORTEX_DRIVER::I2CMODE"))
(defconstant kortex_driver::I2CMode::*I2C_MODE_FAST_PLUS* 3)
(defclass kortex_driver::I2CMode
  :super ros::object
  :slots ())

(defmethod kortex_driver::I2CMode
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

(setf (get kortex_driver::I2CMode :md5sum-) "56d9e828030957dbebbc8d714433e077")
(setf (get kortex_driver::I2CMode :datatype-) "kortex_driver/I2CMode")
(setf (get kortex_driver::I2CMode :definition-)
      "
uint32 I2C_MODE_UNSPECIFIED = 0

uint32 I2C_MODE_STANDARD = 1

uint32 I2C_MODE_FAST = 2

uint32 I2C_MODE_FAST_PLUS = 3

")



(provide :kortex_driver/I2CMode "56d9e828030957dbebbc8d714433e077")


