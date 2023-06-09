;; Auto-generated. Do not edit!


(when (boundp 'kortex_driver::TrajectoryErrorType)
  (if (not (find-package "KORTEX_DRIVER"))
    (make-package "KORTEX_DRIVER"))
  (shadow 'TrajectoryErrorType (find-package "KORTEX_DRIVER")))
(unless (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE")
  (make-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryErrorType.msg.html


(intern "*TRAJECTORY_ERROR_TYPE_UNSPECIFIED*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_UNSPECIFIED* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_UNSPECIFIED* 0)
(intern "*TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE* 1)
(intern "*TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH* 2)
(intern "*TRAJECTORY_ERROR_TYPE_INVALID_DURATION*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_INVALID_DURATION* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_INVALID_DURATION* 3)
(intern "*TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE* 4)
(intern "*TRAJECTORY_ERROR_TYPE_INVALID_SPEED*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_INVALID_SPEED* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_INVALID_SPEED* 5)
(intern "*TRAJECTORY_ERROR_TYPE_LARGE_SPEED*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_LARGE_SPEED* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_LARGE_SPEED* 6)
(intern "*TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION* 7)
(intern "*TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP* 8)
(intern "*TRAJECTORY_ERROR_TYPE_LARGE_SIZE*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_LARGE_SIZE* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_LARGE_SIZE* 9)
(intern "*TRAJECTORY_ERROR_TYPE_WRONG_MODE*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_WRONG_MODE* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_WRONG_MODE* 10)
(intern "*TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT* 11)
(intern "*TRAJECTORY_ERROR_TYPE_FILE_ERROR*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_FILE_ERROR* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_FILE_ERROR* 12)
(intern "*TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY* 13)
(intern "*TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ* 14)
(intern "*TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING* 15)
(intern "*TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT* 16)
(intern "*TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START* 17)
(intern "*TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED* 18)
(intern "*TRAJECTORY_ERROR_TYPE_INVALID_POSITION*" (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(shadow '*TRAJECTORY_ERROR_TYPE_INVALID_POSITION* (find-package "KORTEX_DRIVER::TRAJECTORYERRORTYPE"))
(defconstant kortex_driver::TrajectoryErrorType::*TRAJECTORY_ERROR_TYPE_INVALID_POSITION* 19)
(defclass kortex_driver::TrajectoryErrorType
  :super ros::object
  :slots ())

(defmethod kortex_driver::TrajectoryErrorType
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

(setf (get kortex_driver::TrajectoryErrorType :md5sum-) "13800948a2dcbdce2d2c2bb24af1783c")
(setf (get kortex_driver::TrajectoryErrorType :datatype-) "kortex_driver/TrajectoryErrorType")
(setf (get kortex_driver::TrajectoryErrorType :definition-)
      "
uint32 TRAJECTORY_ERROR_TYPE_UNSPECIFIED = 0

uint32 TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE = 1

uint32 TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH = 2

uint32 TRAJECTORY_ERROR_TYPE_INVALID_DURATION = 3

uint32 TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE = 4

uint32 TRAJECTORY_ERROR_TYPE_INVALID_SPEED = 5

uint32 TRAJECTORY_ERROR_TYPE_LARGE_SPEED = 6

uint32 TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION = 7

uint32 TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP = 8

uint32 TRAJECTORY_ERROR_TYPE_LARGE_SIZE = 9

uint32 TRAJECTORY_ERROR_TYPE_WRONG_MODE = 10

uint32 TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT = 11

uint32 TRAJECTORY_ERROR_TYPE_FILE_ERROR = 12

uint32 TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY = 13

uint32 TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ = 14

uint32 TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING = 15

uint32 TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT = 16

uint32 TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START = 17

uint32 TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED = 18

uint32 TRAJECTORY_ERROR_TYPE_INVALID_POSITION = 19

")



(provide :kortex_driver/TrajectoryErrorType "13800948a2dcbdce2d2c2bb24af1783c")


