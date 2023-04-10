
(cl:in-package :asdf)

(defsystem "kortex_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :kortex_driver-msg
)
  :components ((:file "_package")
    (:file "ControlConfig_GetControlMode" :depends-on ("_package_ControlConfig_GetControlMode"))
    (:file "_package_ControlConfig_GetControlMode" :depends-on ("_package"))
    (:file "ControlConfig_Unsubscribe" :depends-on ("_package_ControlConfig_Unsubscribe"))
    (:file "_package_ControlConfig_Unsubscribe" :depends-on ("_package"))
    (:file "GetAllKinematicSoftLimits" :depends-on ("_package_GetAllKinematicSoftLimits"))
    (:file "_package_GetAllKinematicSoftLimits" :depends-on ("_package"))
    (:file "GetCartesianReferenceFrame" :depends-on ("_package_GetCartesianReferenceFrame"))
    (:file "_package_GetCartesianReferenceFrame" :depends-on ("_package"))
    (:file "GetDesiredSpeeds" :depends-on ("_package_GetDesiredSpeeds"))
    (:file "_package_GetDesiredSpeeds" :depends-on ("_package"))
    (:file "GetGravityVector" :depends-on ("_package_GetGravityVector"))
    (:file "_package_GetGravityVector" :depends-on ("_package"))
    (:file "GetKinematicHardLimits" :depends-on ("_package_GetKinematicHardLimits"))
    (:file "_package_GetKinematicHardLimits" :depends-on ("_package"))
    (:file "GetKinematicSoftLimits" :depends-on ("_package_GetKinematicSoftLimits"))
    (:file "_package_GetKinematicSoftLimits" :depends-on ("_package"))
    (:file "GetPayloadInformation" :depends-on ("_package_GetPayloadInformation"))
    (:file "_package_GetPayloadInformation" :depends-on ("_package"))
    (:file "GetToolConfiguration" :depends-on ("_package_GetToolConfiguration"))
    (:file "_package_GetToolConfiguration" :depends-on ("_package"))
    (:file "OnNotificationControlConfigurationTopic" :depends-on ("_package_OnNotificationControlConfigurationTopic"))
    (:file "_package_OnNotificationControlConfigurationTopic" :depends-on ("_package"))
    (:file "ResetGravityVector" :depends-on ("_package_ResetGravityVector"))
    (:file "_package_ResetGravityVector" :depends-on ("_package"))
    (:file "ResetJointAccelerationSoftLimits" :depends-on ("_package_ResetJointAccelerationSoftLimits"))
    (:file "_package_ResetJointAccelerationSoftLimits" :depends-on ("_package"))
    (:file "ResetJointSpeedSoftLimits" :depends-on ("_package_ResetJointSpeedSoftLimits"))
    (:file "_package_ResetJointSpeedSoftLimits" :depends-on ("_package"))
    (:file "ResetPayloadInformation" :depends-on ("_package_ResetPayloadInformation"))
    (:file "_package_ResetPayloadInformation" :depends-on ("_package"))
    (:file "ResetToolConfiguration" :depends-on ("_package_ResetToolConfiguration"))
    (:file "_package_ResetToolConfiguration" :depends-on ("_package"))
    (:file "ResetTwistAngularSoftLimit" :depends-on ("_package_ResetTwistAngularSoftLimit"))
    (:file "_package_ResetTwistAngularSoftLimit" :depends-on ("_package"))
    (:file "ResetTwistLinearSoftLimit" :depends-on ("_package_ResetTwistLinearSoftLimit"))
    (:file "_package_ResetTwistLinearSoftLimit" :depends-on ("_package"))
    (:file "SetCartesianReferenceFrame" :depends-on ("_package_SetCartesianReferenceFrame"))
    (:file "_package_SetCartesianReferenceFrame" :depends-on ("_package"))
    (:file "SetDesiredAngularTwist" :depends-on ("_package_SetDesiredAngularTwist"))
    (:file "_package_SetDesiredAngularTwist" :depends-on ("_package"))
    (:file "SetDesiredJointSpeeds" :depends-on ("_package_SetDesiredJointSpeeds"))
    (:file "_package_SetDesiredJointSpeeds" :depends-on ("_package"))
    (:file "SetDesiredLinearTwist" :depends-on ("_package_SetDesiredLinearTwist"))
    (:file "_package_SetDesiredLinearTwist" :depends-on ("_package"))
    (:file "SetGravityVector" :depends-on ("_package_SetGravityVector"))
    (:file "_package_SetGravityVector" :depends-on ("_package"))
    (:file "SetJointAccelerationSoftLimits" :depends-on ("_package_SetJointAccelerationSoftLimits"))
    (:file "_package_SetJointAccelerationSoftLimits" :depends-on ("_package"))
    (:file "SetJointSpeedSoftLimits" :depends-on ("_package_SetJointSpeedSoftLimits"))
    (:file "_package_SetJointSpeedSoftLimits" :depends-on ("_package"))
    (:file "SetPayloadInformation" :depends-on ("_package_SetPayloadInformation"))
    (:file "_package_SetPayloadInformation" :depends-on ("_package"))
    (:file "SetToolConfiguration" :depends-on ("_package_SetToolConfiguration"))
    (:file "_package_SetToolConfiguration" :depends-on ("_package"))
    (:file "SetTwistAngularSoftLimit" :depends-on ("_package_SetTwistAngularSoftLimit"))
    (:file "_package_SetTwistAngularSoftLimit" :depends-on ("_package"))
    (:file "SetTwistLinearSoftLimit" :depends-on ("_package_SetTwistLinearSoftLimit"))
    (:file "_package_SetTwistLinearSoftLimit" :depends-on ("_package"))
  ))