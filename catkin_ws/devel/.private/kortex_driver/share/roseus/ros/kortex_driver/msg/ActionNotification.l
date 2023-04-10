;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::ActionNotification)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'ActionNotification (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::ACTIONNOTIFICATION")
  (make-package "KORTEX_DRIVER::ACTIONNOTIFICATION"))

(in-package "ROS")
;;//! \htmlinclude ActionNotification.msg.html


(defclass kortex_driver::ActionNotification
  :super ros::object
  :slots (_action_event _handle _timestamp _user_handle _abort_details _connection ))

(defmethod kortex_driver::ActionNotification
  (:init
   (&key
    ((:action_event __action_event) 0)
    ((:handle __handle) (instance kortex_driver::ActionHandle :init))
    ((:timestamp __timestamp) (instance kortex_driver::Timestamp :init))
    ((:user_handle __user_handle) (instance kortex_driver::UserProfileHandle :init))
    ((:abort_details __abort_details) 0)
    ((:connection __connection) (instance kortex_driver::Connection :init))
    )
   (send-super :init)
   (setq _action_event (round __action_event))
   (setq _handle __handle)
   (setq _timestamp __timestamp)
   (setq _user_handle __user_handle)
   (setq _abort_details (round __abort_details))
   (setq _connection __connection)
   self)
  (:action_event
   (&optional __action_event)
   (if __action_event (setq _action_event __action_event)) _action_event)
  (:handle
   (&rest __handle)
   (if (keywordp (car __handle))
       (send* _handle __handle)
     (progn
       (if __handle (setq _handle (car __handle)))
       _handle)))
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:user_handle
   (&rest __user_handle)
   (if (keywordp (car __user_handle))
       (send* _user_handle __user_handle)
     (progn
       (if __user_handle (setq _user_handle (car __user_handle)))
       _user_handle)))
  (:abort_details
   (&optional __abort_details)
   (if __abort_details (setq _abort_details __abort_details)) _abort_details)
  (:connection
   (&rest __connection)
   (if (keywordp (car __connection))
       (send* _connection __connection)
     (progn
       (if __connection (setq _connection (car __connection)))
       _connection)))
  (:serialization-length
   ()
   (+
    ;; uint32 _action_event
    4
    ;; kortex_driver/ActionHandle _handle
    (send _handle :serialization-length)
    ;; kortex_driver/Timestamp _timestamp
    (send _timestamp :serialization-length)
    ;; kortex_driver/UserProfileHandle _user_handle
    (send _user_handle :serialization-length)
    ;; uint32 _abort_details
    4
    ;; kortex_driver/Connection _connection
    (send _connection :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _action_event
       (write-long _action_event s)
     ;; kortex_driver/ActionHandle _handle
       (send _handle :serialize s)
     ;; kortex_driver/Timestamp _timestamp
       (send _timestamp :serialize s)
     ;; kortex_driver/UserProfileHandle _user_handle
       (send _user_handle :serialize s)
     ;; uint32 _abort_details
       (write-long _abort_details s)
     ;; kortex_driver/Connection _connection
       (send _connection :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _action_event
     (setq _action_event (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; kortex_driver/ActionHandle _handle
     (send _handle :deserialize buf ptr-) (incf ptr- (send _handle :serialization-length))
   ;; kortex_driver/Timestamp _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; kortex_driver/UserProfileHandle _user_handle
     (send _user_handle :deserialize buf ptr-) (incf ptr- (send _user_handle :serialization-length))
   ;; uint32 _abort_details
     (setq _abort_details (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; kortex_driver/Connection _connection
     (send _connection :deserialize buf ptr-) (incf ptr- (send _connection :serialization-length))
   ;;
   self)
  )

(setf (get kortex_driver::ActionNotification :md5sum-) "0b783b1807e59b154e3f4695d4fecd26")
(setf (get kortex_driver::ActionNotification :datatype-) "kortex_driver/ActionNotification")
(setf (get kortex_driver::ActionNotification :definition-)
      "
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



(provide :kortex_driver/ActionNotification "0b783b1807e59b154e3f4695d4fecd26")


