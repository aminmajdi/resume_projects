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

class I2CDeviceAddressing {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type I2CDeviceAddressing
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type I2CDeviceAddressing
    let len;
    let data = new I2CDeviceAddressing(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/I2CDeviceAddressing';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6df7de78b1ed95513b026e1947c58a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 I2C_DEVICE_ADDRESSING_UNSPECIFIED = 0
    
    uint32 I2C_DEVICE_ADDRESSING_7_BITS = 1
    
    uint32 I2C_DEVICE_ADDRESSING_10_BITS = 2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new I2CDeviceAddressing(null);
    return resolved;
    }
};

// Constants for message
I2CDeviceAddressing.Constants = {
  I2C_DEVICE_ADDRESSING_UNSPECIFIED: 0,
  I2C_DEVICE_ADDRESSING_7_BITS: 1,
  I2C_DEVICE_ADDRESSING_10_BITS: 2,
}

module.exports = I2CDeviceAddressing;
