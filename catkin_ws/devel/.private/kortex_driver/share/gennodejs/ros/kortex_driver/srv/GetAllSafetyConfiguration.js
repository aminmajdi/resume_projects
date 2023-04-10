// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

let SafetyConfigurationList = require('../msg/SafetyConfigurationList.js');

//-----------------------------------------------------------

class GetAllSafetyConfigurationRequest {
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
        this.input = new Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllSafetyConfigurationRequest
    // Serialize message field [input]
    bufferOffset = Empty.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllSafetyConfigurationRequest
    let len;
    let data = new GetAllSafetyConfigurationRequest(null);
    // Deserialize message field [input]
    data.input = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/GetAllSafetyConfigurationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa3403cd5897c9698bc0fdcb2a453fbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Empty input
    
    ================================================================================
    MSG: kortex_driver/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllSafetyConfigurationRequest(null);
    if (msg.input !== undefined) {
      resolved.input = Empty.Resolve(msg.input)
    }
    else {
      resolved.input = new Empty()
    }

    return resolved;
    }
};

class GetAllSafetyConfigurationResponse {
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
        this.output = new SafetyConfigurationList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllSafetyConfigurationResponse
    // Serialize message field [output]
    bufferOffset = SafetyConfigurationList.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllSafetyConfigurationResponse
    let len;
    let data = new GetAllSafetyConfigurationResponse(null);
    // Deserialize message field [output]
    data.output = SafetyConfigurationList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SafetyConfigurationList.getMessageSize(object.output);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/GetAllSafetyConfigurationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec148bf5ee4957b9049b2931a26b0778';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SafetyConfigurationList output
    
    ================================================================================
    MSG: kortex_driver/SafetyConfigurationList
    
    SafetyConfiguration[] configuration
    ================================================================================
    MSG: kortex_driver/SafetyConfiguration
    
    SafetyHandle handle
    float32 error_threshold
    float32 warning_threshold
    SafetyEnable enable
    ================================================================================
    MSG: kortex_driver/SafetyHandle
    
    uint32 identifier
    ================================================================================
    MSG: kortex_driver/SafetyEnable
    
    SafetyHandle handle
    bool enable
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllSafetyConfigurationResponse(null);
    if (msg.output !== undefined) {
      resolved.output = SafetyConfigurationList.Resolve(msg.output)
    }
    else {
      resolved.output = new SafetyConfigurationList()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAllSafetyConfigurationRequest,
  Response: GetAllSafetyConfigurationResponse,
  md5sum() { return '332c0fb8c1c499e5ec5c674488e0110f'; },
  datatype() { return 'kortex_driver/GetAllSafetyConfiguration'; }
};
