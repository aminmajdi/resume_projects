# Install script for directory: /home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/csrobot/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/csrobot/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/csrobot/catkin_ws/install" TYPE PROGRAM FILES "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/csrobot/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/csrobot/catkin_ws/install" TYPE PROGRAM FILES "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/csrobot/catkin_ws/install/setup.bash;/home/csrobot/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/csrobot/catkin_ws/install" TYPE FILE FILES
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/setup.bash"
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/csrobot/catkin_ws/install/setup.sh;/home/csrobot/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/csrobot/catkin_ws/install" TYPE FILE FILES
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/setup.sh"
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/csrobot/catkin_ws/install/setup.zsh;/home/csrobot/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/csrobot/catkin_ws/install" TYPE FILE FILES
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/setup.zsh"
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/csrobot/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/csrobot/catkin_ws/install" TYPE FILE FILES "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/FingerPosition.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/JointAngles.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/JointVelocity.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/JointTorque.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/KinovaPose.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/PoseVelocity.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/PoseVelocityWithFingers.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/PoseVelocityWithFingerVelocity.msg"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/msg/CartesianForce.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/srv" TYPE FILE FILES
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/Start.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/Stop.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/HomeArm.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/SetForceControlParams.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/SetEndEffectorOffset.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/SetNullSpaceModeState.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/SetTorqueControlMode.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/SetTorqueControlParameters.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/ClearTrajectories.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/ZeroTorques.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/AddPoseToCartesianTrajectory.srv"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/srv/RunCOMParametersEstimation.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/action" TYPE FILE FILES
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/action/ArmJointAngles.action"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/action/ArmPose.action"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/action/Arm_KinovaPose.action"
    "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/action/SetFingersPosition.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmJointAnglesAction.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmJointAnglesActionGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmJointAnglesActionResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmJointAnglesActionFeedback.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmJointAnglesGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmJointAnglesResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmJointAnglesFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmPoseAction.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmPoseActionGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmPoseActionResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmPoseActionFeedback.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmPoseGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmPoseResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/ArmPoseFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/Arm_KinovaPoseAction.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/Arm_KinovaPoseActionGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/Arm_KinovaPoseActionResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/Arm_KinovaPoseActionFeedback.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/Arm_KinovaPoseGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/Arm_KinovaPoseResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/Arm_KinovaPoseFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/SetFingersPositionAction.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/SetFingersPositionActionGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/SetFingersPositionActionResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/SetFingersPositionActionFeedback.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/SetFingersPositionGoal.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/SetFingersPositionResult.msg"
    "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/kinova_msgs/msg/SetFingersPositionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/cmake" TYPE FILE FILES "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/kinova_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/include/kinova_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/roseus/ros/kinova_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/common-lisp/ros/kinova_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/share/gennodejs/ros/kinova_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/lib/python2.7/dist-packages/kinova_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/csrobot/catkin_ws/devel/.private/kinova_msgs/lib/python2.7/dist-packages/kinova_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/kinova_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/cmake" TYPE FILE FILES "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/kinova_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/cmake" TYPE FILE FILES
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/kinova_msgsConfig.cmake"
    "/home/csrobot/catkin_ws/build/kinova_msgs/catkin_generated/installspace/kinova_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs" TYPE FILE FILES "/home/csrobot/catkin_ws/src/kinova-ros/kinova_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/csrobot/catkin_ws/build/kinova_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/csrobot/catkin_ws/build/kinova_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
