// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RequestedActionType = require('../msg/RequestedActionType.js');

//-----------------------------------------------------------

let ActionList = require('../msg/ActionList.js');

//-----------------------------------------------------------

class ReadAllActionsRequest {
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
        this.input = new RequestedActionType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadAllActionsRequest
    // Serialize message field [input]
    bufferOffset = RequestedActionType.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadAllActionsRequest
    let len;
    let data = new ReadAllActionsRequest(null);
    // Deserialize message field [input]
    data.input = RequestedActionType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/ReadAllActionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '234c9556feffd5cacf02fbbf59cc9f2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RequestedActionType input
    
    ================================================================================
    MSG: kortex_driver/RequestedActionType
    
    uint32 action_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadAllActionsRequest(null);
    if (msg.input !== undefined) {
      resolved.input = RequestedActionType.Resolve(msg.input)
    }
    else {
      resolved.input = new RequestedActionType()
    }

    return resolved;
    }
};

class ReadAllActionsResponse {
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
        this.output = new ActionList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadAllActionsResponse
    // Serialize message field [output]
    bufferOffset = ActionList.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadAllActionsResponse
    let len;
    let data = new ReadAllActionsResponse(null);
    // Deserialize message field [output]
    data.output = ActionList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ActionList.getMessageSize(object.output);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/ReadAllActionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d371ecca592c49388b2d650e8c84ef9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ActionList output
    
    ================================================================================
    MSG: kortex_driver/ActionList
    
    Action[] action_list
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
    const resolved = new ReadAllActionsResponse(null);
    if (msg.output !== undefined) {
      resolved.output = ActionList.Resolve(msg.output)
    }
    else {
      resolved.output = new ActionList()
    }

    return resolved;
    }
};

module.exports = {
  Request: ReadAllActionsRequest,
  Response: ReadAllActionsResponse,
  md5sum() { return 'ea79dbfc8dcc48dc12a75b6156aba368'; },
  datatype() { return 'kortex_driver/ReadAllActions'; }
};
