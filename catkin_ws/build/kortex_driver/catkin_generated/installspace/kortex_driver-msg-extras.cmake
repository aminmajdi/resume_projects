set(kortex_driver_MESSAGE_FILES "msg/non_generated/ApiOptions.msg;msg/non_generated/KortexError.msg;msg/generated/ErrorCodes.msg;msg/generated/SubErrorCodes.msg;msg/generated/actuator_config/ActuatorConfig_ControlMode.msg;msg/generated/actuator_config/ActuatorConfig_ControlModeInformation.msg;msg/generated/actuator_config/ActuatorConfig_SafetyLimitType.msg;msg/generated/actuator_config/ActuatorConfig_ServiceVersion.msg;msg/generated/actuator_config/AxisOffsets.msg;msg/generated/actuator_config/AxisPosition.msg;msg/generated/actuator_config/CoggingFeedforwardMode.msg;msg/generated/actuator_config/CoggingFeedforwardModeInformation.msg;msg/generated/actuator_config/CommandMode.msg;msg/generated/actuator_config/CommandModeInformation.msg;msg/generated/actuator_config/ControlLoop.msg;msg/generated/actuator_config/ControlLoopParameters.msg;msg/generated/actuator_config/ControlLoopSelection.msg;msg/generated/actuator_config/CustomDataIndex.msg;msg/generated/actuator_config/CustomDataSelection.msg;msg/generated/actuator_config/EncoderDerivativeParameters.msg;msg/generated/actuator_config/FrequencyResponse.msg;msg/generated/actuator_config/LoopSelection.msg;msg/generated/actuator_config/PositionCommand.msg;msg/generated/actuator_config/RampResponse.msg;msg/generated/actuator_config/SafetyIdentifierBankA.msg;msg/generated/actuator_config/Servoing.msg;msg/generated/actuator_config/StepResponse.msg;msg/generated/actuator_config/TorqueCalibration.msg;msg/generated/actuator_config/TorqueOffset.msg;msg/generated/actuator_config/VectorDriveParameters.msg;msg/generated/actuator_cyclic/ActuatorCyclic_Command.msg;msg/generated/actuator_cyclic/ActuatorCyclic_CustomData.msg;msg/generated/actuator_cyclic/ActuatorCyclic_Feedback.msg;msg/generated/actuator_cyclic/ActuatorCyclic_MessageId.msg;msg/generated/actuator_cyclic/ActuatorCyclic_ServiceVersion.msg;msg/generated/actuator_cyclic/CommandFlags.msg;msg/generated/actuator_cyclic/StatusFlags.msg;msg/generated/base/Action.msg;msg/generated/base/ActionEvent.msg;msg/generated/base/ActionExecutionState.msg;msg/generated/base/ActionHandle.msg;msg/generated/base/ActionList.msg;msg/generated/base/ActionNotification.msg;msg/generated/base/ActionNotificationList.msg;msg/generated/base/ActionType.msg;msg/generated/base/Action_action_parameters.msg;msg/generated/base/ActivateMapHandle.msg;msg/generated/base/ActuatorInformation.msg;msg/generated/base/Admittance.msg;msg/generated/base/AdmittanceMode.msg;msg/generated/base/AdvancedSequenceHandle.msg;msg/generated/base/AppendActionInformation.msg;msg/generated/base/ArmStateInformation.msg;msg/generated/base/ArmStateNotification.msg;msg/generated/base/BackupEvent.msg;msg/generated/base/Base_CapSenseConfig.msg;msg/generated/base/Base_CapSenseMode.msg;msg/generated/base/Base_ControlMode.msg;msg/generated/base/Base_ControlModeInformation.msg;msg/generated/base/Base_JointSpeeds.msg;msg/generated/base/Base_Position.msg;msg/generated/base/Base_RotationMatrix.msg;msg/generated/base/Base_RotationMatrixRow.msg;msg/generated/base/Base_SafetyIdentifier.msg;msg/generated/base/Base_ServiceVersion.msg;msg/generated/base/Base_Stop.msg;msg/generated/base/BridgeConfig.msg;msg/generated/base/BridgeIdentifier.msg;msg/generated/base/BridgeList.msg;msg/generated/base/BridgePortConfig.msg;msg/generated/base/BridgeResult.msg;msg/generated/base/BridgeStatus.msg;msg/generated/base/BridgeType.msg;msg/generated/base/CartesianLimitation.msg;msg/generated/base/CartesianLimitationList.msg;msg/generated/base/CartesianSpeed.msg;msg/generated/base/CartesianTrajectoryConstraint.msg;msg/generated/base/CartesianTrajectoryConstraint_type.msg;msg/generated/base/ChangeJointSpeeds.msg;msg/generated/base/ChangeTwist.msg;msg/generated/base/ChangeWrench.msg;msg/generated/base/CommunicationInterfaceConfiguration.msg;msg/generated/base/ConfigurationChangeNotification.msg;msg/generated/base/ConfigurationChangeNotificationList.msg;msg/generated/base/ConfigurationChangeNotification_configuration_change.msg;msg/generated/base/ConfigurationNotificationEvent.msg;msg/generated/base/ConstrainedJointAngle.msg;msg/generated/base/ConstrainedJointAngles.msg;msg/generated/base/ConstrainedOrientation.msg;msg/generated/base/ConstrainedPose.msg;msg/generated/base/ConstrainedPosition.msg;msg/generated/base/ControlModeNotification.msg;msg/generated/base/ControlModeNotificationList.msg;msg/generated/base/ControllerBehavior.msg;msg/generated/base/ControllerConfiguration.msg;msg/generated/base/ControllerConfigurationList.msg;msg/generated/base/ControllerConfigurationMode.msg;msg/generated/base/ControllerElementEventType.msg;msg/generated/base/ControllerElementHandle.msg;msg/generated/base/ControllerElementHandle_identifier.msg;msg/generated/base/ControllerElementState.msg;msg/generated/base/ControllerEvent.msg;msg/generated/base/ControllerEventType.msg;msg/generated/base/ControllerHandle.msg;msg/generated/base/ControllerInputType.msg;msg/generated/base/ControllerList.msg;msg/generated/base/ControllerNotification.msg;msg/generated/base/ControllerNotificationList.msg;msg/generated/base/ControllerNotification_state.msg;msg/generated/base/ControllerState.msg;msg/generated/base/ControllerType.msg;msg/generated/base/Delay.msg;msg/generated/base/EmergencyStop.msg;msg/generated/base/EventIdSequenceInfoNotification.msg;msg/generated/base/FactoryEvent.msg;msg/generated/base/FactoryNotification.msg;msg/generated/base/Faults.msg;msg/generated/base/Finger.msg;msg/generated/base/FirmwareBundleVersions.msg;msg/generated/base/FirmwareComponentVersion.msg;msg/generated/base/FullIPv4Configuration.msg;msg/generated/base/FullUserProfile.msg;msg/generated/base/Gen3GpioPinId.msg;msg/generated/base/GpioBehavior.msg;msg/generated/base/GpioEvent.msg;msg/generated/base/Gripper.msg;msg/generated/base/GripperCommand.msg;msg/generated/base/GripperMode.msg;msg/generated/base/GripperRequest.msg;msg/generated/base/IPv4Configuration.msg;msg/generated/base/IPv4Information.msg;msg/generated/base/JointAngle.msg;msg/generated/base/JointAngles.msg;msg/generated/base/JointLimitation.msg;msg/generated/base/JointNavigationDirection.msg;msg/generated/base/JointSpeed.msg;msg/generated/base/JointTorque.msg;msg/generated/base/JointTorques.msg;msg/generated/base/JointTrajectoryConstraint.msg;msg/generated/base/JointTrajectoryConstraintType.msg;msg/generated/base/JointsLimitationsList.msg;msg/generated/base/LedState.msg;msg/generated/base/LimitationType.msg;msg/generated/base/Map.msg;msg/generated/base/MapElement.msg;msg/generated/base/MapEvent.msg;msg/generated/base/MapEvent_events.msg;msg/generated/base/MapGroup.msg;msg/generated/base/MapGroupHandle.msg;msg/generated/base/MapGroupList.msg;msg/generated/base/MapHandle.msg;msg/generated/base/MapList.msg;msg/generated/base/Mapping.msg;msg/generated/base/MappingHandle.msg;msg/generated/base/MappingInfoNotification.msg;msg/generated/base/MappingInfoNotificationList.msg;msg/generated/base/MappingList.msg;msg/generated/base/NavigationDirection.msg;msg/generated/base/NetworkEvent.msg;msg/generated/base/NetworkHandle.msg;msg/generated/base/NetworkNotification.msg;msg/generated/base/NetworkNotificationList.msg;msg/generated/base/NetworkType.msg;msg/generated/base/OperatingMode.msg;msg/generated/base/OperatingModeInformation.msg;msg/generated/base/OperatingModeNotification.msg;msg/generated/base/OperatingModeNotificationList.msg;msg/generated/base/Orientation.msg;msg/generated/base/PasswordChange.msg;msg/generated/base/Point.msg;msg/generated/base/Pose.msg;msg/generated/base/PreComputedJointTrajectory.msg;msg/generated/base/PreComputedJointTrajectoryElement.msg;msg/generated/base/ProtectionZone.msg;msg/generated/base/ProtectionZoneEvent.msg;msg/generated/base/ProtectionZoneHandle.msg;msg/generated/base/ProtectionZoneInformation.msg;msg/generated/base/ProtectionZoneList.msg;msg/generated/base/ProtectionZoneNotification.msg;msg/generated/base/ProtectionZoneNotificationList.msg;msg/generated/base/Query.msg;msg/generated/base/RequestedActionType.msg;msg/generated/base/RobotEvent.msg;msg/generated/base/RobotEventNotification.msg;msg/generated/base/RobotEventNotificationList.msg;msg/generated/base/SafetyEvent.msg;msg/generated/base/SafetyNotificationList.msg;msg/generated/base/Sequence.msg;msg/generated/base/SequenceHandle.msg;msg/generated/base/SequenceInfoNotification.msg;msg/generated/base/SequenceInfoNotificationList.msg;msg/generated/base/SequenceInformation.msg;msg/generated/base/SequenceList.msg;msg/generated/base/SequenceTask.msg;msg/generated/base/SequenceTaskConfiguration.msg;msg/generated/base/SequenceTaskHandle.msg;msg/generated/base/SequenceTasks.msg;msg/generated/base/SequenceTasksConfiguration.msg;msg/generated/base/SequenceTasksPair.msg;msg/generated/base/SequenceTasksRange.msg;msg/generated/base/ServoingMode.msg;msg/generated/base/ServoingModeInformation.msg;msg/generated/base/ServoingModeNotification.msg;msg/generated/base/ServoingModeNotificationList.msg;msg/generated/base/ShapeType.msg;msg/generated/base/SignalQuality.msg;msg/generated/base/Snapshot.msg;msg/generated/base/SnapshotType.msg;msg/generated/base/SoundType.msg;msg/generated/base/Ssid.msg;msg/generated/base/SwitchControlMapping.msg;msg/generated/base/SystemTime.msg;msg/generated/base/Timeout.msg;msg/generated/base/TrajectoryContinuityMode.msg;msg/generated/base/TrajectoryErrorElement.msg;msg/generated/base/TrajectoryErrorIdentifier.msg;msg/generated/base/TrajectoryErrorReport.msg;msg/generated/base/TrajectoryErrorType.msg;msg/generated/base/TransformationMatrix.msg;msg/generated/base/TransformationRow.msg;msg/generated/base/Twist.msg;msg/generated/base/TwistCommand.msg;msg/generated/base/TwistLimitation.msg;msg/generated/base/UserEvent.msg;msg/generated/base/UserList.msg;msg/generated/base/UserNotification.msg;msg/generated/base/UserNotificationList.msg;msg/generated/base/UserProfile.msg;msg/generated/base/UserProfileList.msg;msg/generated/base/WifiConfiguration.msg;msg/generated/base/WifiConfigurationList.msg;msg/generated/base/WifiEncryptionType.msg;msg/generated/base/WifiInformation.msg;msg/generated/base/WifiInformationList.msg;msg/generated/base/WifiSecurityType.msg;msg/generated/base/Wrench.msg;msg/generated/base/WrenchCommand.msg;msg/generated/base/WrenchLimitation.msg;msg/generated/base/WrenchMode.msg;msg/generated/base/WristDigitalInputIdentifier.msg;msg/generated/base/Xbox360AnalogInputIdentifier.msg;msg/generated/base/Xbox360DigitalInputIdentifier.msg;msg/generated/base/ZoneShape.msg;msg/generated/base_cyclic/ActuatorCommand.msg;msg/generated/base_cyclic/ActuatorCustomData.msg;msg/generated/base_cyclic/ActuatorFeedback.msg;msg/generated/base_cyclic/BaseCyclic_Command.msg;msg/generated/base_cyclic/BaseCyclic_CustomData.msg;msg/generated/base_cyclic/BaseCyclic_Feedback.msg;msg/generated/base_cyclic/BaseCyclic_ServiceVersion.msg;msg/generated/base_cyclic/BaseFeedback.msg;msg/generated/common/ArmState.msg;msg/generated/common/CartesianReferenceFrame.msg;msg/generated/common/Connection.msg;msg/generated/common/CountryCode.msg;msg/generated/common/CountryCodeIdentifier.msg;msg/generated/common/DeviceHandle.msg;msg/generated/common/DeviceTypes.msg;msg/generated/common/Empty.msg;msg/generated/common/NotificationHandle.msg;msg/generated/common/NotificationOptions.msg;msg/generated/common/NotificationType.msg;msg/generated/common/Permission.msg;msg/generated/common/SafetyHandle.msg;msg/generated/common/SafetyNotification.msg;msg/generated/common/SafetyStatusValue.msg;msg/generated/common/Timestamp.msg;msg/generated/common/UARTConfiguration.msg;msg/generated/common/UARTDeviceIdentification.msg;msg/generated/common/UARTParity.msg;msg/generated/common/UARTSpeed.msg;msg/generated/common/UARTStopBits.msg;msg/generated/common/UARTWordLength.msg;msg/generated/common/Unit.msg;msg/generated/common/UserProfileHandle.msg;msg/generated/control_config/AngularTwist.msg;msg/generated/control_config/CartesianReferenceFrameInfo.msg;msg/generated/control_config/CartesianTransform.msg;msg/generated/control_config/ControlConfig_ControlMode.msg;msg/generated/control_config/ControlConfig_ControlModeInformation.msg;msg/generated/control_config/ControlConfig_JointSpeeds.msg;msg/generated/control_config/ControlConfig_Position.msg;msg/generated/control_config/ControlConfig_ServiceVersion.msg;msg/generated/control_config/ControlConfigurationEvent.msg;msg/generated/control_config/ControlConfigurationNotification.msg;msg/generated/control_config/DesiredSpeeds.msg;msg/generated/control_config/GravityVector.msg;msg/generated/control_config/JointAccelerationSoftLimits.msg;msg/generated/control_config/JointSpeedSoftLimits.msg;msg/generated/control_config/KinematicLimits.msg;msg/generated/control_config/KinematicLimitsList.msg;msg/generated/control_config/LinearTwist.msg;msg/generated/control_config/PayloadInformation.msg;msg/generated/control_config/ToolConfiguration.msg;msg/generated/control_config/TwistAngularSoftLimit.msg;msg/generated/control_config/TwistLinearSoftLimit.msg;msg/generated/device_config/BootloaderVersion.msg;msg/generated/device_config/Calibration.msg;msg/generated/device_config/CalibrationElement.msg;msg/generated/device_config/CalibrationItem.msg;msg/generated/device_config/CalibrationParameter.msg;msg/generated/device_config/CalibrationParameter_value.msg;msg/generated/device_config/CalibrationResult.msg;msg/generated/device_config/CalibrationStatus.msg;msg/generated/device_config/CapSenseRegister.msg;msg/generated/device_config/DeviceConfig_CapSenseConfig.msg;msg/generated/device_config/DeviceConfig_CapSenseMode.msg;msg/generated/device_config/DeviceConfig_SafetyLimitType.msg;msg/generated/device_config/DeviceConfig_ServiceVersion.msg;msg/generated/device_config/DeviceType.msg;msg/generated/device_config/FirmwareVersion.msg;msg/generated/device_config/IPv4Settings.msg;msg/generated/device_config/MACAddress.msg;msg/generated/device_config/ModelNumber.msg;msg/generated/device_config/PartNumber.msg;msg/generated/device_config/PartNumberRevision.msg;msg/generated/device_config/PowerOnSelfTestResult.msg;msg/generated/device_config/RebootRqst.msg;msg/generated/device_config/RunMode.msg;msg/generated/device_config/RunModes.msg;msg/generated/device_config/SafetyConfiguration.msg;msg/generated/device_config/SafetyConfigurationList.msg;msg/generated/device_config/SafetyEnable.msg;msg/generated/device_config/SafetyInformation.msg;msg/generated/device_config/SafetyInformationList.msg;msg/generated/device_config/SafetyStatus.msg;msg/generated/device_config/SafetyThreshold.msg;msg/generated/device_config/SerialNumber.msg;msg/generated/device_manager/DeviceHandles.msg;msg/generated/device_manager/DeviceManager_ServiceVersion.msg;msg/generated/gripper_config/GripperConfig_SafetyIdentifier.msg;msg/generated/gripper_config/RobotiqGripperStatusFlags.msg;msg/generated/gripper_cyclic/CustomDataUnit.msg;msg/generated/gripper_cyclic/GripperCyclic_Command.msg;msg/generated/gripper_cyclic/GripperCyclic_CustomData.msg;msg/generated/gripper_cyclic/GripperCyclic_Feedback.msg;msg/generated/gripper_cyclic/GripperCyclic_MessageId.msg;msg/generated/gripper_cyclic/GripperCyclic_ServiceVersion.msg;msg/generated/gripper_cyclic/MotorCommand.msg;msg/generated/gripper_cyclic/MotorFeedback.msg;msg/generated/interconnect_config/EthernetConfiguration.msg;msg/generated/interconnect_config/EthernetDevice.msg;msg/generated/interconnect_config/EthernetDeviceIdentification.msg;msg/generated/interconnect_config/EthernetDuplex.msg;msg/generated/interconnect_config/EthernetSpeed.msg;msg/generated/interconnect_config/GPIOConfiguration.msg;msg/generated/interconnect_config/GPIOIdentification.msg;msg/generated/interconnect_config/GPIOIdentifier.msg;msg/generated/interconnect_config/GPIOMode.msg;msg/generated/interconnect_config/GPIOPull.msg;msg/generated/interconnect_config/GPIOState.msg;msg/generated/interconnect_config/GPIOValue.msg;msg/generated/interconnect_config/I2CConfiguration.msg;msg/generated/interconnect_config/I2CData.msg;msg/generated/interconnect_config/I2CDevice.msg;msg/generated/interconnect_config/I2CDeviceAddressing.msg;msg/generated/interconnect_config/I2CDeviceIdentification.msg;msg/generated/interconnect_config/I2CMode.msg;msg/generated/interconnect_config/I2CReadParameter.msg;msg/generated/interconnect_config/I2CReadRegisterParameter.msg;msg/generated/interconnect_config/I2CRegisterAddressSize.msg;msg/generated/interconnect_config/I2CWriteParameter.msg;msg/generated/interconnect_config/I2CWriteRegisterParameter.msg;msg/generated/interconnect_config/InterconnectConfig_SafetyIdentifier.msg;msg/generated/interconnect_config/InterconnectConfig_ServiceVersion.msg;msg/generated/interconnect_config/UARTPortId.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_Command.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_Command_tool_command.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_CustomData.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_CustomData_tool_customData.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_Feedback.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_Feedback_tool_feedback.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_MessageId.msg;msg/generated/interconnect_cyclic/InterconnectCyclic_ServiceVersion.msg;msg/generated/product_configuration/ArmLaterality.msg;msg/generated/product_configuration/BaseType.msg;msg/generated/product_configuration/CompleteProductConfiguration.msg;msg/generated/product_configuration/EndEffectorType.msg;msg/generated/product_configuration/InterfaceModuleType.msg;msg/generated/product_configuration/ModelId.msg;msg/generated/product_configuration/ProductConfigurationEndEffectorType.msg;msg/generated/product_configuration/VisionModuleType.msg;msg/generated/product_configuration/WristType.msg;msg/generated/vision_config/BitRate.msg;msg/generated/vision_config/DistortionCoefficients.msg;msg/generated/vision_config/ExtrinsicParameters.msg;msg/generated/vision_config/FocusAction.msg;msg/generated/vision_config/FocusPoint.msg;msg/generated/vision_config/FrameRate.msg;msg/generated/vision_config/IntrinsicParameters.msg;msg/generated/vision_config/IntrinsicProfileIdentifier.msg;msg/generated/vision_config/ManualFocus.msg;msg/generated/vision_config/Option.msg;msg/generated/vision_config/OptionIdentifier.msg;msg/generated/vision_config/OptionInformation.msg;msg/generated/vision_config/OptionValue.msg;msg/generated/vision_config/Resolution.msg;msg/generated/vision_config/Sensor.msg;msg/generated/vision_config/SensorFocusAction.msg;msg/generated/vision_config/SensorFocusAction_action_parameters.msg;msg/generated/vision_config/SensorIdentifier.msg;msg/generated/vision_config/SensorSettings.msg;msg/generated/vision_config/TranslationVector.msg;msg/generated/vision_config/VisionConfig_RotationMatrix.msg;msg/generated/vision_config/VisionConfig_RotationMatrixRow.msg;msg/generated/vision_config/VisionConfig_ServiceVersion.msg;msg/generated/vision_config/VisionEvent.msg;msg/generated/vision_config/VisionNotification.msg")
set(kortex_driver_SERVICE_FILES "srv/non_generated/SetApiOptions.srv;srv/non_generated/SetDeviceID.srv;srv/generated/actuator_config/ActuatorConfig_ClearFaults.srv;srv/generated/actuator_config/ActuatorConfig_GetControlMode.srv;srv/generated/actuator_config/GetActivatedControlLoop.srv;srv/generated/actuator_config/GetAxisOffsets.srv;srv/generated/actuator_config/GetCoggingFeedforwardMode.srv;srv/generated/actuator_config/GetCommandMode.srv;srv/generated/actuator_config/GetControlLoopParameters.srv;srv/generated/actuator_config/GetSelectedCustomData.srv;srv/generated/actuator_config/GetServoing.srv;srv/generated/actuator_config/GetTorqueOffset.srv;srv/generated/actuator_config/MoveToPosition.srv;srv/generated/actuator_config/SelectCustomData.srv;srv/generated/actuator_config/SetActivatedControlLoop.srv;srv/generated/actuator_config/SetAxisOffsets.srv;srv/generated/actuator_config/SetCoggingFeedforwardMode.srv;srv/generated/actuator_config/SetCommandMode.srv;srv/generated/actuator_config/SetControlLoopParameters.srv;srv/generated/actuator_config/SetControlMode.srv;srv/generated/actuator_config/SetServoing.srv;srv/generated/actuator_config/SetTorqueOffset.srv;srv/generated/base/ActivateMap.srv;srv/generated/base/AddSequenceTasks.srv;srv/generated/base/AddWifiConfiguration.srv;srv/generated/base/ApplyEmergencyStop.srv;srv/generated/base/Base_ClearFaults.srv;srv/generated/base/Base_GetCapSenseConfig.srv;srv/generated/base/Base_GetControlMode.srv;srv/generated/base/Base_SetCapSenseConfig.srv;srv/generated/base/Base_Unsubscribe.srv;srv/generated/base/ChangePassword.srv;srv/generated/base/ConnectWifi.srv;srv/generated/base/CreateAction.srv;srv/generated/base/CreateMap.srv;srv/generated/base/CreateMapping.srv;srv/generated/base/CreateProtectionZone.srv;srv/generated/base/CreateSequence.srv;srv/generated/base/CreateUserProfile.srv;srv/generated/base/DeleteAction.srv;srv/generated/base/DeleteAllSequenceTasks.srv;srv/generated/base/DeleteMap.srv;srv/generated/base/DeleteMapping.srv;srv/generated/base/DeleteProtectionZone.srv;srv/generated/base/DeleteSequence.srv;srv/generated/base/DeleteSequenceTask.srv;srv/generated/base/DeleteUserProfile.srv;srv/generated/base/DeleteWifiConfiguration.srv;srv/generated/base/DisableBridge.srv;srv/generated/base/DisconnectWifi.srv;srv/generated/base/DuplicateMap.srv;srv/generated/base/DuplicateMapping.srv;srv/generated/base/EnableBridge.srv;srv/generated/base/ExecuteAction.srv;srv/generated/base/ExecuteActionFromReference.srv;srv/generated/base/GetActuatorCount.srv;srv/generated/base/GetAllConfiguredWifis.srv;srv/generated/base/GetAllConnectedControllers.srv;srv/generated/base/GetAllControllerConfigurations.srv;srv/generated/base/GetAllJointsSpeedHardLimitation.srv;srv/generated/base/GetAllJointsSpeedSoftLimitation.srv;srv/generated/base/GetAllJointsTorqueHardLimitation.srv;srv/generated/base/GetAllJointsTorqueSoftLimitation.srv;srv/generated/base/GetArmState.srv;srv/generated/base/GetAvailableWifi.srv;srv/generated/base/GetBridgeConfig.srv;srv/generated/base/GetBridgeList.srv;srv/generated/base/GetConfiguredWifi.srv;srv/generated/base/GetConnectedWifiInformation.srv;srv/generated/base/GetControllerConfiguration.srv;srv/generated/base/GetControllerConfigurationMode.srv;srv/generated/base/GetControllerState.srv;srv/generated/base/GetFirmwareBundleVersions.srv;srv/generated/base/GetIPv4Configuration.srv;srv/generated/base/GetIPv4Information.srv;srv/generated/base/GetMeasuredCartesianPose.srv;srv/generated/base/GetMeasuredGripperMovement.srv;srv/generated/base/GetMeasuredJointAngles.srv;srv/generated/base/GetOperatingMode.srv;srv/generated/base/GetProductConfiguration.srv;srv/generated/base/GetServoingMode.srv;srv/generated/base/GetTrajectoryErrorReport.srv;srv/generated/base/GetTwistHardLimitation.srv;srv/generated/base/GetTwistSoftLimitation.srv;srv/generated/base/GetWifiCountryCode.srv;srv/generated/base/GetWifiInformation.srv;srv/generated/base/GetWrenchHardLimitation.srv;srv/generated/base/GetWrenchSoftLimitation.srv;srv/generated/base/IsCommunicationInterfaceEnable.srv;srv/generated/base/MoveSequenceTask.srv;srv/generated/base/OnNotificationActionTopic.srv;srv/generated/base/OnNotificationArmStateTopic.srv;srv/generated/base/OnNotificationConfigurationChangeTopic.srv;srv/generated/base/OnNotificationControlModeTopic.srv;srv/generated/base/OnNotificationControllerTopic.srv;srv/generated/base/OnNotificationFactoryTopic.srv;srv/generated/base/OnNotificationMappingInfoTopic.srv;srv/generated/base/OnNotificationNetworkTopic.srv;srv/generated/base/OnNotificationOperatingModeTopic.srv;srv/generated/base/OnNotificationProtectionZoneTopic.srv;srv/generated/base/OnNotificationRobotEventTopic.srv;srv/generated/base/OnNotificationSequenceInfoTopic.srv;srv/generated/base/OnNotificationServoingModeTopic.srv;srv/generated/base/OnNotificationUserTopic.srv;srv/generated/base/PauseAction.srv;srv/generated/base/PauseSequence.srv;srv/generated/base/PlayAdvancedSequence.srv;srv/generated/base/PlayCartesianTrajectory.srv;srv/generated/base/PlayCartesianTrajectoryOrientation.srv;srv/generated/base/PlayCartesianTrajectoryPosition.srv;srv/generated/base/PlayJointTrajectory.srv;srv/generated/base/PlayPreComputedJointTrajectory.srv;srv/generated/base/PlaySelectedJointTrajectory.srv;srv/generated/base/PlaySequence.srv;srv/generated/base/ReadAction.srv;srv/generated/base/ReadAllActions.srv;srv/generated/base/ReadAllMappings.srv;srv/generated/base/ReadAllMaps.srv;srv/generated/base/ReadAllProtectionZones.srv;srv/generated/base/ReadAllSequenceTasks.srv;srv/generated/base/ReadAllSequences.srv;srv/generated/base/ReadAllUserProfiles.srv;srv/generated/base/ReadAllUsers.srv;srv/generated/base/ReadMap.srv;srv/generated/base/ReadMapping.srv;srv/generated/base/ReadProtectionZone.srv;srv/generated/base/ReadSequence.srv;srv/generated/base/ReadSequenceTask.srv;srv/generated/base/ReadUserProfile.srv;srv/generated/base/RestoreFactoryProductConfiguration.srv;srv/generated/base/RestoreFactorySettings.srv;srv/generated/base/ResumeAction.srv;srv/generated/base/ResumeSequence.srv;srv/generated/base/SendGripperCommand.srv;srv/generated/base/SendJointSpeedsCommand.srv;srv/generated/base/SendJointSpeedsJoystickCommand.srv;srv/generated/base/SendSelectedJointSpeedCommand.srv;srv/generated/base/SendSelectedJointSpeedJoystickCommand.srv;srv/generated/base/SendTwistCommand.srv;srv/generated/base/SendTwistJoystickCommand.srv;srv/generated/base/SendWrenchCommand.srv;srv/generated/base/SendWrenchJoystickCommand.srv;srv/generated/base/SetAdmittance.srv;srv/generated/base/SetCommunicationInterfaceEnable.srv;srv/generated/base/SetControllerConfiguration.srv;srv/generated/base/SetControllerConfigurationMode.srv;srv/generated/base/SetIPv4Configuration.srv;srv/generated/base/SetOperatingMode.srv;srv/generated/base/SetServoingMode.srv;srv/generated/base/SetWifiCountryCode.srv;srv/generated/base/StartTeaching.srv;srv/generated/base/StartWifiScan.srv;srv/generated/base/Stop.srv;srv/generated/base/StopAction.srv;srv/generated/base/StopSequence.srv;srv/generated/base/StopTeaching.srv;srv/generated/base/SwapSequenceTasks.srv;srv/generated/base/TakeSnapshot.srv;srv/generated/base/UpdateAction.srv;srv/generated/base/UpdateEndEffectorTypeConfiguration.srv;srv/generated/base/UpdateMap.srv;srv/generated/base/UpdateMapping.srv;srv/generated/base/UpdateProtectionZone.srv;srv/generated/base/UpdateSequence.srv;srv/generated/base/UpdateSequenceTask.srv;srv/generated/base/UpdateUserProfile.srv;srv/generated/control_config/ControlConfig_GetControlMode.srv;srv/generated/control_config/ControlConfig_Unsubscribe.srv;srv/generated/control_config/GetAllKinematicSoftLimits.srv;srv/generated/control_config/GetCartesianReferenceFrame.srv;srv/generated/control_config/GetDesiredSpeeds.srv;srv/generated/control_config/GetGravityVector.srv;srv/generated/control_config/GetKinematicHardLimits.srv;srv/generated/control_config/GetKinematicSoftLimits.srv;srv/generated/control_config/GetPayloadInformation.srv;srv/generated/control_config/GetToolConfiguration.srv;srv/generated/control_config/OnNotificationControlConfigurationTopic.srv;srv/generated/control_config/ResetGravityVector.srv;srv/generated/control_config/ResetJointAccelerationSoftLimits.srv;srv/generated/control_config/ResetJointSpeedSoftLimits.srv;srv/generated/control_config/ResetPayloadInformation.srv;srv/generated/control_config/ResetToolConfiguration.srv;srv/generated/control_config/ResetTwistAngularSoftLimit.srv;srv/generated/control_config/ResetTwistLinearSoftLimit.srv;srv/generated/control_config/SetCartesianReferenceFrame.srv;srv/generated/control_config/SetDesiredAngularTwist.srv;srv/generated/control_config/SetDesiredJointSpeeds.srv;srv/generated/control_config/SetDesiredLinearTwist.srv;srv/generated/control_config/SetGravityVector.srv;srv/generated/control_config/SetJointAccelerationSoftLimits.srv;srv/generated/control_config/SetJointSpeedSoftLimits.srv;srv/generated/control_config/SetPayloadInformation.srv;srv/generated/control_config/SetToolConfiguration.srv;srv/generated/control_config/SetTwistAngularSoftLimit.srv;srv/generated/control_config/SetTwistLinearSoftLimit.srv;srv/generated/device_config/ClearAllSafetyStatus.srv;srv/generated/device_config/ClearSafetyStatus.srv;srv/generated/device_config/DeviceConfig_GetCapSenseConfig.srv;srv/generated/device_config/DeviceConfig_SetCapSenseConfig.srv;srv/generated/device_config/ExecuteCalibration.srv;srv/generated/device_config/GetAllSafetyConfiguration.srv;srv/generated/device_config/GetAllSafetyInformation.srv;srv/generated/device_config/GetBootloaderVersion.srv;srv/generated/device_config/GetCalibrationResult.srv;srv/generated/device_config/GetDeviceType.srv;srv/generated/device_config/GetFirmwareVersion.srv;srv/generated/device_config/GetIPv4Settings.srv;srv/generated/device_config/GetMACAddress.srv;srv/generated/device_config/GetModelNumber.srv;srv/generated/device_config/GetPartNumber.srv;srv/generated/device_config/GetPartNumberRevision.srv;srv/generated/device_config/GetRunMode.srv;srv/generated/device_config/GetSafetyConfiguration.srv;srv/generated/device_config/GetSafetyEnable.srv;srv/generated/device_config/GetSafetyInformation.srv;srv/generated/device_config/GetSafetyStatus.srv;srv/generated/device_config/GetSerialNumber.srv;srv/generated/device_config/OnNotificationSafetyTopic.srv;srv/generated/device_config/RebootRequest.srv;srv/generated/device_config/ResetSafetyDefaults.srv;srv/generated/device_config/SetIPv4Settings.srv;srv/generated/device_config/SetRunMode.srv;srv/generated/device_config/SetSafetyConfiguration.srv;srv/generated/device_config/SetSafetyEnable.srv;srv/generated/device_config/SetSafetyErrorThreshold.srv;srv/generated/device_config/SetSafetyWarningThreshold.srv;srv/generated/device_config/StopCalibration.srv;srv/generated/device_manager/ReadAllDevices.srv;srv/generated/interconnect_config/GetEthernetConfiguration.srv;srv/generated/interconnect_config/GetGPIOConfiguration.srv;srv/generated/interconnect_config/GetGPIOState.srv;srv/generated/interconnect_config/GetI2CConfiguration.srv;srv/generated/interconnect_config/GetUARTConfiguration.srv;srv/generated/interconnect_config/I2CRead.srv;srv/generated/interconnect_config/I2CReadRegister.srv;srv/generated/interconnect_config/I2CWrite.srv;srv/generated/interconnect_config/I2CWriteRegister.srv;srv/generated/interconnect_config/SetEthernetConfiguration.srv;srv/generated/interconnect_config/SetGPIOConfiguration.srv;srv/generated/interconnect_config/SetGPIOState.srv;srv/generated/interconnect_config/SetI2CConfiguration.srv;srv/generated/interconnect_config/SetUARTConfiguration.srv;srv/generated/vision_config/DoSensorFocusAction.srv;srv/generated/vision_config/GetExtrinsicParameters.srv;srv/generated/vision_config/GetIntrinsicParameters.srv;srv/generated/vision_config/GetIntrinsicParametersProfile.srv;srv/generated/vision_config/GetOptionInformation.srv;srv/generated/vision_config/GetOptionValue.srv;srv/generated/vision_config/GetSensorSettings.srv;srv/generated/vision_config/OnNotificationVisionTopic.srv;srv/generated/vision_config/SetExtrinsicParameters.srv;srv/generated/vision_config/SetIntrinsicParameters.srv;srv/generated/vision_config/SetOptionValue.srv;srv/generated/vision_config/SetSensorSettings.srv")
