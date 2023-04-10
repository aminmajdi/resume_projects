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

class ControlConfig_ServiceVersion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlConfig_ServiceVersion
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlConfig_ServiceVersion
    let len;
    let data = new ControlConfig_ServiceVersion(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/ControlConfig_ServiceVersion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8624be8e7830df48d9964b7612fa5b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 RESERVED_0 = 0
    
    uint32 CURRENT_VERSION = 1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlConfig_ServiceVersion(null);
    return resolved;
    }
};

// Constants for message
ControlConfig_ServiceVersion.Constants = {
  RESERVED_0: 0,
  CURRENT_VERSION: 1,
}

module.exports = ControlConfig_ServiceVersion;
