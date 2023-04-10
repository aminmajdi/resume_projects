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

class ServoingModeInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servoing_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('servoing_mode')) {
        this.servoing_mode = initObj.servoing_mode
      }
      else {
        this.servoing_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoingModeInformation
    // Serialize message field [servoing_mode]
    bufferOffset = _serializer.uint32(obj.servoing_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoingModeInformation
    let len;
    let data = new ServoingModeInformation(null);
    // Deserialize message field [servoing_mode]
    data.servoing_mode = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/ServoingModeInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa12f11eee2104f3edd1a6487bc94db9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 servoing_mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoingModeInformation(null);
    if (msg.servoing_mode !== undefined) {
      resolved.servoing_mode = msg.servoing_mode;
    }
    else {
      resolved.servoing_mode = 0
    }

    return resolved;
    }
};

module.exports = ServoingModeInformation;
