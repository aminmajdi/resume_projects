// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GripperCommand = require('../msg/GripperCommand.js');

//-----------------------------------------------------------

let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------

class SendGripperCommandRequest {
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
        this.input = new GripperCommand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendGripperCommandRequest
    // Serialize message field [input]
    bufferOffset = GripperCommand.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendGripperCommandRequest
    let len;
    let data = new SendGripperCommandRequest(null);
    // Deserialize message field [input]
    data.input = GripperCommand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GripperCommand.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SendGripperCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2e28834f592100adb21267b0746aa2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    GripperCommand input
    
    ================================================================================
    MSG: kortex_driver/GripperCommand
    
    uint32 mode
    Gripper gripper
    uint32 duration
    ================================================================================
    MSG: kortex_driver/Gripper
    
    Finger[] finger
    ================================================================================
    MSG: kortex_driver/Finger
    
    uint32 finger_identifier
    float32 value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendGripperCommandRequest(null);
    if (msg.input !== undefined) {
      resolved.input = GripperCommand.Resolve(msg.input)
    }
    else {
      resolved.input = new GripperCommand()
    }

    return resolved;
    }
};

class SendGripperCommandResponse {
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
    // Serializes a message object of type SendGripperCommandResponse
    // Serialize message field [output]
    bufferOffset = Empty.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendGripperCommandResponse
    let len;
    let data = new SendGripperCommandResponse(null);
    // Deserialize message field [output]
    data.output = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/SendGripperCommandResponse';
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
    const resolved = new SendGripperCommandResponse(null);
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
  Request: SendGripperCommandRequest,
  Response: SendGripperCommandResponse,
  md5sum() { return 'd750c71a9686ff834d5687f20aaad330'; },
  datatype() { return 'kortex_driver/SendGripperCommand'; }
};
