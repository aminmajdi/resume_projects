// Auto-generated. Do not edit!

// (in-package kortex_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ServoingModeNotification = require('./ServoingModeNotification.js');

//-----------------------------------------------------------

class ServoingModeNotificationList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.notifications = null;
    }
    else {
      if (initObj.hasOwnProperty('notifications')) {
        this.notifications = initObj.notifications
      }
      else {
        this.notifications = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoingModeNotificationList
    // Serialize message field [notifications]
    // Serialize the length for message field [notifications]
    bufferOffset = _serializer.uint32(obj.notifications.length, buffer, bufferOffset);
    obj.notifications.forEach((val) => {
      bufferOffset = ServoingModeNotification.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoingModeNotificationList
    let len;
    let data = new ServoingModeNotificationList(null);
    // Deserialize message field [notifications]
    // Deserialize array length for message field [notifications]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.notifications = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.notifications[i] = ServoingModeNotification.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.notifications.forEach((val) => {
      length += ServoingModeNotification.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/ServoingModeNotificationList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9daed8664816c4fde5542358c286e2a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    ServoingModeNotification[] notifications
    ================================================================================
    MSG: kortex_driver/ServoingModeNotification
    
    uint32 servoing_mode
    Timestamp timestamp
    UserProfileHandle user_handle
    Connection connection
    ================================================================================
    MSG: kortex_driver/Timestamp
    
    uint32 sec
    uint32 usec
    ================================================================================
    MSG: kortex_driver/UserProfileHandle
    
    uint32 identifier
    uint32 permission
    ================================================================================
    MSG: kortex_driver/Connection
    
    UserProfileHandle user_handle
    string connection_information
    uint32 connection_identifier
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoingModeNotificationList(null);
    if (msg.notifications !== undefined) {
      resolved.notifications = new Array(msg.notifications.length);
      for (let i = 0; i < resolved.notifications.length; ++i) {
        resolved.notifications[i] = ServoingModeNotification.Resolve(msg.notifications[i]);
      }
    }
    else {
      resolved.notifications = []
    }

    return resolved;
    }
};

module.exports = ServoingModeNotificationList;
