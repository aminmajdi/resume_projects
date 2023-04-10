// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SequenceTasksPair = require('../msg/SequenceTasksPair.js');

//-----------------------------------------------------------

let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

class SwapSequenceTasksRequest {
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
        this.input = new SequenceTasksPair();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwapSequenceTasksRequest
    // Serialize message field [input]
    bufferOffset = SequenceTasksPair.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwapSequenceTasksRequest
    let len;
    let data = new SwapSequenceTasksRequest(null);
    // Deserialize message field [input]
    data.input = SequenceTasksPair.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SwapSequenceTasksRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '494d10349695f1abf33970c62e6c9551';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SequenceTasksPair input
    
    ================================================================================
    MSG: kortex_driver/SequenceTasksPair
    
    SequenceHandle sequence_handle
    uint32 first_task_index
    uint32 second_task_index
    ================================================================================
    MSG: kortex_driver/SequenceHandle
    
    uint32 identifier
    uint32 permission
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwapSequenceTasksRequest(null);
    if (msg.input !== undefined) {
      resolved.input = SequenceTasksPair.Resolve(msg.input)
    }
    else {
      resolved.input = new SequenceTasksPair()
    }

    return resolved;
    }
};

class SwapSequenceTasksResponse {
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
    // Serializes a message object of type SwapSequenceTasksResponse
    // Serialize message field [output]
    bufferOffset = Empty.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwapSequenceTasksResponse
    let len;
    let data = new SwapSequenceTasksResponse(null);
    // Deserialize message field [output]
    data.output = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SwapSequenceTasksResponse';
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
    const resolved = new SwapSequenceTasksResponse(null);
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
  Request: SwapSequenceTasksRequest,
  Response: SwapSequenceTasksResponse,
  md5sum() { return '5e966d67ad7cb2fd416e98745a3e8271'; },
  datatype() { return 'kortex_driver/SwapSequenceTasks'; }
};
