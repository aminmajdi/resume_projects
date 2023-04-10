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

let Pose = require('../msg/Pose.js');

//-----------------------------------------------------------

class GetMeasuredCartesianPoseRequest {
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
    // Serializes a message object of type GetMeasuredCartesianPoseRequest
    // Serialize message field [input]
    bufferOffset = Empty.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMeasuredCartesianPoseRequest
    let len;
    let data = new GetMeasuredCartesianPoseRequest(null);
    // Deserialize message field [input]
    data.input = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/GetMeasuredCartesianPoseRequest';
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
    const resolved = new GetMeasuredCartesianPoseRequest(null);
    if (msg.input !== undefined) {
      resolved.input = Empty.Resolve(msg.input)
    }
    else {
      resolved.input = new Empty()
    }

    return resolved;
    }
};

class GetMeasuredCartesianPoseResponse {
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
        this.output = new Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMeasuredCartesianPoseResponse
    // Serialize message field [output]
    bufferOffset = Pose.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMeasuredCartesianPoseResponse
    let len;
    let data = new GetMeasuredCartesianPoseResponse(null);
    // Deserialize message field [output]
    data.output = Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/GetMeasuredCartesianPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '688d02aea2316337d5932f2510ac9325';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Pose output
    
    ================================================================================
    MSG: kortex_driver/Pose
    
    float32 x
    float32 y
    float32 z
    float32 theta_x
    float32 theta_y
    float32 theta_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMeasuredCartesianPoseResponse(null);
    if (msg.output !== undefined) {
      resolved.output = Pose.Resolve(msg.output)
    }
    else {
      resolved.output = new Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMeasuredCartesianPoseRequest,
  Response: GetMeasuredCartesianPoseResponse,
  md5sum() { return '4eaf9f25cbe269662009a9ad397d3f07'; },
  datatype() { return 'kortex_driver/GetMeasuredCartesianPose'; }
};
