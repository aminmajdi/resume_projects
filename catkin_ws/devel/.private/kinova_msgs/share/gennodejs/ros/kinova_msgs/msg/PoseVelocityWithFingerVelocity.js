// Auto-generated. Do not edit!

// (in-package kinova_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PoseVelocityWithFingerVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.twist_linear_x = null;
      this.twist_linear_y = null;
      this.twist_linear_z = null;
      this.twist_angular_x = null;
      this.twist_angular_y = null;
      this.twist_angular_z = null;
      this.finger1 = null;
      this.finger2 = null;
      this.finger3 = null;
    }
    else {
      if (initObj.hasOwnProperty('twist_linear_x')) {
        this.twist_linear_x = initObj.twist_linear_x
      }
      else {
        this.twist_linear_x = 0.0;
      }
      if (initObj.hasOwnProperty('twist_linear_y')) {
        this.twist_linear_y = initObj.twist_linear_y
      }
      else {
        this.twist_linear_y = 0.0;
      }
      if (initObj.hasOwnProperty('twist_linear_z')) {
        this.twist_linear_z = initObj.twist_linear_z
      }
      else {
        this.twist_linear_z = 0.0;
      }
      if (initObj.hasOwnProperty('twist_angular_x')) {
        this.twist_angular_x = initObj.twist_angular_x
      }
      else {
        this.twist_angular_x = 0.0;
      }
      if (initObj.hasOwnProperty('twist_angular_y')) {
        this.twist_angular_y = initObj.twist_angular_y
      }
      else {
        this.twist_angular_y = 0.0;
      }
      if (initObj.hasOwnProperty('twist_angular_z')) {
        this.twist_angular_z = initObj.twist_angular_z
      }
      else {
        this.twist_angular_z = 0.0;
      }
      if (initObj.hasOwnProperty('finger1')) {
        this.finger1 = initObj.finger1
      }
      else {
        this.finger1 = 0.0;
      }
      if (initObj.hasOwnProperty('finger2')) {
        this.finger2 = initObj.finger2
      }
      else {
        this.finger2 = 0.0;
      }
      if (initObj.hasOwnProperty('finger3')) {
        this.finger3 = initObj.finger3
      }
      else {
        this.finger3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseVelocityWithFingerVelocity
    // Serialize message field [twist_linear_x]
    bufferOffset = _serializer.float32(obj.twist_linear_x, buffer, bufferOffset);
    // Serialize message field [twist_linear_y]
    bufferOffset = _serializer.float32(obj.twist_linear_y, buffer, bufferOffset);
    // Serialize message field [twist_linear_z]
    bufferOffset = _serializer.float32(obj.twist_linear_z, buffer, bufferOffset);
    // Serialize message field [twist_angular_x]
    bufferOffset = _serializer.float32(obj.twist_angular_x, buffer, bufferOffset);
    // Serialize message field [twist_angular_y]
    bufferOffset = _serializer.float32(obj.twist_angular_y, buffer, bufferOffset);
    // Serialize message field [twist_angular_z]
    bufferOffset = _serializer.float32(obj.twist_angular_z, buffer, bufferOffset);
    // Serialize message field [finger1]
    bufferOffset = _serializer.float32(obj.finger1, buffer, bufferOffset);
    // Serialize message field [finger2]
    bufferOffset = _serializer.float32(obj.finger2, buffer, bufferOffset);
    // Serialize message field [finger3]
    bufferOffset = _serializer.float32(obj.finger3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseVelocityWithFingerVelocity
    let len;
    let data = new PoseVelocityWithFingerVelocity(null);
    // Deserialize message field [twist_linear_x]
    data.twist_linear_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [twist_linear_y]
    data.twist_linear_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [twist_linear_z]
    data.twist_linear_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [twist_angular_x]
    data.twist_angular_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [twist_angular_y]
    data.twist_angular_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [twist_angular_z]
    data.twist_angular_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finger1]
    data.finger1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finger2]
    data.finger2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finger3]
    data.finger3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kinova_msgs/PoseVelocityWithFingerVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8789bad3911d8a482fde371a6b8abac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 twist_linear_x
    float32 twist_linear_y
    float32 twist_linear_z
    float32 twist_angular_x
    float32 twist_angular_y
    float32 twist_angular_z
    float32 finger1
    float32 finger2
    float32 finger3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseVelocityWithFingerVelocity(null);
    if (msg.twist_linear_x !== undefined) {
      resolved.twist_linear_x = msg.twist_linear_x;
    }
    else {
      resolved.twist_linear_x = 0.0
    }

    if (msg.twist_linear_y !== undefined) {
      resolved.twist_linear_y = msg.twist_linear_y;
    }
    else {
      resolved.twist_linear_y = 0.0
    }

    if (msg.twist_linear_z !== undefined) {
      resolved.twist_linear_z = msg.twist_linear_z;
    }
    else {
      resolved.twist_linear_z = 0.0
    }

    if (msg.twist_angular_x !== undefined) {
      resolved.twist_angular_x = msg.twist_angular_x;
    }
    else {
      resolved.twist_angular_x = 0.0
    }

    if (msg.twist_angular_y !== undefined) {
      resolved.twist_angular_y = msg.twist_angular_y;
    }
    else {
      resolved.twist_angular_y = 0.0
    }

    if (msg.twist_angular_z !== undefined) {
      resolved.twist_angular_z = msg.twist_angular_z;
    }
    else {
      resolved.twist_angular_z = 0.0
    }

    if (msg.finger1 !== undefined) {
      resolved.finger1 = msg.finger1;
    }
    else {
      resolved.finger1 = 0.0
    }

    if (msg.finger2 !== undefined) {
      resolved.finger2 = msg.finger2;
    }
    else {
      resolved.finger2 = 0.0
    }

    if (msg.finger3 !== undefined) {
      resolved.finger3 = msg.finger3;
    }
    else {
      resolved.finger3 = 0.0
    }

    return resolved;
    }
};

module.exports = PoseVelocityWithFingerVelocity;
