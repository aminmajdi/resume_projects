// Auto-generated. Do not edit!

// (in-package kortex_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let InterconnectCyclic_MessageId = require('./InterconnectCyclic_MessageId.js');
let InterconnectCyclic_CustomData_tool_customData = require('./InterconnectCyclic_CustomData_tool_customData.js');

//-----------------------------------------------------------

class InterconnectCyclic_CustomData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.custom_data_id = null;
      this.custom_data_0 = null;
      this.custom_data_1 = null;
      this.custom_data_2 = null;
      this.custom_data_3 = null;
      this.custom_data_4 = null;
      this.custom_data_5 = null;
      this.custom_data_6 = null;
      this.custom_data_7 = null;
      this.custom_data_8 = null;
      this.custom_data_9 = null;
      this.custom_data_10 = null;
      this.custom_data_11 = null;
      this.custom_data_12 = null;
      this.custom_data_13 = null;
      this.custom_data_14 = null;
      this.custom_data_15 = null;
      this.oneof_tool_customData = null;
    }
    else {
      if (initObj.hasOwnProperty('custom_data_id')) {
        this.custom_data_id = initObj.custom_data_id
      }
      else {
        this.custom_data_id = new InterconnectCyclic_MessageId();
      }
      if (initObj.hasOwnProperty('custom_data_0')) {
        this.custom_data_0 = initObj.custom_data_0
      }
      else {
        this.custom_data_0 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_1')) {
        this.custom_data_1 = initObj.custom_data_1
      }
      else {
        this.custom_data_1 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_2')) {
        this.custom_data_2 = initObj.custom_data_2
      }
      else {
        this.custom_data_2 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_3')) {
        this.custom_data_3 = initObj.custom_data_3
      }
      else {
        this.custom_data_3 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_4')) {
        this.custom_data_4 = initObj.custom_data_4
      }
      else {
        this.custom_data_4 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_5')) {
        this.custom_data_5 = initObj.custom_data_5
      }
      else {
        this.custom_data_5 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_6')) {
        this.custom_data_6 = initObj.custom_data_6
      }
      else {
        this.custom_data_6 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_7')) {
        this.custom_data_7 = initObj.custom_data_7
      }
      else {
        this.custom_data_7 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_8')) {
        this.custom_data_8 = initObj.custom_data_8
      }
      else {
        this.custom_data_8 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_9')) {
        this.custom_data_9 = initObj.custom_data_9
      }
      else {
        this.custom_data_9 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_10')) {
        this.custom_data_10 = initObj.custom_data_10
      }
      else {
        this.custom_data_10 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_11')) {
        this.custom_data_11 = initObj.custom_data_11
      }
      else {
        this.custom_data_11 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_12')) {
        this.custom_data_12 = initObj.custom_data_12
      }
      else {
        this.custom_data_12 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_13')) {
        this.custom_data_13 = initObj.custom_data_13
      }
      else {
        this.custom_data_13 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_14')) {
        this.custom_data_14 = initObj.custom_data_14
      }
      else {
        this.custom_data_14 = 0;
      }
      if (initObj.hasOwnProperty('custom_data_15')) {
        this.custom_data_15 = initObj.custom_data_15
      }
      else {
        this.custom_data_15 = 0;
      }
      if (initObj.hasOwnProperty('oneof_tool_customData')) {
        this.oneof_tool_customData = initObj.oneof_tool_customData
      }
      else {
        this.oneof_tool_customData = new InterconnectCyclic_CustomData_tool_customData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterconnectCyclic_CustomData
    // Serialize message field [custom_data_id]
    bufferOffset = InterconnectCyclic_MessageId.serialize(obj.custom_data_id, buffer, bufferOffset);
    // Serialize message field [custom_data_0]
    bufferOffset = _serializer.uint32(obj.custom_data_0, buffer, bufferOffset);
    // Serialize message field [custom_data_1]
    bufferOffset = _serializer.uint32(obj.custom_data_1, buffer, bufferOffset);
    // Serialize message field [custom_data_2]
    bufferOffset = _serializer.uint32(obj.custom_data_2, buffer, bufferOffset);
    // Serialize message field [custom_data_3]
    bufferOffset = _serializer.uint32(obj.custom_data_3, buffer, bufferOffset);
    // Serialize message field [custom_data_4]
    bufferOffset = _serializer.uint32(obj.custom_data_4, buffer, bufferOffset);
    // Serialize message field [custom_data_5]
    bufferOffset = _serializer.uint32(obj.custom_data_5, buffer, bufferOffset);
    // Serialize message field [custom_data_6]
    bufferOffset = _serializer.uint32(obj.custom_data_6, buffer, bufferOffset);
    // Serialize message field [custom_data_7]
    bufferOffset = _serializer.uint32(obj.custom_data_7, buffer, bufferOffset);
    // Serialize message field [custom_data_8]
    bufferOffset = _serializer.uint32(obj.custom_data_8, buffer, bufferOffset);
    // Serialize message field [custom_data_9]
    bufferOffset = _serializer.uint32(obj.custom_data_9, buffer, bufferOffset);
    // Serialize message field [custom_data_10]
    bufferOffset = _serializer.uint32(obj.custom_data_10, buffer, bufferOffset);
    // Serialize message field [custom_data_11]
    bufferOffset = _serializer.uint32(obj.custom_data_11, buffer, bufferOffset);
    // Serialize message field [custom_data_12]
    bufferOffset = _serializer.uint32(obj.custom_data_12, buffer, bufferOffset);
    // Serialize message field [custom_data_13]
    bufferOffset = _serializer.uint32(obj.custom_data_13, buffer, bufferOffset);
    // Serialize message field [custom_data_14]
    bufferOffset = _serializer.uint32(obj.custom_data_14, buffer, bufferOffset);
    // Serialize message field [custom_data_15]
    bufferOffset = _serializer.uint32(obj.custom_data_15, buffer, bufferOffset);
    // Serialize message field [oneof_tool_customData]
    bufferOffset = InterconnectCyclic_CustomData_tool_customData.serialize(obj.oneof_tool_customData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterconnectCyclic_CustomData
    let len;
    let data = new InterconnectCyclic_CustomData(null);
    // Deserialize message field [custom_data_id]
    data.custom_data_id = InterconnectCyclic_MessageId.deserialize(buffer, bufferOffset);
    // Deserialize message field [custom_data_0]
    data.custom_data_0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_1]
    data.custom_data_1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_2]
    data.custom_data_2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_3]
    data.custom_data_3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_4]
    data.custom_data_4 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_5]
    data.custom_data_5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_6]
    data.custom_data_6 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_7]
    data.custom_data_7 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_8]
    data.custom_data_8 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_9]
    data.custom_data_9 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_10]
    data.custom_data_10 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_11]
    data.custom_data_11 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_12]
    data.custom_data_12 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_13]
    data.custom_data_13 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_14]
    data.custom_data_14 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [custom_data_15]
    data.custom_data_15 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [oneof_tool_customData]
    data.oneof_tool_customData = InterconnectCyclic_CustomData_tool_customData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += InterconnectCyclic_CustomData_tool_customData.getMessageSize(object.oneof_tool_customData);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/InterconnectCyclic_CustomData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f180448c3bd7285547e1bae08efc80a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    InterconnectCyclic_MessageId custom_data_id
    uint32 custom_data_0
    uint32 custom_data_1
    uint32 custom_data_2
    uint32 custom_data_3
    uint32 custom_data_4
    uint32 custom_data_5
    uint32 custom_data_6
    uint32 custom_data_7
    uint32 custom_data_8
    uint32 custom_data_9
    uint32 custom_data_10
    uint32 custom_data_11
    uint32 custom_data_12
    uint32 custom_data_13
    uint32 custom_data_14
    uint32 custom_data_15
    InterconnectCyclic_CustomData_tool_customData oneof_tool_customData
    ================================================================================
    MSG: kortex_driver/InterconnectCyclic_MessageId
    
    uint32 identifier
    ================================================================================
    MSG: kortex_driver/InterconnectCyclic_CustomData_tool_customData
    
    GripperCyclic_CustomData[] gripper_custom_data
    ================================================================================
    MSG: kortex_driver/GripperCyclic_CustomData
    
    GripperCyclic_MessageId custom_data_id
    CustomDataUnit gripper_custom_data
    CustomDataUnit[] motor_custom_data
    ================================================================================
    MSG: kortex_driver/GripperCyclic_MessageId
    
    uint32 identifier
    ================================================================================
    MSG: kortex_driver/CustomDataUnit
    
    uint32 custom_data_0
    uint32 custom_data_1
    uint32 custom_data_2
    uint32 custom_data_3
    uint32 custom_data_4
    uint32 custom_data_5
    uint32 custom_data_6
    uint32 custom_data_7
    uint32 custom_data_8
    uint32 custom_data_9
    uint32 custom_data_10
    uint32 custom_data_11
    uint32 custom_data_12
    uint32 custom_data_13
    uint32 custom_data_14
    uint32 custom_data_15
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InterconnectCyclic_CustomData(null);
    if (msg.custom_data_id !== undefined) {
      resolved.custom_data_id = InterconnectCyclic_MessageId.Resolve(msg.custom_data_id)
    }
    else {
      resolved.custom_data_id = new InterconnectCyclic_MessageId()
    }

    if (msg.custom_data_0 !== undefined) {
      resolved.custom_data_0 = msg.custom_data_0;
    }
    else {
      resolved.custom_data_0 = 0
    }

    if (msg.custom_data_1 !== undefined) {
      resolved.custom_data_1 = msg.custom_data_1;
    }
    else {
      resolved.custom_data_1 = 0
    }

    if (msg.custom_data_2 !== undefined) {
      resolved.custom_data_2 = msg.custom_data_2;
    }
    else {
      resolved.custom_data_2 = 0
    }

    if (msg.custom_data_3 !== undefined) {
      resolved.custom_data_3 = msg.custom_data_3;
    }
    else {
      resolved.custom_data_3 = 0
    }

    if (msg.custom_data_4 !== undefined) {
      resolved.custom_data_4 = msg.custom_data_4;
    }
    else {
      resolved.custom_data_4 = 0
    }

    if (msg.custom_data_5 !== undefined) {
      resolved.custom_data_5 = msg.custom_data_5;
    }
    else {
      resolved.custom_data_5 = 0
    }

    if (msg.custom_data_6 !== undefined) {
      resolved.custom_data_6 = msg.custom_data_6;
    }
    else {
      resolved.custom_data_6 = 0
    }

    if (msg.custom_data_7 !== undefined) {
      resolved.custom_data_7 = msg.custom_data_7;
    }
    else {
      resolved.custom_data_7 = 0
    }

    if (msg.custom_data_8 !== undefined) {
      resolved.custom_data_8 = msg.custom_data_8;
    }
    else {
      resolved.custom_data_8 = 0
    }

    if (msg.custom_data_9 !== undefined) {
      resolved.custom_data_9 = msg.custom_data_9;
    }
    else {
      resolved.custom_data_9 = 0
    }

    if (msg.custom_data_10 !== undefined) {
      resolved.custom_data_10 = msg.custom_data_10;
    }
    else {
      resolved.custom_data_10 = 0
    }

    if (msg.custom_data_11 !== undefined) {
      resolved.custom_data_11 = msg.custom_data_11;
    }
    else {
      resolved.custom_data_11 = 0
    }

    if (msg.custom_data_12 !== undefined) {
      resolved.custom_data_12 = msg.custom_data_12;
    }
    else {
      resolved.custom_data_12 = 0
    }

    if (msg.custom_data_13 !== undefined) {
      resolved.custom_data_13 = msg.custom_data_13;
    }
    else {
      resolved.custom_data_13 = 0
    }

    if (msg.custom_data_14 !== undefined) {
      resolved.custom_data_14 = msg.custom_data_14;
    }
    else {
      resolved.custom_data_14 = 0
    }

    if (msg.custom_data_15 !== undefined) {
      resolved.custom_data_15 = msg.custom_data_15;
    }
    else {
      resolved.custom_data_15 = 0
    }

    if (msg.oneof_tool_customData !== undefined) {
      resolved.oneof_tool_customData = InterconnectCyclic_CustomData_tool_customData.Resolve(msg.oneof_tool_customData)
    }
    else {
      resolved.oneof_tool_customData = new InterconnectCyclic_CustomData_tool_customData()
    }

    return resolved;
    }
};

module.exports = InterconnectCyclic_CustomData;
