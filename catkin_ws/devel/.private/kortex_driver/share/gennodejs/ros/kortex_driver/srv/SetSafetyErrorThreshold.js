// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SafetyThreshold = require('../msg/SafetyThreshold.js');

//-----------------------------------------------------------

let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

class SetSafetyErrorThresholdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = new SafetyThreshold();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSafetyErrorThresholdRequest
    // Serialize message field [input]
    bufferOffset = SafetyThreshold.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSafetyErrorThresholdRequest
    let len;
    let data = new SetSafetyErrorThresholdRequest(null);
    // Deserialize message field [input]
    data.input = SafetyThreshold.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SetSafetyErrorThresholdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92240d8a2ec0df952fd692cc9584bef6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SafetyThreshold input
    
    ================================================================================
    MSG: kortex_driver/SafetyThreshold
    
    SafetyHandle handle
    float32 value
    ================================================================================
    MSG: kortex_driver/SafetyHandle
    
    uint32 identifier
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSafetyErrorThresholdRequest(null);
    if (msg.input !== undefined) {
      resolved.input = SafetyThreshold.Resolve(msg.input)
    }
    else {
      resolved.input = new SafetyThreshold()
    }

    return resolved;
    }
};

class SetSafetyErrorThresholdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = new Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSafetyErrorThresholdResponse
    // Serialize message field [output]
    bufferOffset = Empty.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSafetyErrorThresholdResponse
    let len;
    let data = new SetSafetyErrorThresholdResponse(null);
    // Deserialize message field [output]
    data.output = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SetSafetyErrorThresholdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6c43d221c810050f75091660f63b0cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Empty output
    
    ================================================================================
    MSG: kortex_driver/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSafetyErrorThresholdResponse(null);
    if (msg.output !== undefined) {
      resolved.output = Empty.Resolve(msg.output)
    }
    else {
      resolved.output = new Empty()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetSafetyErrorThresholdRequest,
  Response: SetSafetyErrorThresholdResponse,
  md5sum() { return '0d6527f8c0e63583f63fafeb1405804a'; },
  datatype() { return 'kortex_driver/SetSafetyErrorThreshold'; }
};
