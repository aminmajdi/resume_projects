// Auto-generated. Do not edit!

// (in-package kortex_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SubErrorCodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubErrorCodes
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubErrorCodes
    let len;
    let data = new SubErrorCodes(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kortex_driver/SubErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ede778acac401c3fdc814c471888cc4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 SUB_ERROR_NONE = 0
    
    uint32 METHOD_FAILED = 1
    
    uint32 UNIMPLEMENTED = 2
    
    uint32 INVALID_PARAM = 3
    
    uint32 UNSUPPORTED_SERVICE = 4
    
    uint32 UNSUPPORTED_METHOD = 5
    
    uint32 TOO_LARGE_ENCODED_FRAME_BUFFER = 6
    
    uint32 FRAME_ENCODING_ERR = 7
    
    uint32 FRAME_DECODING_ERR = 8
    
    uint32 INCOMPATIBLE_HEADER_VERSION = 9
    
    uint32 UNSUPPORTED_FRAME_TYPE = 10
    
    uint32 UNREGISTERED_NOTIFICATION_RECEIVED = 11
    
    uint32 INVALID_SESSION = 12
    
    uint32 PAYLOAD_DECODING_ERR = 13
    
    uint32 UNREGISTERED_FRAME_RECEIVED = 14
    
    uint32 INVALID_PASSWORD = 15
    
    uint32 USER_NOT_FOUND = 16
    
    uint32 ENTITY_NOT_FOUND = 17
    
    uint32 ROBOT_MOVEMENT_IN_PROGRESS = 18
    
    uint32 ROBOT_NOT_MOVING = 19
    
    uint32 NO_MORE_STORAGE_SPACE = 20
    
    uint32 ROBOT_NOT_READY = 21
    
    uint32 ROBOT_IN_FAULT = 22
    
    uint32 ROBOT_IN_MAINTENANCE = 23
    
    uint32 ROBOT_IN_UPDATE_MODE = 24
    
    uint32 ROBOT_IN_EMERGENCY_STOP = 25
    
    uint32 SINGLE_LEVEL_SERVOING = 26
    
    uint32 LOW_LEVEL_SERVOING = 27
    
    uint32 MAPPING_GROUP_NON_ROOT = 28
    
    uint32 MAPPING_INVALID_GROUP = 29
    
    uint32 MAPPING_INVALID_MAP = 30
    
    uint32 MAP_GROUP_INVALID_MAP = 31
    
    uint32 MAP_GROUP_INVALID_PARENT = 32
    
    uint32 MAP_GROUP_INVALID_CHILD = 33
    
    uint32 MAP_GROUP_INVALID_MOVE = 34
    
    uint32 MAP_IN_USE = 35
    
    uint32 WIFI_CONNECT_ERROR = 36
    
    uint32 UNSUPPORTED_NETWORK_TYPE = 37
    
    uint32 TOO_LARGE_ENCODED_PAYLOAD_BUFFER = 38
    
    uint32 UPDATE_PERMISSION_DENIED = 39
    
    uint32 DELETE_PERMISSION_DENIED = 40
    
    uint32 DATABASE_ERROR = 41
    
    uint32 UNSUPPORTED_OPTION = 42
    
    uint32 UNSUPPORTED_RESOLUTION = 43
    
    uint32 UNSUPPORTED_FRAME_RATE = 44
    
    uint32 UNSUPPORTED_BIT_RATE = 45
    
    uint32 UNSUPPORTED_ACTION = 46
    
    uint32 UNSUPPORTED_FOCUS_ACTION = 47
    
    uint32 VALUE_IS_ABOVE_MAXIMUM = 48
    
    uint32 VALUE_IS_BELOW_MINIMUM = 49
    
    uint32 DEVICE_DISCONNECTED = 50
    
    uint32 DEVICE_NOT_READY = 51
    
    uint32 INVALID_DEVICE = 52
    
    uint32 SAFETY_THRESHOLD_REACHED = 53
    
    uint32 INVALID_USER_SESSION_ACCESS = 54
    
    uint32 CONTROL_MANUAL_STOP = 55
    
    uint32 CONTROL_OUTSIDE_WORKSPACE = 56
    
    uint32 CONTROL_ACTUATOR_COUNT_MISMATCH = 57
    
    uint32 CONTROL_INVALID_DURATION = 58
    
    uint32 CONTROL_INVALID_SPEED = 59
    
    uint32 CONTROL_LARGE_SPEED = 60
    
    uint32 CONTROL_INVALID_ACCELERATION = 61
    
    uint32 CONTROL_INVALID_TIME_STEP = 62
    
    uint32 CONTROL_LARGE_SIZE = 63
    
    uint32 CONTROL_WRONG_MODE = 64
    
    uint32 CONTROL_JOINT_POSITION_LIMIT = 65
    
    uint32 CONTROL_NO_FILE_IN_MEMORY = 66
    
    uint32 CONTROL_INDEX_OUT_OF_TRAJECTORY = 67
    
    uint32 CONTROL_ALREADY_RUNNING = 68
    
    uint32 CONTROL_WRONG_STARTING_POINT = 69
    
    uint32 CONTROL_CARTESIAN_CANNOT_START = 70
    
    uint32 CONTROL_UNDEFINED_CONSTRAINT = 71
    
    uint32 CONTROL_UNINITIALIZED = 72
    
    uint32 CONTROL_NO_ACTION = 73
    
    uint32 CONTROL_UNDEFINED = 74
    
    uint32 WRONG_SERVOING_MODE = 75
    
    uint32 CONTROL_WRONG_STARTING_SPEED = 76
    
    uint32 USERNAME_LENGTH_EXCEEDED = 100
    
    uint32 FIRSTNAME_LENGTH_EXCEEDED = 101
    
    uint32 LASTNAME_LENGTH_EXCEEDED = 102
    
    uint32 PASSWORD_LENGTH_EXCEEDED = 103
    
    uint32 USERNAME_ALREADY_EXISTS = 104
    
    uint32 USERNAME_EMPTY = 105
    
    uint32 PASSWORD_NOT_CHANGED = 106
    
    uint32 MAXIMUM_USER_PROFILES_USED = 107
    
    uint32 ROUTER_UNVAILABLE = 108
    
    uint32 ADDRESS_NOT_IN_VALID_RANGE = 120
    
    uint32 ADDRESS_NOT_CONFIGURABLE = 121
    
    uint32 SESSION_NOT_IN_CONTROL = 130
    
    uint32 METHOD_TIMEOUT = 131
    
    uint32 UNSUPPORTED_ROBOT_CONFIGURATION = 132
    
    uint32 NVRAM_READ_FAIL = 133
    
    uint32 NVRAM_WRITE_FAIL = 134
    
    uint32 NETWORK_NO_ADDRESS_ASSIGNED = 135
    
    uint32 READ_PERMISSION_DENIED = 136
    
    uint32 CONTROLLER_INVALID_MAPPING = 137
    
    uint32 ACTION_IN_USE = 138
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubErrorCodes(null);
    return resolved;
    }
};

// Constants for message
SubErrorCodes.Constants = {
  SUB_ERROR_NONE: 0,
  METHOD_FAILED: 1,
  UNIMPLEMENTED: 2,
  INVALID_PARAM: 3,
  UNSUPPORTED_SERVICE: 4,
  UNSUPPORTED_METHOD: 5,
  TOO_LARGE_ENCODED_FRAME_BUFFER: 6,
  FRAME_ENCODING_ERR: 7,
  FRAME_DECODING_ERR: 8,
  INCOMPATIBLE_HEADER_VERSION: 9,
  UNSUPPORTED_FRAME_TYPE: 10,
  UNREGISTERED_NOTIFICATION_RECEIVED: 11,
  INVALID_SESSION: 12,
  PAYLOAD_DECODING_ERR: 13,
  UNREGISTERED_FRAME_RECEIVED: 14,
  INVALID_PASSWORD: 15,
  USER_NOT_FOUND: 16,
  ENTITY_NOT_FOUND: 17,
  ROBOT_MOVEMENT_IN_PROGRESS: 18,
  ROBOT_NOT_MOVING: 19,
  NO_MORE_STORAGE_SPACE: 20,
  ROBOT_NOT_READY: 21,
  ROBOT_IN_FAULT: 22,
  ROBOT_IN_MAINTENANCE: 23,
  ROBOT_IN_UPDATE_MODE: 24,
  ROBOT_IN_EMERGENCY_STOP: 25,
  SINGLE_LEVEL_SERVOING: 26,
  LOW_LEVEL_SERVOING: 27,
  MAPPING_GROUP_NON_ROOT: 28,
  MAPPING_INVALID_GROUP: 29,
  MAPPING_INVALID_MAP: 30,
  MAP_GROUP_INVALID_MAP: 31,
  MAP_GROUP_INVALID_PARENT: 32,
  MAP_GROUP_INVALID_CHILD: 33,
  MAP_GROUP_INVALID_MOVE: 34,
  MAP_IN_USE: 35,
  WIFI_CONNECT_ERROR: 36,
  UNSUPPORTED_NETWORK_TYPE: 37,
  TOO_LARGE_ENCODED_PAYLOAD_BUFFER: 38,
  UPDATE_PERMISSION_DENIED: 39,
  DELETE_PERMISSION_DENIED: 40,
  DATABASE_ERROR: 41,
  UNSUPPORTED_OPTION: 42,
  UNSUPPORTED_RESOLUTION: 43,
  UNSUPPORTED_FRAME_RATE: 44,
  UNSUPPORTED_BIT_RATE: 45,
  UNSUPPORTED_ACTION: 46,
  UNSUPPORTED_FOCUS_ACTION: 47,
  VALUE_IS_ABOVE_MAXIMUM: 48,
  VALUE_IS_BELOW_MINIMUM: 49,
  DEVICE_DISCONNECTED: 50,
  DEVICE_NOT_READY: 51,
  INVALID_DEVICE: 52,
  SAFETY_THRESHOLD_REACHED: 53,
  INVALID_USER_SESSION_ACCESS: 54,
  CONTROL_MANUAL_STOP: 55,
  CONTROL_OUTSIDE_WORKSPACE: 56,
  CONTROL_ACTUATOR_COUNT_MISMATCH: 57,
  CONTROL_INVALID_DURATION: 58,
  CONTROL_INVALID_SPEED: 59,
  CONTROL_LARGE_SPEED: 60,
  CONTROL_INVALID_ACCELERATION: 61,
  CONTROL_INVALID_TIME_STEP: 62,
  CONTROL_LARGE_SIZE: 63,
  CONTROL_WRONG_MODE: 64,
  CONTROL_JOINT_POSITION_LIMIT: 65,
  CONTROL_NO_FILE_IN_MEMORY: 66,
  CONTROL_INDEX_OUT_OF_TRAJECTORY: 67,
  CONTROL_ALREADY_RUNNING: 68,
  CONTROL_WRONG_STARTING_POINT: 69,
  CONTROL_CARTESIAN_CANNOT_START: 70,
  CONTROL_UNDEFINED_CONSTRAINT: 71,
  CONTROL_UNINITIALIZED: 72,
  CONTROL_NO_ACTION: 73,
  CONTROL_UNDEFINED: 74,
  WRONG_SERVOING_MODE: 75,
  CONTROL_WRONG_STARTING_SPEED: 76,
  USERNAME_LENGTH_EXCEEDED: 100,
  FIRSTNAME_LENGTH_EXCEEDED: 101,
  LASTNAME_LENGTH_EXCEEDED: 102,
  PASSWORD_LENGTH_EXCEEDED: 103,
  USERNAME_ALREADY_EXISTS: 104,
  USERNAME_EMPTY: 105,
  PASSWORD_NOT_CHANGED: 106,
  MAXIMUM_USER_PROFILES_USED: 107,
  ROUTER_UNVAILABLE: 108,
  ADDRESS_NOT_IN_VALID_RANGE: 120,
  ADDRESS_NOT_CONFIGURABLE: 121,
  SESSION_NOT_IN_CONTROL: 130,
  METHOD_TIMEOUT: 131,
  UNSUPPORTED_ROBOT_CONFIGURATION: 132,
  NVRAM_READ_FAIL: 133,
  NVRAM_WRITE_FAIL: 134,
  NETWORK_NO_ADDRESS_ASSIGNED: 135,
  READ_PERMISSION_DENIED: 136,
  CONTROLLER_INVALID_MAPPING: 137,
  ACTION_IN_USE: 138,
}

module.exports = SubErrorCodes;
