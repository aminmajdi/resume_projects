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

class Base_ControlMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Base_ControlMode
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Base_ControlMode
    let len;
    let data = new Base_ControlMode(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/Base_ControlMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '027ce394a2c0dcd8cf27153deda7b144';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 UNSPECIFIED_CONTROL_MODE = 0
    
    uint32 ANGULAR_JOYSTICK = 1
    
    uint32 CARTESIAN_JOYSTICK = 2
    
    uint32 ANGULAR_TRAJECTORY = 4
    
    uint32 CARTESIAN_TRAJECTORY = 5
    
    uint32 CARTESIAN_ADMITTANCE = 6
    
    uint32 JOINT_ADMITTANCE = 7
    
    uint32 NULL_SPACE_ADMITTANCE = 8
    
    uint32 FORCE_CONTROL = 10
    
    uint32 FORCE_CONTROL_MOTION_RESTRICTED = 11
    
    uint32 IDLE = 13
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Base_ControlMode(null);
    return resolved;
    }
};

// Constants for message
Base_ControlMode.Constants = {
  UNSPECIFIED_CONTROL_MODE: 0,
  ANGULAR_JOYSTICK: 1,
  CARTESIAN_JOYSTICK: 2,
  ANGULAR_TRAJECTORY: 4,
  CARTESIAN_TRAJECTORY: 5,
  CARTESIAN_ADMITTANCE: 6,
  JOINT_ADMITTANCE: 7,
  NULL_SPACE_ADMITTANCE: 8,
  FORCE_CONTROL: 10,
  FORCE_CONTROL_MOTION_RESTRICTED: 11,
  IDLE: 13,
}

module.exports = Base_ControlMode;
