// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProtectionZone = require('../msg/ProtectionZone.js');

//-----------------------------------------------------------

let ProtectionZoneHandle = require('../msg/ProtectionZoneHandle.js');

//-----------------------------------------------------------

class CreateProtectionZoneRequest {
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
        this.input = new ProtectionZone();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreateProtectionZoneRequest
    // Serialize message field [input]
    bufferOffset = ProtectionZone.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateProtectionZoneRequest
    let len;
    let data = new CreateProtectionZoneRequest(null);
    // Deserialize message field [input]
    data.input = ProtectionZone.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ProtectionZone.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/CreateProtectionZoneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d5a655d6317e3b457ac496f23c160cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ProtectionZone input
    
    ================================================================================
    MSG: kortex_driver/ProtectionZone
    
    ProtectionZoneHandle handle
    string name
    string application_data
    bool is_enabled
    ZoneShape shape
    CartesianLimitation[] limitations
    CartesianLimitation[] envelope_limitations
    ================================================================================
    MSG: kortex_driver/ProtectionZoneHandle
    
    uint32 identifier
    uint32 permission
    ================================================================================
    MSG: kortex_driver/ZoneShape
    
    uint32 shape_type
    Point origin
    Base_RotationMatrix orientation
    float32[] dimensions
    float32 envelope_thickness
    ================================================================================
    MSG: kortex_driver/Point
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: kortex_driver/Base_RotationMatrix
    
    Base_RotationMatrixRow row1
    Base_RotationMatrixRow row2
    Base_RotationMatrixRow row3
    ================================================================================
    MSG: kortex_driver/Base_RotationMatrixRow
    
    float32 column1
    float32 column2
    float32 column3
    ================================================================================
    MSG: kortex_driver/CartesianLimitation
    
    uint32 type
    float32 translation
    float32 orientation
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateProtectionZoneRequest(null);
    if (msg.input !== undefined) {
      resolved.input = ProtectionZone.Resolve(msg.input)
    }
    else {
      resolved.input = new ProtectionZone()
    }

    return resolved;
    }
};

class CreateProtectionZoneResponse {
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
        this.output = new ProtectionZoneHandle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreateProtectionZoneResponse
    // Serialize message field [output]
    bufferOffset = ProtectionZoneHandle.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateProtectionZoneResponse
    let len;
    let data = new CreateProtectionZoneResponse(null);
    // Deserialize message field [output]
    data.output = ProtectionZoneHandle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/CreateProtectionZoneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '335f209b31742c233f4d4fd3cb08b30f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ProtectionZoneHandle output
    
    ================================================================================
    MSG: kortex_driver/ProtectionZoneHandle
    
    uint32 identifier
    uint32 permission
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateProtectionZoneResponse(null);
    if (msg.output !== undefined) {
      resolved.output = ProtectionZoneHandle.Resolve(msg.output)
    }
    else {
      resolved.output = new ProtectionZoneHandle()
    }

    return resolved;
    }
};

module.exports = {
  Request: CreateProtectionZoneRequest,
  Response: CreateProtectionZoneResponse,
  md5sum() { return 'e5380d610764b507278413b8ea5bd27f'; },
  datatype() { return 'kortex_driver/CreateProtectionZone'; }
};
