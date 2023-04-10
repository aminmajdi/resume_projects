;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::OnNotificationControlModeTopic)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'OnNotificationControlModeTopic (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::ONNOTIFICATIONCONTROLMODETOPIC")
  (make-package "KORTEX_DRIVER::ONNOTIFICATIONCONTROLMODETOPIC"))
(unless (find-package "KORTEX_DRIVER::ONNOTIFICATIONCONTROLMODETOPICREQUEST")
  (make-package "KORTEX_DRIVER::ONNOTIFICATIONCONTROLMODETOPICREQUEST"))
(unless (find-package "KORTEX_DRIVER::ONNOTIFICATIONCONTROLMODETOPICRESPONSE")
  (make-package "KORTEX_DRIVER::ONNOTIFICATIONCONTROLMODETOPICRESPONSE"))

(in-package "ROS")





(defclass kortex_driver::OnNotificationControlModeTopicRequest
  :super ros::object
  :slots (_input ))

(defmethod kortex_driver::OnNotificationControlModeTopicRequest
  (:init
   (&key
    ((:input __input) (instance kortex_driver::NotificationOptions :init))
    )
   (send-super :init)
   (setq _input __input)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:serialization-length
   ()
   (+
    ;; kortex_driver/NotificationOptions _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kortex_driver/NotificationOptions _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kortex_driver/NotificationOptions _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass kortex_driver::OnNotificationControlModeTopicResponse
  :super ros::object
  :slots (_output ))

(defmethod kortex_driver::OnNotificationControlModeTopicResponse
  (:init
   (&key
    ((:output __output) (instance kortex_driver::NotificationHandle :init))
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; kortex_driver/NotificationHandle _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kortex_driver/NotificationHandle _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kortex_driver/NotificationHandle _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass kortex_driver::OnNotificationControlModeTopic
  :super ros::object
  :slots ())

(setf (get kortex_driver::OnNotificationControlModeTopic :md5sum-) "6fefdd07c6cb63a94f7b48e7e07e815b")
(setf (get kortex_driver::OnNotificationControlModeTopic :datatype-) "kortex_driver/OnNotificationControlModeTopic")
(setf (get kortex_driver::OnNotificationControlModeTopic :request) kortex_driver::OnNotificationControlModeTopicRequest)
(setf (get kortex_driver::OnNotificationControlModeTopic :response) kortex_driver::OnNotificationControlModeTopicResponse)

(defmethod kortex_driver::OnNotificationControlModeTopicRequest
  (:response () (instance kortex_driver::OnNotificationControlModeTopicResponse :init)))

(setf (get kortex_driver::OnNotificationControlModeTopicRequest :md5sum-) "6fefdd07c6cb63a94f7b48e7e07e815b")
(setf (get kortex_driver::OnNotificationControlModeTopicRequest :datatype-) "kortex_driver/OnNotificationControlModeTopicRequest")
(setf (get kortex_driver::OnNotificationControlModeTopicRequest :definition-)
      "NotificationOptions input

================================================================================
MSG: kortex_driver/NotificationOptions

uint32 type
uint32 rate_m_sec
---
NotificationHandle output

================================================================================
MSG: kortex_driver/NotificationHandle

")

(setf (get kortex_driver::OnNotificationControlModeTopicResponse :md5sum-) "6fefdd07c6cb63a94f7b48e7e07e815b")
(setf (get kortex_driver::OnNotificationControlModeTopicResponse :datatype-) "kortex_driver/OnNotificationControlModeTopicResponse")
(setf (get kortex_driver::OnNotificationControlModeTopicResponse :definition-)
      "NotificationOptions input

================================================================================
MSG: kortex_driver/NotificationOptions

uint32 type
uint32 rate_m_sec
---
NotificationHandle output

================================================================================
MSG: kortex_driver/NotificationHandle

")



(provide :kortex_driver/OnNotificationControlModeTopic "6fefdd07c6cb63a94f7b48e7e07e815b")


