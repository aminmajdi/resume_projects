;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ActionEvent)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ActionEvent (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::ACTIONEVENT")
  (make-package "KORTEX_DRIVER::ACTIONEVENT"))

(in-package "ROS")
;;//! \htmlinclude ActionEvent.msg.html


(intern "*UNSPECIFIED_ACTION_EVENT*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*UNSPECIFIED_ACTION_EVENT* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*UNSPECIFIED_ACTION_EVENT* 0)
(intern "*ACTION_END*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_END* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_END* 1)
(intern "*ACTION_ABORT*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_ABORT* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_ABORT* 2)
(intern "*ACTION_PAUSE*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_PAUSE* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_PAUSE* 3)
(intern "*ACTION_START*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_START* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_START* 4)
(intern "*ACTION_PREPROCESS_START*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_PREPROCESS_START* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_PREPROCESS_START* 5)
(intern "*ACTION_PREPROCESS_ABORT*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_PREPROCESS_ABORT* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_PREPROCESS_ABORT* 6)
(intern "*ACTION_PREPROCESS_END*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_PREPROCESS_END* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_PREPROCESS_END* 7)
(intern "*ACTION_POSTPROCESS_START*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_POSTPROCESS_START* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_POSTPROCESS_START* 8)
(intern "*ACTION_POSTPROCESS_ABORT*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_POSTPROCESS_ABORT* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_POSTPROCESS_ABORT* 9)
(intern "*ACTION_POSTPROCESS_END*" (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(shadow '*ACTION_POSTPROCESS_END* (find-package "KORTEX_DRIVER::ACTIONEVENT"))
(defconstant kortex_driver::ActionEvent::*ACTION_POSTPROCESS_END* 10)
(defclass kortex_driver::ActionEvent
  :super ros::object
  :slots ())

(defmethod kortex_driver::ActionEvent
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

(setf (get kortex_driver::ActionEvent :md5sum-) "9c0e10f0c6e64a798ab960bfa608ac72")
(setf (get kortex_driver::ActionEvent :datatype-) "kortex_driver/ActionEvent")
(setf (get kortex_driver::ActionEvent :definition-)
      "
uint32 UNSPECIFIED_ACTION_EVENT = 0

uint32 ACTION_END = 1

uint32 ACTION_ABORT = 2

uint32 ACTION_PAUSE = 3

uint32 ACTION_START = 4

uint32 ACTION_PREPROCESS_START = 5

uint32 ACTION_PREPROCESS_ABORT = 6

uint32 ACTION_PREPROCESS_END = 7

uint32 ACTION_POSTPROCESS_START = 8

uint32 ACTION_POSTPROCESS_ABORT = 9

uint32 ACTION_POSTPROCESS_END = 10

")



(provide :kortex_driver/ActionEvent "9c0e10f0c6e64a798ab960bfa608ac72")


