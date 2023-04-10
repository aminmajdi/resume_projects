// Auto-generated. Do not edit!

// (in-package kortex_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SequenceTaskHandle = require('./SequenceTaskHandle.js');
let SequenceTask = require('./SequenceTask.js');

//-----------------------------------------------------------

class SequenceTaskConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequence_task_handle = null;
      this.sequence_task = null;
    }
    else {
      if (initObj.hasOwnProperty('sequence_task_handle')) {
        this.sequence_task_handle = initObj.sequence_task_handle
      }
      else {
        this.sequence_task_handle = new SequenceTaskHandle();
      }
      if (initObj.hasOwnProperty('sequence_task')) {
        this.sequence_task = initObj.sequence_task
      }
      else {
        this.sequence_task = new SequenceTask();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SequenceTaskConfiguration
    // Serialize message field [sequence_task_handle]
    bufferOffset = SequenceTaskHandle.serialize(obj.sequence_task_handle, buffer, bufferOffset);
    // Serialize message field [sequence_task]
    bufferOffset = SequenceTask.serialize(obj.sequence_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SequenceTaskConfiguration
    let len;
    let data = new SequenceTaskConfiguration(null);
    // Deserialize message field [sequence_task_handle]
    data.sequence_task_handle = SequenceTaskHandle.deserialize(buffer, bufferOffset);
    // Deserialize message field [sequence_task]
    data.sequence_task = SequenceTask.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SequenceTask.getMessageSize(object.sequence_task);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/SequenceTaskConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '306cc79a8a95bd308317219de45fd13d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    SequenceTaskHandle sequence_task_handle
    SequenceTask sequence_task
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
    const resolved = new SequenceTaskConfiguration(null);
    if (msg.sequence_task_handle !== undefined) {
      resolved.sequence_task_handle = SequenceTaskHandle.Resolve(msg.sequence_task_handle)
    }
    else {
      resolved.sequence_task_handle = new SequenceTaskHandle()
    }

    if (msg.sequence_task !== undefined) {
      resolved.sequence_task = SequenceTask.Resolve(msg.sequence_task)
    }
    else {
      resolved.sequence_task = new SequenceTask()
    }

    return resolved;
    }
};

module.exports = SequenceTaskConfiguration;
