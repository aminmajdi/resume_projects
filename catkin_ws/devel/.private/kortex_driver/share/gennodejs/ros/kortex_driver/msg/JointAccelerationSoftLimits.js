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

class JointAccelerationSoftLimits {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_mode = null;
      this.joint_acceleration_soft_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('joint_acceleration_soft_limits')) {
        this.joint_acceleration_soft_limits = initObj.joint_acceleration_soft_limits
      }
      else {
        this.joint_acceleration_soft_limits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointAccelerationSoftLimits
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint32(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [joint_acceleration_soft_limits]
    bufferOffset = _arraySerializer.float32(obj.joint_acceleration_soft_limits, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointAccelerationSoftLimits
    let len;
    let data = new JointAccelerationSoftLimits(null);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [joint_acceleration_soft_limits]
    data.joint_acceleration_soft_limits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint_acceleration_soft_limits.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/JointAccelerationSoftLimits';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69f7da5340a05ca3142f1af9be835bb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 control_mode
    float32[] joint_acceleration_soft_limits
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointAccelerationSoftLimits(null);
    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.joint_acceleration_soft_limits !== undefined) {
      resolved.joint_acceleration_soft_limits = msg.joint_acceleration_soft_limits;
    }
    else {
      resolved.joint_acceleration_soft_limits = []
    }

    return resolved;
    }
};

module.exports = JointAccelerationSoftLimits;
