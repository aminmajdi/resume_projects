// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SequenceHandle = require('../msg/SequenceHandle.js');

//-----------------------------------------------------------

let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

class DeleteSequenceRequest {
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
        this.input = new SequenceHandle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeleteSequenceRequest
    // Serialize message field [input]
    bufferOffset = SequenceHandle.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteSequenceRequest
    let len;
    let data = new DeleteSequenceRequest(null);
    // Deserialize message field [input]
    data.input = SequenceHandle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/DeleteSequenceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bece15bd6f474817d8cf8261b2df5e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SequenceHandle input
    
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
    const resolved = new DeleteSequenceRequest(null);
    if (msg.input !== undefined) {
      resolved.input = SequenceHandle.Resolve(msg.input)
    }
    else {
      resolved.input = new SequenceHandle()
    }

    return resolved;
    }
};

class DeleteSequenceResponse {
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
    // Serializes a message object of type DeleteSequenceResponse
    // Serialize message field [output]
    bufferOffset = Empty.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteSequenceResponse
    let len;
    let data = new DeleteSequenceResponse(null);
    // Deserialize message field [output]
    data.output = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/DeleteSequenceResponse';
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
    const resolved = new DeleteSequenceResponse(null);
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
  Request: DeleteSequenceRequest,
  Response: DeleteSequenceResponse,
  md5sum() { return '04dfaeca45772f660e0913aa84774e13'; },
  datatype() { return 'kortex_driver/DeleteSequence'; }
};
