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

class SafetyStatusValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyStatusValue
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyStatusValue
    let len;
    let data = new SafetyStatusValue(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/SafetyStatusValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f4f91637eeaf53ea8343202803cf904';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 SAFETY_STATUS_UNSPECIFIED = 0
    
    uint32 SAFETY_STATUS_WARNING = 1
    
    uint32 SAFETY_STATUS_ERROR = 2
    
    uint32 SAFETY_STATUS_NORMAL = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyStatusValue(null);
    return resolved;
    }
};

// Constants for message
SafetyStatusValue.Constants = {
  SAFETY_STATUS_UNSPECIFIED: 0,
  SAFETY_STATUS_WARNING: 1,
  SAFETY_STATUS_ERROR: 2,
  SAFETY_STATUS_NORMAL: 3,
}

module.exports = SafetyStatusValue;
