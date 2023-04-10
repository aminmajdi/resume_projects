;; Auto-generated. Do not edit!


(when (boundp 'kinova_msgs::PoseVelocityWithFingerVelocity)
  (if (not (find-package "KINOVA_MSGS"))
    (make-package "KINOVA_MSGS"))
  (shadow 'PoseVelocityWithFingerVelocity (find-package "KINOVA_MSGS")))
(unless (find-package "KINOVA_MSGS::POSEVELOCITYWITHFINGERVELOCITY")
  (make-package "KINOVA_MSGS::POSEVELOCITYWITHFINGERVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude PoseVelocityWithFingerVelocity.msg.html


(defclass kinova_msgs::PoseVelocityWithFingerVelocity
  :super ros::object
  :slots (_twist_linear_x _twist_linear_y _twist_linear_z _twist_angular_x _twist_angular_y _twist_angular_z _finger1 _finger2 _finger3 ))

(defmethod kinova_msgs::PoseVelocityWithFingerVelocity
  (:init
   (&key
    ((:twist_linear_x __twist_linear_x) 0.0)
    ((:twist_linear_y __twist_linear_y) 0.0)
    ((:twist_linear_z __twist_linear_z) 0.0)
    ((:twist_angular_x __twist_angular_x) 0.0)
    ((:twist_angular_y __twist_angular_y) 0.0)
    ((:twist_angular_z __twist_angular_z) 0.0)
    ((:finger1 __finger1) 0.0)
    ((:finger2 __finger2) 0.0)
    ((:finger3 __finger3) 0.0)
    )
   (send-super :init)
   (setq _twist_linear_x (float __twist_linear_x))
   (setq _twist_linear_y (float __twist_linear_y))
   (setq _twist_linear_z (float __twist_linear_z))
   (setq _twist_angular_x (float __twist_angular_x))
   (setq _twist_angular_y (float __twist_angular_y))
   (setq _twist_angular_z (float __twist_angular_z))
   (setq _finger1 (float __finger1))
   (setq _finger2 (float __finger2))
   (setq _finger3 (float __finger3))
   self)
  (:twist_linear_x
   (&optional __twist_linear_x)
   (if __twist_linear_x (setq _twist_linear_x __twist_linear_x)) _twist_linear_x)
  (:twist_linear_y
   (&optional __twist_linear_y)
   (if __twist_linear_y (setq _twist_linear_y __twist_linear_y)) _twist_linear_y)
  (:twist_linear_z
   (&optional __twist_linear_z)
   (if __twist_linear_z (setq _twist_linear_z __twist_linear_z)) _twist_linear_z)
  (:twist_angular_x
   (&optional __twist_angular_x)
   (if __twist_angular_x (setq _twist_angular_x __twist_angular_x)) _twist_angular_x)
  (:twist_angular_y
   (&optional __twist_angular_y)
   (if __twist_angular_y (setq _twist_angular_y __twist_angular_y)) _twist_angular_y)
  (:twist_angular_z
   (&optional __twist_angular_z)
   (if __twist_angular_z (setq _twist_angular_z __twist_angular_z)) _twist_angular_z)
  (:finger1
   (&optional __finger1)
   (if __finger1 (setq _finger1 __finger1)) _finger1)
  (:finger2
   (&optional __finger2)
   (if __finger2 (setq _finger2 __finger2)) _finger2)
  (:finger3
   (&optional __finger3)
   (if __finger3 (setq _finger3 __finger3)) _finger3)
  (:serialization-length
   ()
   (+
    ;; float32 _twist_linear_x
    4
    ;; float32 _twist_linear_y
    4
    ;; float32 _twist_linear_z
    4
    ;; float32 _twist_angular_x
    4
    ;; float32 _twist_angular_y
    4
    ;; float32 _twist_angular_z
    4
    ;; float32 _finger1
    4
    ;; float32 _finger2
    4
    ;; float32 _finger3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _twist_linear_x
       (sys::poke _twist_linear_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _twist_linear_y
       (sys::poke _twist_linear_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _twist_linear_z
       (sys::poke _twist_linear_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _twist_angular_x
       (sys::poke _twist_angular_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _twist_angular_y
       (sys::poke _twist_angular_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _twist_angular_z
       (sys::poke _twist_angular_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finger1
       (sys::poke _finger1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finger2
       (sys::poke _finger2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finger3
       (sys::poke _finger3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _twist_linear_x
     (setq _twist_linear_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _twist_linear_y
     (setq _twist_linear_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _twist_linear_z
     (setq _twist_linear_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _twist_angular_x
     (setq _twist_angular_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _twist_angular_y
     (setq _twist_angular_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _twist_angular_z
     (setq _twist_angular_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finger1
     (setq _finger1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finger2
     (setq _finger2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finger3
     (setq _finger3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kinova_msgs::PoseVelocityWithFingerVelocity :md5sum-) "d8789bad3911d8a482fde371a6b8abac")
(setf (get kinova_msgs::PoseVelocityWithFingerVelocity :datatype-) "kinova_msgs/PoseVelocityWithFingerVelocity")
(setf (get kinova_msgs::PoseVelocityWithFingerVelocity :definition-)
      "float32 twist_linear_x
float32 twist_linear_y
float32 twist_linear_z
float32 twist_angular_x
float32 twist_angular_y
float32 twist_angular_z
float32 finger1
float32 finger2
float32 finger3

")



(provide :kinova_msgs/PoseVelocityWithFingerVelocity "d8789bad3911d8a482fde371a6b8abac")


