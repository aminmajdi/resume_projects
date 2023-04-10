// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SequenceTasksConfiguration = require('../msg/SequenceTasksConfiguration.js');

//-----------------------------------------------------------

let SequenceTasksRange = require('../msg/SequenceTasksRange.js');

//-----------------------------------------------------------

class AddSequenceTasksRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = new SequenceTasksConfiguration();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddSequenceTasksRequest
    // Serialize message field [input]
    bufferOffset = SequenceTasksConfiguration.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddSequenceTasksRequest
    let len;
    let data = new AddSequenceTasksRequest(null);
    // Deserialize message field [input]
    data.input = SequenceTasksConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SequenceTasksConfiguration.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/AddSequenceTasksRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8affcc1c3ebed2cefe297a0b7c7f363';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SequenceTasksConfiguration input
    
    ================================================================================
    MSG: kortex_driver/SequenceTasksConfiguration
    
    SequenceTaskHandle sequence_task_handle
    SequenceTask[] sequence_tasks
    ================================================================================
    MSG: kortex_driver/SequenceTaskHandle
    
    SequenceHandle sequence_handle
    uint32 task_index
    ================================================================================
    MSG: kortex_driver/SequenceHandle
    
    uint32 identifier
    uint32 permission
    ================================================================================
    MSG: kortex_driver/SequenceTask
    
    uint32 group_identifier
    Action action
    string application_data
    ================================================================================
    MSG: kortex_driver/Action
    
    ActionHandle handle
    string name
    string application_data
    Action_action_parameters oneof_action_parameters
    ================================================================================
    MSG: kortex_driver/ActionHandle
    
    uint32 identifier
    uint32 action_type
    uint32 permission
    ================================================================================
    MSG: kortex_driver/Action_action_parameters
    
    TwistCommand[] send_twist_command
    WrenchCommand[] send_wrench_command
    Base_JointSpeeds[] send_joint_speeds
    ConstrainedPose[] reach_pose
    ConstrainedJointAngles[] reach_joint_angles
    uint32[] toggle_admittance_mode
    Snapshot[] snapshot
    SwitchControlMapping[] switch_control_mapping
    uint32[] navigate_joints
    uint32[] navigate_mappings
    ChangeTwist[] change_twist
    ChangeJointSpeeds[] change_joint_speeds
    ChangeWrench[] change_wrench
    EmergencyStop[] apply_emergency_stop
    Faults[] clear_faults
    Delay[] delay
    ActionHandle[] execute_action
    GripperCommand[] send_gripper_command
    Base_Stop[] stop_action
    PreComputedJointTrajectory[] play_pre_computed_trajectory
    ================================================================================
    MSG: kortex_driver/TwistCommand
    
    uint32 reference_frame
    Twist twist
    uint32 duration
    ================================================================================
    MSG: kortex_driver/Twist
    
    float32 linear_x
    float32 linear_y
    float32 linear_z
    float32 angular_x
    float32 angular_y
    float32 angular_z
    ================================================================================
    MSG: kortex_driver/WrenchCommand
    
    uint32 reference_frame
    uint32 mode
    Wrench wrench
    uint32 duration
    ================================================================================
    MSG: kortex_driver/Wrench
    
    float32 force_x
    float32 force_y
    float32 force_z
    float32 torque_x
    float32 torque_y
    float32 torque_z
    ================================================================================
    MSG: kortex_driver/Base_JointSpeeds
    
    JointSpeed[] joint_speeds
    uint32 duration
    ================================================================================
    MSG: kortex_driver/JointSpeed
    
    uint32 joint_identifier
    float32 value
    uint32 duration
    ================================================================================
    MSG: kortex_driver/ConstrainedPose
    
    Pose target_pose
    CartesianTrajectoryConstraint constraint
    ================================================================================
    MSG: kortex_driver/Pose
    
    float32 x
    float32 y
    float32 z
    float32 theta_x
    float32 theta_y
    float32 theta_z
    ================================================================================
    MSG: kortex_driver/CartesianTrajectoryConstraint
    
    CartesianTrajectoryConstraint_type oneof_type
    ================================================================================
    MSG: kortex_driver/CartesianTrajectoryConstraint_type
    
    CartesianSpeed[] speed
    uint32[] duration
    ================================================================================
    MSG: kortex_driver/CartesianSpeed
    
    float32 translation
    float32 orientation
    ================================================================================
    MSG: kortex_driver/ConstrainedJointAngles
    
    JointAngles joint_angles
    JointTrajectoryConstraint constraint
    ================================================================================
    MSG: kortex_driver/JointAngles
    
    JointAngle[] joint_angles
    ================================================================================
    MSG: kortex_driver/JointAngle
    
    uint32 joint_identifier
    float32 value
    ================================================================================
    MSG: kortex_driver/JointTrajectoryConstraint
    
    uint32 type
    float32 value
    ================================================================================
    MSG: kortex_driver/Snapshot
    
    uint32 snapshot_type
    ================================================================================
    MSG: kortex_driver/SwitchControlMapping
    
    uint32 controller_identifier
    MapGroupHandle map_group_handle
    MapHandle map_handle
    ================================================================================
    MSG: kortex_driver/MapGroupHandle
    
    uint32 identifier
    uint32 permission
    ================================================================================
    MSG: kortex_driver/MapHandle
    
    uint32 identifier
    uint32 permission
    ================================================================================
    MSG: kortex_driver/ChangeTwist
    
    float32 linear
    float32 angular
    ================================================================================
    MSG: kortex_driver/ChangeJointSpeeds
    
    Base_JointSpeeds joint_speeds
    ================================================================================
    MSG: kortex_driver/ChangeWrench
    
    float32 force
    float32 torque
    ================================================================================
    MSG: kortex_driver/EmergencyStop
    
    ================================================================================
    MSG: kortex_driver/Faults
    
    ================================================================================
    MSG: kortex_driver/Delay
    
    uint32 duration
    ================================================================================
    MSG: kortex_driver/GripperCommand
    
    uint32 mode
    Gripper gripper
    uint32 duration
    ================================================================================
    MSG: kortex_driver/Gripper
    
    Finger[] finger
    ================================================================================
    MSG: kortex_driver/Finger
    
    uint32 finger_identifier
    float32 value
    ================================================================================
    MSG: kortex_driver/Base_Stop
    
    ================================================================================
    MSG: kortex_driver/PreComputedJointTrajectory
    
    uint32 mode
    PreComputedJointTrajectoryElement[] trajectory_elements
    ================================================================================
    MSG: kortex_driver/PreComputedJointTrajectoryElement
    
    float32[] joint_angles
    float32[] joint_speeds
    float32[] joint_accelerations
    float32 time_from_start
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddSequenceTasksRequest(null);
    if (msg.input !== undefined) {
      resolved.input = SequenceTasksConfiguration.Resolve(msg.input)
    }
    else {
      resolved.input = new SequenceTasksConfiguration()
    }

    return resolved;
    }
};

class AddSequenceTasksResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = new SequenceTasksRange();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddSequenceTasksResponse
    // Serialize message field [output]
    bufferOffset = SequenceTasksRange.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddSequenceTasksResponse
    let len;
    let data = new AddSequenceTasksResponse(null);
    // Deserialize message field [output]
    data.output = SequenceTasksRange.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/AddSequenceTasksResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c02034a64042a4eef7cbc1283167b6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SequenceTasksRange output
    
    ================================================================================
    MSG: kortex_driver/SequenceTasksRange
    
    uint32 first_task_index
    uint32 second_task_index
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddSequenceTasksResponse(null);
    if (msg.output !== undefined) {
      resolved.output = SequenceTasksRange.Resolve(msg.output)
    }
    else {
      resolved.output = new SequenceTasksRange()
    }

    return resolved;
    }
};

module.exports = {
  Request: AddSequenceTasksRequest,
  Response: AddSequenceTasksResponse,
  md5sum() { return '2074dbf05d93ae0c83e8b64adee74474'; },
  datatype() { return 'kortex_driver/AddSequenceTasks'; }
};
