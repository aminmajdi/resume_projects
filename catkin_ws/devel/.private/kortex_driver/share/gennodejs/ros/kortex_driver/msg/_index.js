
"use strict";

let KortexError = require('./KortexError.js');
let ApiOptions = require('./ApiOptions.js');
let ErrorCodes = require('./ErrorCodes.js');
let SubErrorCodes = require('./SubErrorCodes.js');
let SafetyIdentifierBankA = require('./SafetyIdentifierBankA.js');
let CoggingFeedforwardMode = require('./CoggingFeedforwardMode.js');
let ControlLoopParameters = require('./ControlLoopParameters.js');
let RampResponse = require('./RampResponse.js');
let PositionCommand = require('./PositionCommand.js');
let AxisPosition = require('./AxisPosition.js');
let ActuatorConfig_ControlMode = require('./ActuatorConfig_ControlMode.js');
let ActuatorConfig_ServiceVersion = require('./ActuatorConfig_ServiceVersion.js');
let CommandMode = require('./CommandMode.js');
let CustomDataSelection = require('./CustomDataSelection.js');
let ActuatorConfig_ControlModeInformation = require('./ActuatorConfig_ControlModeInformation.js');
let CustomDataIndex = require('./CustomDataIndex.js');
let ControlLoopSelection = require('./ControlLoopSelection.js');
let EncoderDerivativeParameters = require('./EncoderDerivativeParameters.js');
let TorqueCalibration = require('./TorqueCalibration.js');
let FrequencyResponse = require('./FrequencyResponse.js');
let Servoing = require('./Servoing.js');
let LoopSelection = require('./LoopSelection.js');
let StepResponse = require('./StepResponse.js');
let CommandModeInformation = require('./CommandModeInformation.js');
let TorqueOffset = require('./TorqueOffset.js');
let ActuatorConfig_SafetyLimitType = require('./ActuatorConfig_SafetyLimitType.js');
let AxisOffsets = require('./AxisOffsets.js');
let CoggingFeedforwardModeInformation = require('./CoggingFeedforwardModeInformation.js');
let ControlLoop = require('./ControlLoop.js');
let VectorDriveParameters = require('./VectorDriveParameters.js');
let ActuatorCyclic_Command = require('./ActuatorCyclic_Command.js');
let CommandFlags = require('./CommandFlags.js');
let ActuatorCyclic_Feedback = require('./ActuatorCyclic_Feedback.js');
let ActuatorCyclic_MessageId = require('./ActuatorCyclic_MessageId.js');
let ActuatorCyclic_CustomData = require('./ActuatorCyclic_CustomData.js');
let ActuatorCyclic_ServiceVersion = require('./ActuatorCyclic_ServiceVersion.js');
let StatusFlags = require('./StatusFlags.js');
let Sequence = require('./Sequence.js');
let OperatingModeNotificationList = require('./OperatingModeNotificationList.js');
let ProtectionZone = require('./ProtectionZone.js');
let Delay = require('./Delay.js');
let MapEvent = require('./MapEvent.js');
let RobotEvent = require('./RobotEvent.js');
let ArmStateNotification = require('./ArmStateNotification.js');
let ActionEvent = require('./ActionEvent.js');
let MapHandle = require('./MapHandle.js');
let AdvancedSequenceHandle = require('./AdvancedSequenceHandle.js');
let TrajectoryErrorIdentifier = require('./TrajectoryErrorIdentifier.js');
let Base_RotationMatrix = require('./Base_RotationMatrix.js');
let GripperCommand = require('./GripperCommand.js');
let ControllerEvent = require('./ControllerEvent.js');
let Gripper = require('./Gripper.js');
let Finger = require('./Finger.js');
let ServoingModeNotification = require('./ServoingModeNotification.js');
let Point = require('./Point.js');
let ActionNotificationList = require('./ActionNotificationList.js');
let FullIPv4Configuration = require('./FullIPv4Configuration.js');
let WifiInformationList = require('./WifiInformationList.js');
let NetworkEvent = require('./NetworkEvent.js');
let MapGroupHandle = require('./MapGroupHandle.js');
let NetworkNotification = require('./NetworkNotification.js');
let LedState = require('./LedState.js');
let ConstrainedPose = require('./ConstrainedPose.js');
let SequenceTasksPair = require('./SequenceTasksPair.js');
let BridgeResult = require('./BridgeResult.js');
let ConfigurationNotificationEvent = require('./ConfigurationNotificationEvent.js');
let WrenchMode = require('./WrenchMode.js');
let ActionType = require('./ActionType.js');
let Ssid = require('./Ssid.js');
let TwistLimitation = require('./TwistLimitation.js');
let BridgePortConfig = require('./BridgePortConfig.js');
let TransformationMatrix = require('./TransformationMatrix.js');
let NetworkType = require('./NetworkType.js');
let ControllerNotification = require('./ControllerNotification.js');
let NetworkHandle = require('./NetworkHandle.js');
let Xbox360DigitalInputIdentifier = require('./Xbox360DigitalInputIdentifier.js');
let UserProfileList = require('./UserProfileList.js');
let SequenceTask = require('./SequenceTask.js');
let ActionExecutionState = require('./ActionExecutionState.js');
let Action = require('./Action.js');
let SafetyEvent = require('./SafetyEvent.js');
let MapEvent_events = require('./MapEvent_events.js');
let GripperRequest = require('./GripperRequest.js');
let JointAngle = require('./JointAngle.js');
let ActionList = require('./ActionList.js');
let JointTrajectoryConstraint = require('./JointTrajectoryConstraint.js');
let SequenceTaskConfiguration = require('./SequenceTaskConfiguration.js');
let OperatingMode = require('./OperatingMode.js');
let BridgeIdentifier = require('./BridgeIdentifier.js');
let Snapshot = require('./Snapshot.js');
let OperatingModeNotification = require('./OperatingModeNotification.js');
let Admittance = require('./Admittance.js');
let ChangeJointSpeeds = require('./ChangeJointSpeeds.js');
let ServoingModeInformation = require('./ServoingModeInformation.js');
let UserNotification = require('./UserNotification.js');
let FactoryEvent = require('./FactoryEvent.js');
let BridgeList = require('./BridgeList.js');
let WristDigitalInputIdentifier = require('./WristDigitalInputIdentifier.js');
let ControlModeNotification = require('./ControlModeNotification.js');
let Pose = require('./Pose.js');
let CommunicationInterfaceConfiguration = require('./CommunicationInterfaceConfiguration.js');
let Base_SafetyIdentifier = require('./Base_SafetyIdentifier.js');
let TransformationRow = require('./TransformationRow.js');
let BridgeStatus = require('./BridgeStatus.js');
let Base_Position = require('./Base_Position.js');
let CartesianSpeed = require('./CartesianSpeed.js');
let JointsLimitationsList = require('./JointsLimitationsList.js');
let ControllerEventType = require('./ControllerEventType.js');
let ShapeType = require('./ShapeType.js');
let FirmwareComponentVersion = require('./FirmwareComponentVersion.js');
let Timeout = require('./Timeout.js');
let Gen3GpioPinId = require('./Gen3GpioPinId.js');
let Base_ServiceVersion = require('./Base_ServiceVersion.js');
let UserNotificationList = require('./UserNotificationList.js');
let Base_JointSpeeds = require('./Base_JointSpeeds.js');
let FullUserProfile = require('./FullUserProfile.js');
let ActionHandle = require('./ActionHandle.js');
let ChangeWrench = require('./ChangeWrench.js');
let MappingList = require('./MappingList.js');
let MapElement = require('./MapElement.js');
let AppendActionInformation = require('./AppendActionInformation.js');
let ControllerElementHandle_identifier = require('./ControllerElementHandle_identifier.js');
let Xbox360AnalogInputIdentifier = require('./Xbox360AnalogInputIdentifier.js');
let ProtectionZoneEvent = require('./ProtectionZoneEvent.js');
let TrajectoryErrorElement = require('./TrajectoryErrorElement.js');
let BackupEvent = require('./BackupEvent.js');
let Mapping = require('./Mapping.js');
let TwistCommand = require('./TwistCommand.js');
let UserList = require('./UserList.js');
let SequenceTaskHandle = require('./SequenceTaskHandle.js');
let CartesianLimitationList = require('./CartesianLimitationList.js');
let ControllerInputType = require('./ControllerInputType.js');
let ProtectionZoneInformation = require('./ProtectionZoneInformation.js');
let SequenceList = require('./SequenceList.js');
let ProtectionZoneHandle = require('./ProtectionZoneHandle.js');
let ConstrainedJointAngle = require('./ConstrainedJointAngle.js');
let WifiEncryptionType = require('./WifiEncryptionType.js');
let ControllerList = require('./ControllerList.js');
let Base_CapSenseMode = require('./Base_CapSenseMode.js');
let ConstrainedOrientation = require('./ConstrainedOrientation.js');
let MapGroup = require('./MapGroup.js');
let CartesianTrajectoryConstraint = require('./CartesianTrajectoryConstraint.js');
let GpioEvent = require('./GpioEvent.js');
let WifiInformation = require('./WifiInformation.js');
let MapGroupList = require('./MapGroupList.js');
let ControllerState = require('./ControllerState.js');
let SwitchControlMapping = require('./SwitchControlMapping.js');
let Map = require('./Map.js');
let ConfigurationChangeNotification_configuration_change = require('./ConfigurationChangeNotification_configuration_change.js');
let WifiConfiguration = require('./WifiConfiguration.js');
let SnapshotType = require('./SnapshotType.js');
let ServoingModeNotificationList = require('./ServoingModeNotificationList.js');
let ServoingMode = require('./ServoingMode.js');
let Query = require('./Query.js');
let SequenceInfoNotificationList = require('./SequenceInfoNotificationList.js');
let ControllerNotificationList = require('./ControllerNotificationList.js');
let SequenceInformation = require('./SequenceInformation.js');
let Action_action_parameters = require('./Action_action_parameters.js');
let ControllerHandle = require('./ControllerHandle.js');
let JointTorque = require('./JointTorque.js');
let JointAngles = require('./JointAngles.js');
let MappingInfoNotificationList = require('./MappingInfoNotificationList.js');
let OperatingModeInformation = require('./OperatingModeInformation.js');
let ControllerConfigurationMode = require('./ControllerConfigurationMode.js');
let ZoneShape = require('./ZoneShape.js');
let ControllerElementEventType = require('./ControllerElementEventType.js');
let SequenceTasks = require('./SequenceTasks.js');
let AdmittanceMode = require('./AdmittanceMode.js');
let JointTrajectoryConstraintType = require('./JointTrajectoryConstraintType.js');
let BridgeConfig = require('./BridgeConfig.js');
let ConstrainedJointAngles = require('./ConstrainedJointAngles.js');
let CartesianLimitation = require('./CartesianLimitation.js');
let ControllerBehavior = require('./ControllerBehavior.js');
let WrenchCommand = require('./WrenchCommand.js');
let SequenceTasksConfiguration = require('./SequenceTasksConfiguration.js');
let Base_ControlMode = require('./Base_ControlMode.js');
let FirmwareBundleVersions = require('./FirmwareBundleVersions.js');
let UserProfile = require('./UserProfile.js');
let Base_Stop = require('./Base_Stop.js');
let SystemTime = require('./SystemTime.js');
let IPv4Configuration = require('./IPv4Configuration.js');
let BridgeType = require('./BridgeType.js');
let PasswordChange = require('./PasswordChange.js');
let ControllerNotification_state = require('./ControllerNotification_state.js');
let ProtectionZoneNotification = require('./ProtectionZoneNotification.js');
let ProtectionZoneList = require('./ProtectionZoneList.js');
let PreComputedJointTrajectory = require('./PreComputedJointTrajectory.js');
let RobotEventNotificationList = require('./RobotEventNotificationList.js');
let PreComputedJointTrajectoryElement = require('./PreComputedJointTrajectoryElement.js');
let Base_ControlModeInformation = require('./Base_ControlModeInformation.js');
let TrajectoryErrorType = require('./TrajectoryErrorType.js');
let SequenceHandle = require('./SequenceHandle.js');
let EventIdSequenceInfoNotification = require('./EventIdSequenceInfoNotification.js');
let WifiConfigurationList = require('./WifiConfigurationList.js');
let ArmStateInformation = require('./ArmStateInformation.js');
let ConfigurationChangeNotificationList = require('./ConfigurationChangeNotificationList.js');
let WrenchLimitation = require('./WrenchLimitation.js');
let IPv4Information = require('./IPv4Information.js');
let JointLimitation = require('./JointLimitation.js');
let ControllerElementState = require('./ControllerElementState.js');
let ControllerConfiguration = require('./ControllerConfiguration.js');
let ControllerType = require('./ControllerType.js');
let Base_CapSenseConfig = require('./Base_CapSenseConfig.js');
let MappingHandle = require('./MappingHandle.js');
let TrajectoryContinuityMode = require('./TrajectoryContinuityMode.js');
let MapList = require('./MapList.js');
let Faults = require('./Faults.js');
let SignalQuality = require('./SignalQuality.js');
let UserEvent = require('./UserEvent.js');
let SequenceInfoNotification = require('./SequenceInfoNotification.js');
let GpioBehavior = require('./GpioBehavior.js');
let MappingInfoNotification = require('./MappingInfoNotification.js');
let NavigationDirection = require('./NavigationDirection.js');
let LimitationType = require('./LimitationType.js');
let RobotEventNotification = require('./RobotEventNotification.js');
let GripperMode = require('./GripperMode.js');
let ChangeTwist = require('./ChangeTwist.js');
let ProtectionZoneNotificationList = require('./ProtectionZoneNotificationList.js');
let ControllerElementHandle = require('./ControllerElementHandle.js');
let ActivateMapHandle = require('./ActivateMapHandle.js');
let RequestedActionType = require('./RequestedActionType.js');
let Base_RotationMatrixRow = require('./Base_RotationMatrixRow.js');
let JointTorques = require('./JointTorques.js');
let ControlModeNotificationList = require('./ControlModeNotificationList.js');
let Twist = require('./Twist.js');
let ActuatorInformation = require('./ActuatorInformation.js');
let ActionNotification = require('./ActionNotification.js');
let ConfigurationChangeNotification = require('./ConfigurationChangeNotification.js');
let Wrench = require('./Wrench.js');
let SoundType = require('./SoundType.js');
let TrajectoryErrorReport = require('./TrajectoryErrorReport.js');
let ConstrainedPosition = require('./ConstrainedPosition.js');
let WifiSecurityType = require('./WifiSecurityType.js');
let CartesianTrajectoryConstraint_type = require('./CartesianTrajectoryConstraint_type.js');
let NetworkNotificationList = require('./NetworkNotificationList.js');
let SequenceTasksRange = require('./SequenceTasksRange.js');
let FactoryNotification = require('./FactoryNotification.js');
let JointNavigationDirection = require('./JointNavigationDirection.js');
let Orientation = require('./Orientation.js');
let JointSpeed = require('./JointSpeed.js');
let EmergencyStop = require('./EmergencyStop.js');
let SafetyNotificationList = require('./SafetyNotificationList.js');
let ControllerConfigurationList = require('./ControllerConfigurationList.js');
let ActuatorCommand = require('./ActuatorCommand.js');
let BaseCyclic_Feedback = require('./BaseCyclic_Feedback.js');
let BaseCyclic_CustomData = require('./BaseCyclic_CustomData.js');
let BaseCyclic_Command = require('./BaseCyclic_Command.js');
let ActuatorCustomData = require('./ActuatorCustomData.js');
let BaseCyclic_ServiceVersion = require('./BaseCyclic_ServiceVersion.js');
let ActuatorFeedback = require('./ActuatorFeedback.js');
let BaseFeedback = require('./BaseFeedback.js');
let CountryCodeIdentifier = require('./CountryCodeIdentifier.js');
let Permission = require('./Permission.js');
let UARTParity = require('./UARTParity.js');
let NotificationOptions = require('./NotificationOptions.js');
let SafetyNotification = require('./SafetyNotification.js');
let SafetyStatusValue = require('./SafetyStatusValue.js');
let UARTWordLength = require('./UARTWordLength.js');
let NotificationType = require('./NotificationType.js');
let Empty = require('./Empty.js');
let UserProfileHandle = require('./UserProfileHandle.js');
let UARTConfiguration = require('./UARTConfiguration.js');
let DeviceHandle = require('./DeviceHandle.js');
let UARTDeviceIdentification = require('./UARTDeviceIdentification.js');
let Unit = require('./Unit.js');
let Connection = require('./Connection.js');
let ArmState = require('./ArmState.js');
let CartesianReferenceFrame = require('./CartesianReferenceFrame.js');
let NotificationHandle = require('./NotificationHandle.js');
let UARTSpeed = require('./UARTSpeed.js');
let UARTStopBits = require('./UARTStopBits.js');
let CountryCode = require('./CountryCode.js');
let SafetyHandle = require('./SafetyHandle.js');
let DeviceTypes = require('./DeviceTypes.js');
let Timestamp = require('./Timestamp.js');
let JointSpeedSoftLimits = require('./JointSpeedSoftLimits.js');
let ToolConfiguration = require('./ToolConfiguration.js');
let CartesianReferenceFrameInfo = require('./CartesianReferenceFrameInfo.js');
let KinematicLimitsList = require('./KinematicLimitsList.js');
let ControlConfigurationNotification = require('./ControlConfigurationNotification.js');
let ControlConfig_ControlModeInformation = require('./ControlConfig_ControlModeInformation.js');
let DesiredSpeeds = require('./DesiredSpeeds.js');
let ControlConfig_JointSpeeds = require('./ControlConfig_JointSpeeds.js');
let GravityVector = require('./GravityVector.js');
let JointAccelerationSoftLimits = require('./JointAccelerationSoftLimits.js');
let PayloadInformation = require('./PayloadInformation.js');
let ControlConfig_Position = require('./ControlConfig_Position.js');
let ControlConfig_ServiceVersion = require('./ControlConfig_ServiceVersion.js');
let LinearTwist = require('./LinearTwist.js');
let AngularTwist = require('./AngularTwist.js');
let ControlConfig_ControlMode = require('./ControlConfig_ControlMode.js');
let ControlConfigurationEvent = require('./ControlConfigurationEvent.js');
let CartesianTransform = require('./CartesianTransform.js');
let TwistLinearSoftLimit = require('./TwistLinearSoftLimit.js');
let TwistAngularSoftLimit = require('./TwistAngularSoftLimit.js');
let KinematicLimits = require('./KinematicLimits.js');
let RunModes = require('./RunModes.js');
let CalibrationParameter = require('./CalibrationParameter.js');
let SafetyThreshold = require('./SafetyThreshold.js');
let SafetyStatus = require('./SafetyStatus.js');
let CapSenseRegister = require('./CapSenseRegister.js');
let CalibrationParameter_value = require('./CalibrationParameter_value.js');
let DeviceType = require('./DeviceType.js');
let RunMode = require('./RunMode.js');
let SafetyEnable = require('./SafetyEnable.js');
let CalibrationElement = require('./CalibrationElement.js');
let PowerOnSelfTestResult = require('./PowerOnSelfTestResult.js');
let SafetyInformationList = require('./SafetyInformationList.js');
let ModelNumber = require('./ModelNumber.js');
let CalibrationStatus = require('./CalibrationStatus.js');
let PartNumberRevision = require('./PartNumberRevision.js');
let Calibration = require('./Calibration.js');
let CalibrationItem = require('./CalibrationItem.js');
let SafetyConfiguration = require('./SafetyConfiguration.js');
let FirmwareVersion = require('./FirmwareVersion.js');
let PartNumber = require('./PartNumber.js');
let CalibrationResult = require('./CalibrationResult.js');
let DeviceConfig_CapSenseMode = require('./DeviceConfig_CapSenseMode.js');
let RebootRqst = require('./RebootRqst.js');
let IPv4Settings = require('./IPv4Settings.js');
let DeviceConfig_CapSenseConfig = require('./DeviceConfig_CapSenseConfig.js');
let DeviceConfig_SafetyLimitType = require('./DeviceConfig_SafetyLimitType.js');
let BootloaderVersion = require('./BootloaderVersion.js');
let MACAddress = require('./MACAddress.js');
let SafetyConfigurationList = require('./SafetyConfigurationList.js');
let DeviceConfig_ServiceVersion = require('./DeviceConfig_ServiceVersion.js');
let SerialNumber = require('./SerialNumber.js');
let SafetyInformation = require('./SafetyInformation.js');
let DeviceManager_ServiceVersion = require('./DeviceManager_ServiceVersion.js');
let DeviceHandles = require('./DeviceHandles.js');
let GripperConfig_SafetyIdentifier = require('./GripperConfig_SafetyIdentifier.js');
let RobotiqGripperStatusFlags = require('./RobotiqGripperStatusFlags.js');
let MotorCommand = require('./MotorCommand.js');
let GripperCyclic_MessageId = require('./GripperCyclic_MessageId.js');
let MotorFeedback = require('./MotorFeedback.js');
let GripperCyclic_CustomData = require('./GripperCyclic_CustomData.js');
let CustomDataUnit = require('./CustomDataUnit.js');
let GripperCyclic_ServiceVersion = require('./GripperCyclic_ServiceVersion.js');
let GripperCyclic_Command = require('./GripperCyclic_Command.js');
let GripperCyclic_Feedback = require('./GripperCyclic_Feedback.js');
let I2CWriteParameter = require('./I2CWriteParameter.js');
let EthernetDuplex = require('./EthernetDuplex.js');
let I2CReadParameter = require('./I2CReadParameter.js');
let I2CDeviceIdentification = require('./I2CDeviceIdentification.js');
let GPIOIdentification = require('./GPIOIdentification.js');
let I2CDevice = require('./I2CDevice.js');
let I2CRegisterAddressSize = require('./I2CRegisterAddressSize.js');
let InterconnectConfig_ServiceVersion = require('./InterconnectConfig_ServiceVersion.js');
let EthernetDevice = require('./EthernetDevice.js');
let GPIOValue = require('./GPIOValue.js');
let GPIOConfiguration = require('./GPIOConfiguration.js');
let I2CDeviceAddressing = require('./I2CDeviceAddressing.js');
let EthernetConfiguration = require('./EthernetConfiguration.js');
let InterconnectConfig_SafetyIdentifier = require('./InterconnectConfig_SafetyIdentifier.js');
let GPIOPull = require('./GPIOPull.js');
let I2CData = require('./I2CData.js');
let EthernetSpeed = require('./EthernetSpeed.js');
let I2CReadRegisterParameter = require('./I2CReadRegisterParameter.js');
let EthernetDeviceIdentification = require('./EthernetDeviceIdentification.js');
let I2CWriteRegisterParameter = require('./I2CWriteRegisterParameter.js');
let GPIOMode = require('./GPIOMode.js');
let I2CMode = require('./I2CMode.js');
let GPIOState = require('./GPIOState.js');
let I2CConfiguration = require('./I2CConfiguration.js');
let UARTPortId = require('./UARTPortId.js');
let GPIOIdentifier = require('./GPIOIdentifier.js');
let InterconnectCyclic_Command_tool_command = require('./InterconnectCyclic_Command_tool_command.js');
let InterconnectCyclic_Command = require('./InterconnectCyclic_Command.js');
let InterconnectCyclic_CustomData = require('./InterconnectCyclic_CustomData.js');
let InterconnectCyclic_CustomData_tool_customData = require('./InterconnectCyclic_CustomData_tool_customData.js');
let InterconnectCyclic_MessageId = require('./InterconnectCyclic_MessageId.js');
let InterconnectCyclic_Feedback = require('./InterconnectCyclic_Feedback.js');
let InterconnectCyclic_Feedback_tool_feedback = require('./InterconnectCyclic_Feedback_tool_feedback.js');
let InterconnectCyclic_ServiceVersion = require('./InterconnectCyclic_ServiceVersion.js');
let ProductConfigurationEndEffectorType = require('./ProductConfigurationEndEffectorType.js');
let InterfaceModuleType = require('./InterfaceModuleType.js');
let EndEffectorType = require('./EndEffectorType.js');
let WristType = require('./WristType.js');
let VisionModuleType = require('./VisionModuleType.js');
let CompleteProductConfiguration = require('./CompleteProductConfiguration.js');
let ModelId = require('./ModelId.js');
let BaseType = require('./BaseType.js');
let ArmLaterality = require('./ArmLaterality.js');
let VisionConfig_ServiceVersion = require('./VisionConfig_ServiceVersion.js');
let Sensor = require('./Sensor.js');
let VisionConfig_RotationMatrixRow = require('./VisionConfig_RotationMatrixRow.js');
let FocusPoint = require('./FocusPoint.js');
let IntrinsicProfileIdentifier = require('./IntrinsicProfileIdentifier.js');
let SensorFocusAction_action_parameters = require('./SensorFocusAction_action_parameters.js');
let DistortionCoefficients = require('./DistortionCoefficients.js');
let FocusAction = require('./FocusAction.js');
let SensorIdentifier = require('./SensorIdentifier.js');
let Option = require('./Option.js');
let SensorSettings = require('./SensorSettings.js');
let FrameRate = require('./FrameRate.js');
let VisionEvent = require('./VisionEvent.js');
let VisionNotification = require('./VisionNotification.js');
let BitRate = require('./BitRate.js');
let OptionInformation = require('./OptionInformation.js');
let OptionValue = require('./OptionValue.js');
let TranslationVector = require('./TranslationVector.js');
let SensorFocusAction = require('./SensorFocusAction.js');
let VisionConfig_RotationMatrix = require('./VisionConfig_RotationMatrix.js');
let ManualFocus = require('./ManualFocus.js');
let OptionIdentifier = require('./OptionIdentifier.js');
let ExtrinsicParameters = require('./ExtrinsicParameters.js');
let Resolution = require('./Resolution.js');
let IntrinsicParameters = require('./IntrinsicParameters.js');

module.exports = {
  KortexError: KortexError,
  ApiOptions: ApiOptions,
  ErrorCodes: ErrorCodes,
  SubErrorCodes: SubErrorCodes,
  SafetyIdentifierBankA: SafetyIdentifierBankA,
  CoggingFeedforwardMode: CoggingFeedforwardMode,
  ControlLoopParameters: ControlLoopParameters,
  RampResponse: RampResponse,
  PositionCommand: PositionCommand,
  AxisPosition: AxisPosition,
  ActuatorConfig_ControlMode: ActuatorConfig_ControlMode,
  ActuatorConfig_ServiceVersion: ActuatorConfig_ServiceVersion,
  CommandMode: CommandMode,
  CustomDataSelection: CustomDataSelection,
  ActuatorConfig_ControlModeInformation: ActuatorConfig_ControlModeInformation,
  CustomDataIndex: CustomDataIndex,
  ControlLoopSelection: ControlLoopSelection,
  EncoderDerivativeParameters: EncoderDerivativeParameters,
  TorqueCalibration: TorqueCalibration,
  FrequencyResponse: FrequencyResponse,
  Servoing: Servoing,
  LoopSelection: LoopSelection,
  StepResponse: StepResponse,
  CommandModeInformation: CommandModeInformation,
  TorqueOffset: TorqueOffset,
  ActuatorConfig_SafetyLimitType: ActuatorConfig_SafetyLimitType,
  AxisOffsets: AxisOffsets,
  CoggingFeedforwardModeInformation: CoggingFeedforwardModeInformation,
  ControlLoop: ControlLoop,
  VectorDriveParameters: VectorDriveParameters,
  ActuatorCyclic_Command: ActuatorCyclic_Command,
  CommandFlags: CommandFlags,
  ActuatorCyclic_Feedback: ActuatorCyclic_Feedback,
  ActuatorCyclic_MessageId: ActuatorCyclic_MessageId,
  ActuatorCyclic_CustomData: ActuatorCyclic_CustomData,
  ActuatorCyclic_ServiceVersion: ActuatorCyclic_ServiceVersion,
  StatusFlags: StatusFlags,
  Sequence: Sequence,
  OperatingModeNotificationList: OperatingModeNotificationList,
  ProtectionZone: ProtectionZone,
  Delay: Delay,
  MapEvent: MapEvent,
  RobotEvent: RobotEvent,
  ArmStateNotification: ArmStateNotification,
  ActionEvent: ActionEvent,
  MapHandle: MapHandle,
  AdvancedSequenceHandle: AdvancedSequenceHandle,
  TrajectoryErrorIdentifier: TrajectoryErrorIdentifier,
  Base_RotationMatrix: Base_RotationMatrix,
  GripperCommand: GripperCommand,
  ControllerEvent: ControllerEvent,
  Gripper: Gripper,
  Finger: Finger,
  ServoingModeNotification: ServoingModeNotification,
  Point: Point,
  ActionNotificationList: ActionNotificationList,
  FullIPv4Configuration: FullIPv4Configuration,
  WifiInformationList: WifiInformationList,
  NetworkEvent: NetworkEvent,
  MapGroupHandle: MapGroupHandle,
  NetworkNotification: NetworkNotification,
  LedState: LedState,
  ConstrainedPose: ConstrainedPose,
  SequenceTasksPair: SequenceTasksPair,
  BridgeResult: BridgeResult,
  ConfigurationNotificationEvent: ConfigurationNotificationEvent,
  WrenchMode: WrenchMode,
  ActionType: ActionType,
  Ssid: Ssid,
  TwistLimitation: TwistLimitation,
  BridgePortConfig: BridgePortConfig,
  TransformationMatrix: TransformationMatrix,
  NetworkType: NetworkType,
  ControllerNotification: ControllerNotification,
  NetworkHandle: NetworkHandle,
  Xbox360DigitalInputIdentifier: Xbox360DigitalInputIdentifier,
  UserProfileList: UserProfileList,
  SequenceTask: SequenceTask,
  ActionExecutionState: ActionExecutionState,
  Action: Action,
  SafetyEvent: SafetyEvent,
  MapEvent_events: MapEvent_events,
  GripperRequest: GripperRequest,
  JointAngle: JointAngle,
  ActionList: ActionList,
  JointTrajectoryConstraint: JointTrajectoryConstraint,
  SequenceTaskConfiguration: SequenceTaskConfiguration,
  OperatingMode: OperatingMode,
  BridgeIdentifier: BridgeIdentifier,
  Snapshot: Snapshot,
  OperatingModeNotification: OperatingModeNotification,
  Admittance: Admittance,
  ChangeJointSpeeds: ChangeJointSpeeds,
  ServoingModeInformation: ServoingModeInformation,
  UserNotification: UserNotification,
  FactoryEvent: FactoryEvent,
  BridgeList: BridgeList,
  WristDigitalInputIdentifier: WristDigitalInputIdentifier,
  ControlModeNotification: ControlModeNotification,
  Pose: Pose,
  CommunicationInterfaceConfiguration: CommunicationInterfaceConfiguration,
  Base_SafetyIdentifier: Base_SafetyIdentifier,
  TransformationRow: TransformationRow,
  BridgeStatus: BridgeStatus,
  Base_Position: Base_Position,
  CartesianSpeed: CartesianSpeed,
  JointsLimitationsList: JointsLimitationsList,
  ControllerEventType: ControllerEventType,
  ShapeType: ShapeType,
  FirmwareComponentVersion: FirmwareComponentVersion,
  Timeout: Timeout,
  Gen3GpioPinId: Gen3GpioPinId,
  Base_ServiceVersion: Base_ServiceVersion,
  UserNotificationList: UserNotificationList,
  Base_JointSpeeds: Base_JointSpeeds,
  FullUserProfile: FullUserProfile,
  ActionHandle: ActionHandle,
  ChangeWrench: ChangeWrench,
  MappingList: MappingList,
  MapElement: MapElement,
  AppendActionInformation: AppendActionInformation,
  ControllerElementHandle_identifier: ControllerElementHandle_identifier,
  Xbox360AnalogInputIdentifier: Xbox360AnalogInputIdentifier,
  ProtectionZoneEvent: ProtectionZoneEvent,
  TrajectoryErrorElement: TrajectoryErrorElement,
  BackupEvent: BackupEvent,
  Mapping: Mapping,
  TwistCommand: TwistCommand,
  UserList: UserList,
  SequenceTaskHandle: SequenceTaskHandle,
  CartesianLimitationList: CartesianLimitationList,
  ControllerInputType: ControllerInputType,
  ProtectionZoneInformation: ProtectionZoneInformation,
  SequenceList: SequenceList,
  ProtectionZoneHandle: ProtectionZoneHandle,
  ConstrainedJointAngle: ConstrainedJointAngle,
  WifiEncryptionType: WifiEncryptionType,
  ControllerList: ControllerList,
  Base_CapSenseMode: Base_CapSenseMode,
  ConstrainedOrientation: ConstrainedOrientation,
  MapGroup: MapGroup,
  CartesianTrajectoryConstraint: CartesianTrajectoryConstraint,
  GpioEvent: GpioEvent,
  WifiInformation: WifiInformation,
  MapGroupList: MapGroupList,
  ControllerState: ControllerState,
  SwitchControlMapping: SwitchControlMapping,
  Map: Map,
  ConfigurationChangeNotification_configuration_change: ConfigurationChangeNotification_configuration_change,
  WifiConfiguration: WifiConfiguration,
  SnapshotType: SnapshotType,
  ServoingModeNotificationList: ServoingModeNotificationList,
  ServoingMode: ServoingMode,
  Query: Query,
  SequenceInfoNotificationList: SequenceInfoNotificationList,
  ControllerNotificationList: ControllerNotificationList,
  SequenceInformation: SequenceInformation,
  Action_action_parameters: Action_action_parameters,
  ControllerHandle: ControllerHandle,
  JointTorque: JointTorque,
  JointAngles: JointAngles,
  MappingInfoNotificationList: MappingInfoNotificationList,
  OperatingModeInformation: OperatingModeInformation,
  ControllerConfigurationMode: ControllerConfigurationMode,
  ZoneShape: ZoneShape,
  ControllerElementEventType: ControllerElementEventType,
  SequenceTasks: SequenceTasks,
  AdmittanceMode: AdmittanceMode,
  JointTrajectoryConstraintType: JointTrajectoryConstraintType,
  BridgeConfig: BridgeConfig,
  ConstrainedJointAngles: ConstrainedJointAngles,
  CartesianLimitation: CartesianLimitation,
  ControllerBehavior: ControllerBehavior,
  WrenchCommand: WrenchCommand,
  SequenceTasksConfiguration: SequenceTasksConfiguration,
  Base_ControlMode: Base_ControlMode,
  FirmwareBundleVersions: FirmwareBundleVersions,
  UserProfile: UserProfile,
  Base_Stop: Base_Stop,
  SystemTime: SystemTime,
  IPv4Configuration: IPv4Configuration,
  BridgeType: BridgeType,
  PasswordChange: PasswordChange,
  ControllerNotification_state: ControllerNotification_state,
  ProtectionZoneNotification: ProtectionZoneNotification,
  ProtectionZoneList: ProtectionZoneList,
  PreComputedJointTrajectory: PreComputedJointTrajectory,
  RobotEventNotificationList: RobotEventNotificationList,
  PreComputedJointTrajectoryElement: PreComputedJointTrajectoryElement,
  Base_ControlModeInformation: Base_ControlModeInformation,
  TrajectoryErrorType: TrajectoryErrorType,
  SequenceHandle: SequenceHandle,
  EventIdSequenceInfoNotification: EventIdSequenceInfoNotification,
  WifiConfigurationList: WifiConfigurationList,
  ArmStateInformation: ArmStateInformation,
  ConfigurationChangeNotificationList: ConfigurationChangeNotificationList,
  WrenchLimitation: WrenchLimitation,
  IPv4Information: IPv4Information,
  JointLimitation: JointLimitation,
  ControllerElementState: ControllerElementState,
  ControllerConfiguration: ControllerConfiguration,
  ControllerType: ControllerType,
  Base_CapSenseConfig: Base_CapSenseConfig,
  MappingHandle: MappingHandle,
  TrajectoryContinuityMode: TrajectoryContinuityMode,
  MapList: MapList,
  Faults: Faults,
  SignalQuality: SignalQuality,
  UserEvent: UserEvent,
  SequenceInfoNotification: SequenceInfoNotification,
  GpioBehavior: GpioBehavior,
  MappingInfoNotification: MappingInfoNotification,
  NavigationDirection: NavigationDirection,
  LimitationType: LimitationType,
  RobotEventNotification: RobotEventNotification,
  GripperMode: GripperMode,
  ChangeTwist: ChangeTwist,
  ProtectionZoneNotificationList: ProtectionZoneNotificationList,
  ControllerElementHandle: ControllerElementHandle,
  ActivateMapHandle: ActivateMapHandle,
  RequestedActionType: RequestedActionType,
  Base_RotationMatrixRow: Base_RotationMatrixRow,
  JointTorques: JointTorques,
  ControlModeNotificationList: ControlModeNotificationList,
  Twist: Twist,
  ActuatorInformation: ActuatorInformation,
  ActionNotification: ActionNotification,
  ConfigurationChangeNotification: ConfigurationChangeNotification,
  Wrench: Wrench,
  SoundType: SoundType,
  TrajectoryErrorReport: TrajectoryErrorReport,
  ConstrainedPosition: ConstrainedPosition,
  WifiSecurityType: WifiSecurityType,
  CartesianTrajectoryConstraint_type: CartesianTrajectoryConstraint_type,
  NetworkNotificationList: NetworkNotificationList,
  SequenceTasksRange: SequenceTasksRange,
  FactoryNotification: FactoryNotification,
  JointNavigationDirection: JointNavigationDirection,
  Orientation: Orientation,
  JointSpeed: JointSpeed,
  EmergencyStop: EmergencyStop,
  SafetyNotificationList: SafetyNotificationList,
  ControllerConfigurationList: ControllerConfigurationList,
  ActuatorCommand: ActuatorCommand,
  BaseCyclic_Feedback: BaseCyclic_Feedback,
  BaseCyclic_CustomData: BaseCyclic_CustomData,
  BaseCyclic_Command: BaseCyclic_Command,
  ActuatorCustomData: ActuatorCustomData,
  BaseCyclic_ServiceVersion: BaseCyclic_ServiceVersion,
  ActuatorFeedback: ActuatorFeedback,
  BaseFeedback: BaseFeedback,
  CountryCodeIdentifier: CountryCodeIdentifier,
  Permission: Permission,
  UARTParity: UARTParity,
  NotificationOptions: NotificationOptions,
  SafetyNotification: SafetyNotification,
  SafetyStatusValue: SafetyStatusValue,
  UARTWordLength: UARTWordLength,
  NotificationType: NotificationType,
  Empty: Empty,
  UserProfileHandle: UserProfileHandle,
  UARTConfiguration: UARTConfiguration,
  DeviceHandle: DeviceHandle,
  UARTDeviceIdentification: UARTDeviceIdentification,
  Unit: Unit,
  Connection: Connection,
  ArmState: ArmState,
  CartesianReferenceFrame: CartesianReferenceFrame,
  NotificationHandle: NotificationHandle,
  UARTSpeed: UARTSpeed,
  UARTStopBits: UARTStopBits,
  CountryCode: CountryCode,
  SafetyHandle: SafetyHandle,
  DeviceTypes: DeviceTypes,
  Timestamp: Timestamp,
  JointSpeedSoftLimits: JointSpeedSoftLimits,
  ToolConfiguration: ToolConfiguration,
  CartesianReferenceFrameInfo: CartesianReferenceFrameInfo,
  KinematicLimitsList: KinematicLimitsList,
  ControlConfigurationNotification: ControlConfigurationNotification,
  ControlConfig_ControlModeInformation: ControlConfig_ControlModeInformation,
  DesiredSpeeds: DesiredSpeeds,
  ControlConfig_JointSpeeds: ControlConfig_JointSpeeds,
  GravityVector: GravityVector,
  JointAccelerationSoftLimits: JointAccelerationSoftLimits,
  PayloadInformation: PayloadInformation,
  ControlConfig_Position: ControlConfig_Position,
  ControlConfig_ServiceVersion: ControlConfig_ServiceVersion,
  LinearTwist: LinearTwist,
  AngularTwist: AngularTwist,
  ControlConfig_ControlMode: ControlConfig_ControlMode,
  ControlConfigurationEvent: ControlConfigurationEvent,
  CartesianTransform: CartesianTransform,
  TwistLinearSoftLimit: TwistLinearSoftLimit,
  TwistAngularSoftLimit: TwistAngularSoftLimit,
  KinematicLimits: KinematicLimits,
  RunModes: RunModes,
  CalibrationParameter: CalibrationParameter,
  SafetyThreshold: SafetyThreshold,
  SafetyStatus: SafetyStatus,
  CapSenseRegister: CapSenseRegister,
  CalibrationParameter_value: CalibrationParameter_value,
  DeviceType: DeviceType,
  RunMode: RunMode,
  SafetyEnable: SafetyEnable,
  CalibrationElement: CalibrationElement,
  PowerOnSelfTestResult: PowerOnSelfTestResult,
  SafetyInformationList: SafetyInformationList,
  ModelNumber: ModelNumber,
  CalibrationStatus: CalibrationStatus,
  PartNumberRevision: PartNumberRevision,
  Calibration: Calibration,
  CalibrationItem: CalibrationItem,
  SafetyConfiguration: SafetyConfiguration,
  FirmwareVersion: FirmwareVersion,
  PartNumber: PartNumber,
  CalibrationResult: CalibrationResult,
  DeviceConfig_CapSenseMode: DeviceConfig_CapSenseMode,
  RebootRqst: RebootRqst,
  IPv4Settings: IPv4Settings,
  DeviceConfig_CapSenseConfig: DeviceConfig_CapSenseConfig,
  DeviceConfig_SafetyLimitType: DeviceConfig_SafetyLimitType,
  BootloaderVersion: BootloaderVersion,
  MACAddress: MACAddress,
  SafetyConfigurationList: SafetyConfigurationList,
  DeviceConfig_ServiceVersion: DeviceConfig_ServiceVersion,
  SerialNumber: SerialNumber,
  SafetyInformation: SafetyInformation,
  DeviceManager_ServiceVersion: DeviceManager_ServiceVersion,
  DeviceHandles: DeviceHandles,
  GripperConfig_SafetyIdentifier: GripperConfig_SafetyIdentifier,
  RobotiqGripperStatusFlags: RobotiqGripperStatusFlags,
  MotorCommand: MotorCommand,
  GripperCyclic_MessageId: GripperCyclic_MessageId,
  MotorFeedback: MotorFeedback,
  GripperCyclic_CustomData: GripperCyclic_CustomData,
  CustomDataUnit: CustomDataUnit,
  GripperCyclic_ServiceVersion: GripperCyclic_ServiceVersion,
  GripperCyclic_Command: GripperCyclic_Command,
  GripperCyclic_Feedback: GripperCyclic_Feedback,
  I2CWriteParameter: I2CWriteParameter,
  EthernetDuplex: EthernetDuplex,
  I2CReadParameter: I2CReadParameter,
  I2CDeviceIdentification: I2CDeviceIdentification,
  GPIOIdentification: GPIOIdentification,
  I2CDevice: I2CDevice,
  I2CRegisterAddressSize: I2CRegisterAddressSize,
  InterconnectConfig_ServiceVersion: InterconnectConfig_ServiceVersion,
  EthernetDevice: EthernetDevice,
  GPIOValue: GPIOValue,
  GPIOConfiguration: GPIOConfiguration,
  I2CDeviceAddressing: I2CDeviceAddressing,
  EthernetConfiguration: EthernetConfiguration,
  InterconnectConfig_SafetyIdentifier: InterconnectConfig_SafetyIdentifier,
  GPIOPull: GPIOPull,
  I2CData: I2CData,
  EthernetSpeed: EthernetSpeed,
  I2CReadRegisterParameter: I2CReadRegisterParameter,
  EthernetDeviceIdentification: EthernetDeviceIdentification,
  I2CWriteRegisterParameter: I2CWriteRegisterParameter,
  GPIOMode: GPIOMode,
  I2CMode: I2CMode,
  GPIOState: GPIOState,
  I2CConfiguration: I2CConfiguration,
  UARTPortId: UARTPortId,
  GPIOIdentifier: GPIOIdentifier,
  InterconnectCyclic_Command_tool_command: InterconnectCyclic_Command_tool_command,
  InterconnectCyclic_Command: InterconnectCyclic_Command,
  InterconnectCyclic_CustomData: InterconnectCyclic_CustomData,
  InterconnectCyclic_CustomData_tool_customData: InterconnectCyclic_CustomData_tool_customData,
  InterconnectCyclic_MessageId: InterconnectCyclic_MessageId,
  InterconnectCyclic_Feedback: InterconnectCyclic_Feedback,
  InterconnectCyclic_Feedback_tool_feedback: InterconnectCyclic_Feedback_tool_feedback,
  InterconnectCyclic_ServiceVersion: InterconnectCyclic_ServiceVersion,
  ProductConfigurationEndEffectorType: ProductConfigurationEndEffectorType,
  InterfaceModuleType: InterfaceModuleType,
  EndEffectorType: EndEffectorType,
  WristType: WristType,
  VisionModuleType: VisionModuleType,
  CompleteProductConfiguration: CompleteProductConfiguration,
  ModelId: ModelId,
  BaseType: BaseType,
  ArmLaterality: ArmLaterality,
  VisionConfig_ServiceVersion: VisionConfig_ServiceVersion,
  Sensor: Sensor,
  VisionConfig_RotationMatrixRow: VisionConfig_RotationMatrixRow,
  FocusPoint: FocusPoint,
  IntrinsicProfileIdentifier: IntrinsicProfileIdentifier,
  SensorFocusAction_action_parameters: SensorFocusAction_action_parameters,
  DistortionCoefficients: DistortionCoefficients,
  FocusAction: FocusAction,
  SensorIdentifier: SensorIdentifier,
  Option: Option,
  SensorSettings: SensorSettings,
  FrameRate: FrameRate,
  VisionEvent: VisionEvent,
  VisionNotification: VisionNotification,
  BitRate: BitRate,
  OptionInformation: OptionInformation,
  OptionValue: OptionValue,
  TranslationVector: TranslationVector,
  SensorFocusAction: SensorFocusAction,
  VisionConfig_RotationMatrix: VisionConfig_RotationMatrix,
  ManualFocus: ManualFocus,
  OptionIdentifier: OptionIdentifier,
  ExtrinsicParameters: ExtrinsicParameters,
  Resolution: Resolution,
  IntrinsicParameters: IntrinsicParameters,
};
