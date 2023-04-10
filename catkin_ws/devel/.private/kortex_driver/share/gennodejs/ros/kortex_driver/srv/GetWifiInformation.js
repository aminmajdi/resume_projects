// Auto-generated. Do not edit!

// (in-package kortex_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Ssid = require('../msg/Ssid.js');

//-----------------------------------------------------------

let WifiInformation = require('../msg/WifiInformation.js');

//-----------------------------------------------------------

class GetWifiInformationRequest {
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
        this.input = new Ssid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWifiInformationRequest
    // Serialize message field [input]
    bufferOffset = Ssid.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWifiInformationRequest
    let len;
    let data = new GetWifiInformationRequest(null);
    // Deserialize message field [input]
    data.input = Ssid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Ssid.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/GetWifiInformationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e22d121851e9887ae67065d9db92deab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Ssid input
    
    ================================================================================
    MSG: kortex_driver/Ssid
    
    string identifier
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWifiInformationRequest(null);
    if (msg.input !== undefined) {
      resolved.input = Ssid.Resolve(msg.input)
    }
    else {
      resolved.input = new Ssid()
    }

    return resolved;
    }
};

class GetWifiInformationResponse {
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
        this.output = new WifiInformation();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWifiInformationResponse
    // Serialize message field [output]
    bufferOffset = WifiInformation.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWifiInformationResponse
    let len;
    let data = new GetWifiInformationResponse(null);
    // Deserialize message field [output]
    data.output = WifiInformation.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WifiInformation.getMessageSize(object.output);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kortex_driver/GetWifiInformationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ba865cd380cb46d3bb247102a4172a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WifiInformation output
    
    ================================================================================
    MSG: kortex_driver/WifiInformation
    
    Ssid ssid
    uint32 security_type
    uint32 encryption_type
    uint32 signal_quality
    int32 signal_strength
    uint32 frequency
    uint32 channel
    ================================================================================
    MSG: kortex_driver/Ssid
    
    string identifier
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWifiInformationResponse(null);
    if (msg.output !== undefined) {
      resolved.output = WifiInformation.Resolve(msg.output)
    }
    else {
      resolved.output = new WifiInformation()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWifiInformationRequest,
  Response: GetWifiInformationResponse,
  md5sum() { return '54ddc4afd24b3f5a522f79c66970e8fc'; },
  datatype() { return 'kortex_driver/GetWifiInformation'; }
};
