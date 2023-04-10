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

class Permission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Permission
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Permission
    let len;
    let data = new Permission(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/Permission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ae002b57072e72c8a5ded36bcd8b246';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 NO_PERMISSION = 0
    
    uint32 READ_PERMISSION = 1
    
    uint32 UPDATE_PERMISSION = 2
    
    uint32 DELETE_PERMISSION = 4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Permission(null);
    return resolved;
    }
};

// Constants for message
Permission.Constants = {
  NO_PERMISSION: 0,
  READ_PERMISSION: 1,
  UPDATE_PERMISSION: 2,
  DELETE_PERMISSION: 4,
}

module.exports = Permission;
