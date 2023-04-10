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

class UARTWordLength {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UARTWordLength
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UARTWordLength
    let len;
    let data = new UARTWordLength(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/UARTWordLength';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd77bc1cf43de7d8c64548008ccbf4e86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 UART_WORD_LENGTH_UNSPECIFIED = 0
    
    uint32 UART_WORD_LENGTH_7 = 1
    
    uint32 UART_WORD_LENGTH_8 = 2
    
    uint32 UART_WORD_LENGTH_9 = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UARTWordLength(null);
    return resolved;
    }
};

// Constants for message
UARTWordLength.Constants = {
  UART_WORD_LENGTH_UNSPECIFIED: 0,
  UART_WORD_LENGTH_7: 1,
  UART_WORD_LENGTH_8: 2,
  UART_WORD_LENGTH_9: 3,
}

module.exports = UARTWordLength;
