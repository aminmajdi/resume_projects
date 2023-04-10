// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControlLoopParameters = require('../msg/ControlLoopParameters.js');

//-----------------------------------------------------------

let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

class SetControlLoopParametersRequest {
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
        this.input = new ControlLoopParameters();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetControlLoopParametersRequest
    // Serialize message field [input]
    bufferOffset = ControlLoopParameters.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetControlLoopParametersRequest
    let len;
    let data = new SetControlLoopParametersRequest(null);
    // Deserialize message field [input]
    data.input = ControlLoopParameters.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ControlLoopParameters.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SetControlLoopParametersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bb6506faeaa702f1bb7d4854ed5cc11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ControlLoopParameters input
    
    ================================================================================
    MSG: kortex_driver/ControlLoopParameters
    
    uint32 loop_selection
    float32 error_saturation
    float32 output_saturation
    float32[] kAz
    float32[] kBz
    float32 error_dead_band
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetControlLoopParametersRequest(null);
    if (msg.input !== undefined) {
      resolved.input = ControlLoopParameters.Resolve(msg.input)
    }
    else {
      resolved.input = new ControlLoopParameters()
    }

    return resolved;
    }
};

class SetControlLoopParametersResponse {
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
    // Serializes a message object of type SetControlLoopParametersResponse
    // Serialize message field [output]
    bufferOffset = Empty.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetControlLoopParametersResponse
    let len;
    let data = new SetControlLoopParametersResponse(null);
    // Deserialize message field [output]
    data.output = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SetControlLoopParametersResponse';
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
    const resolved = new SetControlLoopParametersResponse(null);
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
  Request: SetControlLoopParametersRequest,
  Response: SetControlLoopParametersResponse,
  md5sum() { return '233c2c0defb94e1f2d65e518d2df07b0'; },
  datatype() { return 'kortex_driver/SetControlLoopParameters'; }
};
