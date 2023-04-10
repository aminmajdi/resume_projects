;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::NetworkEvent)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'NetworkEvent (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::NETWORKEVENT")
  (make-package "KORTEX_DRIVER::NETWORKEVENT"))

(in-package "ROS")
;;//! \htmlinclude NetworkEvent.msg.html


(intern "*UNSPECIFIED_NETWORK_EVENT*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*UNSPECIFIED_NETWORK_EVENT* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*UNSPECIFIED_NETWORK_EVENT* 0)
(intern "*WIFI_CONNECTED*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_CONNECTED* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_CONNECTED* 1)
(intern "*WIFI_DISCONNECTED*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_DISCONNECTED* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_DISCONNECTED* 2)
(intern "*WIFI_SCAN_STARTED*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_SCAN_STARTED* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_SCAN_STARTED* 3)
(intern "*WIFI_SCAN_RESULTS*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_SCAN_RESULTS* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_SCAN_RESULTS* 4)
(intern "*WIFI_SCAN_FAILED*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_SCAN_FAILED* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_SCAN_FAILED* 5)
(intern "*WIFI_NOT_FOUND*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_NOT_FOUND* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_NOT_FOUND* 6)
(intern "*WIFI_ASSOC_REJECTED*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_ASSOC_REJECTED* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_ASSOC_REJECTED* 7)
(intern "*WIFI_AUTH_WRONG_KEY*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_AUTH_WRONG_KEY* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_AUTH_WRONG_KEY* 8)
(intern "*WIFI_AUTH_CONN_FAILED*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_AUTH_CONN_FAILED* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_AUTH_CONN_FAILED* 9)
(intern "*WIFI_AUTH_FAILED*" (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(shadow '*WIFI_AUTH_FAILED* (find-package "KORTEX_DRIVER::NETWORKEVENT"))
(defconstant kortex_driver::NetworkEvent::*WIFI_AUTH_FAILED* 10)
(defclass kortex_driver::NetworkEvent
  :super ros::object
  :slots ())

(defmethod kortex_driver::NetworkEvent
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

(setf (get kortex_driver::NetworkEvent :md5sum-) "14c1c01d4da04f2a97e77e3914b7faf6")
(setf (get kortex_driver::NetworkEvent :datatype-) "kortex_driver/NetworkEvent")
(setf (get kortex_driver::NetworkEvent :definition-)
      "
uint32 UNSPECIFIED_NETWORK_EVENT = 0

uint32 WIFI_CONNECTED = 1

uint32 WIFI_DISCONNECTED = 2

uint32 WIFI_SCAN_STARTED = 3

uint32 WIFI_SCAN_RESULTS = 4

uint32 WIFI_SCAN_FAILED = 5

uint32 WIFI_NOT_FOUND = 6

uint32 WIFI_ASSOC_REJECTED = 7

uint32 WIFI_AUTH_WRONG_KEY = 8

uint32 WIFI_AUTH_CONN_FAILED = 9

uint32 WIFI_AUTH_FAILED = 10

")



(provide :kortex_driver/NetworkEvent "14c1c01d4da04f2a97e77e3914b7faf6")


