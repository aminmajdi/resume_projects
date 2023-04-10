;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ActionNotificationList)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ActionNotificationList (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::ACTIONNOTIFICATIONLIST")
  (make-package "KORTEX_DRIVER::ACTIONNOTIFICATIONLIST"))

(in-package "ROS")
;;//! \htmlinclude ActionNotificationList.msg.html


(defclass kortex_driver::ActionNotificationList
  :super ros::object
  :slots (_notifications ))

(defmethod kortex_driver::ActionNotificationList
  (:init
   (&key
    ((:notifications __notifications) (let (r) (dotimes (i 0) (push (instance kortex_driver::ActionNotification :init) r)) r))
    )
   (send-super :init)
   (setq _notifications __notifications)
   self)
  (:notifications
   (&rest __notifications)
   (if (keywordp (car __notifications))
       (send* _notifications __notifications)
     (progn
       (if __notifications (setq _notifications (car __notifications)))
       _notifications)))
  (:serialization-length
   ()
   (+
    ;; kortex_driver/ActionNotification[] _notifications
    (apply #'+ (send-all _notifications :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kortex_driver/ActionNotification[] _notifications
     (write-long (length _notifications) s)
     (dolist (elem _notifications)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kortex_driver/ActionNotification[] _notifications
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _notifications (let (r) (dotimes (i n) (push (instance kortex_driver::ActionNotification :init) r)) r))
     (dolist (elem- _notifications)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kortex_driver::ActionNotificationList :md5sum-) "3f8b2186f9b7e2a63c203daafc952884")
(setf (get kortex_driver::ActionNotificationList :datatype-) "kortex_driver/ActionNotificationList")
(setf (get kortex_driver::ActionNotificationList :definition-)
      "
ActionNotification[] notifications
================================================================================
MSG: kortex_driver/ActionNotification

uint32 action_event
ActionHandle handle
Timestamp timestamp
UserProfileHandle user_handle
uint32 abort_details
Connection connection
================================================================================
MSG: kortex_driver/ActionHandle

uint32 identifier
uint32 action_type
uint32 permission
================================================================================
MSG: kortex_driver/Timestamp

uint32 sec
uint32 usec
================================================================================
MSG: kortex_driver/UserProfileHandle

uint32 identifier
uint32 permission
================================================================================
MSG: kortex_driver/Connection

UserProfileHandle user_handle
string connection_information
uint32 connection_identifier
")



(provide :kortex_driver/ActionNotificationList "3f8b2186f9b7e2a63c203daafc952884")


