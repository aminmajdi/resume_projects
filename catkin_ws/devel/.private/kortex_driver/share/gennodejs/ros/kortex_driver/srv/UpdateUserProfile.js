// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UserProfile = require('../msg/UserProfile.js');

//-----------------------------------------------------------

let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

class UpdateUserProfileRequest {
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
        this.input = new UserProfile();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateUserProfileRequest
    // Serialize message field [input]
    bufferOffset = UserProfile.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateUserProfileRequest
    let len;
    let data = new UpdateUserProfileRequest(null);
    // Deserialize message field [input]
    data.input = UserProfile.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UserProfile.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/UpdateUserProfileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '759cfa6ab6da4b488c7a1ac251741de6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UserProfile input
    
    ================================================================================
    MSG: kortex_driver/UserProfile
    
    UserProfileHandle handle
    string username
    string firstname
    string lastname
    string application_data
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
    const resolved = new UpdateUserProfileRequest(null);
    if (msg.input !== undefined) {
      resolved.input = UserProfile.Resolve(msg.input)
    }
    else {
      resolved.input = new UserProfile()
    }

    return resolved;
    }
};

class UpdateUserProfileResponse {
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
    // Serializes a message object of type UpdateUserProfileResponse
    // Serialize message field [output]
    bufferOffset = Empty.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateUserProfileResponse
    let len;
    let data = new UpdateUserProfileResponse(null);
    // Deserialize message field [output]
    data.output = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/UpdateUserProfileResponse';
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
    const resolved = new UpdateUserProfileResponse(null);
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
  Request: UpdateUserProfileRequest,
  Response: UpdateUserProfileResponse,
  md5sum() { return '75eb07981bad53b9f3b10bd6121afb95'; },
  datatype() { return 'kortex_driver/UpdateUserProfile'; }
};
