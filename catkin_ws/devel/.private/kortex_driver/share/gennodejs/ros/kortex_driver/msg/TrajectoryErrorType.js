// Auto-generated. Do not edit!

// (in-package kortex_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrajectoryErrorType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryErrorType
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryErrorType
    let len;
    let data = new TrajectoryErrorType(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/TrajectoryErrorType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13800948a2dcbdce2d2c2bb24af1783c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryErrorType(null);
    return resolved;
    }
};

// Constants for message
TrajectoryErrorType.Constants = {
  TRAJECTORY_ERROR_TYPE_UNSPECIFIED: 0,
  TRAJECTORY_ERROR_TYPE_OUTSIDE_WORKSPACE: 1,
  TRAJECTORY_ERROR_TYPE_ACTUATOR_COUNT_MISMATCH: 2,
  TRAJECTORY_ERROR_TYPE_INVALID_DURATION: 3,
  TRAJECTORY_ERROR_TYPE_ZERO_DISTANCE: 4,
  TRAJECTORY_ERROR_TYPE_INVALID_SPEED: 5,
  TRAJECTORY_ERROR_TYPE_LARGE_SPEED: 6,
  TRAJECTORY_ERROR_TYPE_INVALID_ACCELERATION: 7,
  TRAJECTORY_ERROR_TYPE_INVALID_TIME_STEP: 8,
  TRAJECTORY_ERROR_TYPE_LARGE_SIZE: 9,
  TRAJECTORY_ERROR_TYPE_WRONG_MODE: 10,
  TRAJECTORY_ERROR_TYPE_JOINT_POSITION_LIMIT: 11,
  TRAJECTORY_ERROR_TYPE_FILE_ERROR: 12,
  TRAJECTORY_ERROR_TYPE_NO_FILE_IN_MEMORY: 13,
  TRAJECTORY_ERROR_TYPE_INDEX_OUT_OF_TRAJ: 14,
  TRAJECTORY_ERROR_TYPE_ALREADY_RUNNING: 15,
  TRAJECTORY_ERROR_TYPE_WRONG_STARTING_POINT: 16,
  TRAJECTORY_ERROR_TYPE_CARTESIAN_CANNOT_START: 17,
  TRAJECTORY_ERROR_TYPE_WRONG_STARTING_SPEED: 18,
  TRAJECTORY_ERROR_TYPE_INVALID_POSITION: 19,
}

module.exports = TrajectoryErrorType;
