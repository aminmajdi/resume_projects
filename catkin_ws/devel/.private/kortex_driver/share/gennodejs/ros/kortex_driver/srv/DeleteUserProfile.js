// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UserProfileHandle = require('../msg/UserProfileHandle.js');

//-----------------------------------------------------------

let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

class DeleteUserProfileRequest {
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
        this.input = new UserProfileHandle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeleteUserProfileRequest
    // Serialize message field [input]
    bufferOffset = UserProfileHandle.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteUserProfileRequest
    let len;
    let data = new DeleteUserProfileRequest(null);
    // Deserialize message field [input]
    data.input = UserProfileHandle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/DeleteUserProfileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bece15bd6f474817d8cf8261b2df5e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UserProfileHandle input
    
    ================================================================================
    MSG: kortex_driver/UserProfileHandle
    
    uint32 identifier
    uint32 permission
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeleteUserProfileRequest(null);
    if (msg.input !== undefined) {
      resolved.input = UserProfileHandle.Resolve(msg.input)
    }
    else {
      resolved.input = new UserProfileHandle()
    }

    return resolved;
    }
};

class DeleteUserProfileResponse {
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
    // Serializes a message object of type DeleteUserProfileResponse
    // Serialize message field [output]
    bufferOffset = Empty.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteUserProfileResponse
    let len;
    let data = new DeleteUserProfileResponse(null);
    // Deserialize message field [output]
    data.output = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/DeleteUserProfileResponse';
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
    const resolved = new DeleteUserProfileResponse(null);
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
  Request: DeleteUserProfileRequest,
  Response: DeleteUserProfileResponse,
  md5sum() { return '04dfaeca45772f660e0913aa84774e13'; },
  datatype() { return 'kortex_driver/DeleteUserProfile'; }
};
