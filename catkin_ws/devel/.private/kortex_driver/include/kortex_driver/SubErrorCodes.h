// Generated by gencpp from file kortex_driver/SubErrorCodes.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_SUBERRORCODES_H
#define KORTEX_DRIVER_MESSAGE_SUBERRORCODES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kortex_driver
{
template <class ContainerAllocator>
struct SubErrorCodes_
{
  typedef SubErrorCodes_<ContainerAllocator> Type;

  SubErrorCodes_()
    {
    }
  SubErrorCodes_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }





// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SUB_ERROR_NONE)
  #undef SUB_ERROR_NONE
#endif
#if defined(_WIN32) && defined(METHOD_FAILED)
  #undef METHOD_FAILED
#endif
#if defined(_WIN32) && defined(UNIMPLEMENTED)
  #undef UNIMPLEMENTED
#endif
#if defined(_WIN32) && defined(INVALID_PARAM)
  #undef INVALID_PARAM
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_SERVICE)
  #undef UNSUPPORTED_SERVICE
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_METHOD)
  #undef UNSUPPORTED_METHOD
#endif
#if defined(_WIN32) && defined(TOO_LARGE_ENCODED_FRAME_BUFFER)
  #undef TOO_LARGE_ENCODED_FRAME_BUFFER
#endif
#if defined(_WIN32) && defined(FRAME_ENCODING_ERR)
  #undef FRAME_ENCODING_ERR
#endif
#if defined(_WIN32) && defined(FRAME_DECODING_ERR)
  #undef FRAME_DECODING_ERR
#endif
#if defined(_WIN32) && defined(INCOMPATIBLE_HEADER_VERSION)
  #undef INCOMPATIBLE_HEADER_VERSION
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_FRAME_TYPE)
  #undef UNSUPPORTED_FRAME_TYPE
#endif
#if defined(_WIN32) && defined(UNREGISTERED_NOTIFICATION_RECEIVED)
  #undef UNREGISTERED_NOTIFICATION_RECEIVED
#endif
#if defined(_WIN32) && defined(INVALID_SESSION)
  #undef INVALID_SESSION
#endif
#if defined(_WIN32) && defined(PAYLOAD_DECODING_ERR)
  #undef PAYLOAD_DECODING_ERR
#endif
#if defined(_WIN32) && defined(UNREGISTERED_FRAME_RECEIVED)
  #undef UNREGISTERED_FRAME_RECEIVED
#endif
#if defined(_WIN32) && defined(INVALID_PASSWORD)
  #undef INVALID_PASSWORD
#endif
#if defined(_WIN32) && defined(USER_NOT_FOUND)
  #undef USER_NOT_FOUND
#endif
#if defined(_WIN32) && defined(ENTITY_NOT_FOUND)
  #undef ENTITY_NOT_FOUND
#endif
#if defined(_WIN32) && defined(ROBOT_MOVEMENT_IN_PROGRESS)
  #undef ROBOT_MOVEMENT_IN_PROGRESS
#endif
#if defined(_WIN32) && defined(ROBOT_NOT_MOVING)
  #undef ROBOT_NOT_MOVING
#endif
#if defined(_WIN32) && defined(NO_MORE_STORAGE_SPACE)
  #undef NO_MORE_STORAGE_SPACE
#endif
#if defined(_WIN32) && defined(ROBOT_NOT_READY)
  #undef ROBOT_NOT_READY
#endif
#if defined(_WIN32) && defined(ROBOT_IN_FAULT)
  #undef ROBOT_IN_FAULT
#endif
#if defined(_WIN32) && defined(ROBOT_IN_MAINTENANCE)
  #undef ROBOT_IN_MAINTENANCE
#endif
#if defined(_WIN32) && defined(ROBOT_IN_UPDATE_MODE)
  #undef ROBOT_IN_UPDATE_MODE
#endif
#if defined(_WIN32) && defined(ROBOT_IN_EMERGENCY_STOP)
  #undef ROBOT_IN_EMERGENCY_STOP
#endif
#if defined(_WIN32) && defined(SINGLE_LEVEL_SERVOING)
  #undef SINGLE_LEVEL_SERVOING
#endif
#if defined(_WIN32) && defined(LOW_LEVEL_SERVOING)
  #undef LOW_LEVEL_SERVOING
#endif
#if defined(_WIN32) && defined(MAPPING_GROUP_NON_ROOT)
  #undef MAPPING_GROUP_NON_ROOT
#endif
#if defined(_WIN32) && defined(MAPPING_INVALID_GROUP)
  #undef MAPPING_INVALID_GROUP
#endif
#if defined(_WIN32) && defined(MAPPING_INVALID_MAP)
  #undef MAPPING_INVALID_MAP
#endif
#if defined(_WIN32) && defined(MAP_GROUP_INVALID_MAP)
  #undef MAP_GROUP_INVALID_MAP
#endif
#if defined(_WIN32) && defined(MAP_GROUP_INVALID_PARENT)
  #undef MAP_GROUP_INVALID_PARENT
#endif
#if defined(_WIN32) && defined(MAP_GROUP_INVALID_CHILD)
  #undef MAP_GROUP_INVALID_CHILD
#endif
#if defined(_WIN32) && defined(MAP_GROUP_INVALID_MOVE)
  #undef MAP_GROUP_INVALID_MOVE
#endif
#if defined(_WIN32) && defined(MAP_IN_USE)
  #undef MAP_IN_USE
#endif
#if defined(_WIN32) && defined(WIFI_CONNECT_ERROR)
  #undef WIFI_CONNECT_ERROR
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_NETWORK_TYPE)
  #undef UNSUPPORTED_NETWORK_TYPE
#endif
#if defined(_WIN32) && defined(TOO_LARGE_ENCODED_PAYLOAD_BUFFER)
  #undef TOO_LARGE_ENCODED_PAYLOAD_BUFFER
#endif
#if defined(_WIN32) && defined(UPDATE_PERMISSION_DENIED)
  #undef UPDATE_PERMISSION_DENIED
#endif
#if defined(_WIN32) && defined(DELETE_PERMISSION_DENIED)
  #undef DELETE_PERMISSION_DENIED
#endif
#if defined(_WIN32) && defined(DATABASE_ERROR)
  #undef DATABASE_ERROR
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_OPTION)
  #undef UNSUPPORTED_OPTION
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_RESOLUTION)
  #undef UNSUPPORTED_RESOLUTION
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_FRAME_RATE)
  #undef UNSUPPORTED_FRAME_RATE
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_BIT_RATE)
  #undef UNSUPPORTED_BIT_RATE
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_ACTION)
  #undef UNSUPPORTED_ACTION
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_FOCUS_ACTION)
  #undef UNSUPPORTED_FOCUS_ACTION
#endif
#if defined(_WIN32) && defined(VALUE_IS_ABOVE_MAXIMUM)
  #undef VALUE_IS_ABOVE_MAXIMUM
#endif
#if defined(_WIN32) && defined(VALUE_IS_BELOW_MINIMUM)
  #undef VALUE_IS_BELOW_MINIMUM
#endif
#if defined(_WIN32) && defined(DEVICE_DISCONNECTED)
  #undef DEVICE_DISCONNECTED
#endif
#if defined(_WIN32) && defined(DEVICE_NOT_READY)
  #undef DEVICE_NOT_READY
#endif
#if defined(_WIN32) && defined(INVALID_DEVICE)
  #undef INVALID_DEVICE
#endif
#if defined(_WIN32) && defined(SAFETY_THRESHOLD_REACHED)
  #undef SAFETY_THRESHOLD_REACHED
#endif
#if defined(_WIN32) && defined(INVALID_USER_SESSION_ACCESS)
  #undef INVALID_USER_SESSION_ACCESS
#endif
#if defined(_WIN32) && defined(CONTROL_MANUAL_STOP)
  #undef CONTROL_MANUAL_STOP
#endif
#if defined(_WIN32) && defined(CONTROL_OUTSIDE_WORKSPACE)
  #undef CONTROL_OUTSIDE_WORKSPACE
#endif
#if defined(_WIN32) && defined(CONTROL_ACTUATOR_COUNT_MISMATCH)
  #undef CONTROL_ACTUATOR_COUNT_MISMATCH
#endif
#if defined(_WIN32) && defined(CONTROL_INVALID_DURATION)
  #undef CONTROL_INVALID_DURATION
#endif
#if defined(_WIN32) && defined(CONTROL_INVALID_SPEED)
  #undef CONTROL_INVALID_SPEED
#endif
#if defined(_WIN32) && defined(CONTROL_LARGE_SPEED)
  #undef CONTROL_LARGE_SPEED
#endif
#if defined(_WIN32) && defined(CONTROL_INVALID_ACCELERATION)
  #undef CONTROL_INVALID_ACCELERATION
#endif
#if defined(_WIN32) && defined(CONTROL_INVALID_TIME_STEP)
  #undef CONTROL_INVALID_TIME_STEP
#endif
#if defined(_WIN32) && defined(CONTROL_LARGE_SIZE)
  #undef CONTROL_LARGE_SIZE
#endif
#if defined(_WIN32) && defined(CONTROL_WRONG_MODE)
  #undef CONTROL_WRONG_MODE
#endif
#if defined(_WIN32) && defined(CONTROL_JOINT_POSITION_LIMIT)
  #undef CONTROL_JOINT_POSITION_LIMIT
#endif
#if defined(_WIN32) && defined(CONTROL_NO_FILE_IN_MEMORY)
  #undef CONTROL_NO_FILE_IN_MEMORY
#endif
#if defined(_WIN32) && defined(CONTROL_INDEX_OUT_OF_TRAJECTORY)
  #undef CONTROL_INDEX_OUT_OF_TRAJECTORY
#endif
#if defined(_WIN32) && defined(CONTROL_ALREADY_RUNNING)
  #undef CONTROL_ALREADY_RUNNING
#endif
#if defined(_WIN32) && defined(CONTROL_WRONG_STARTING_POINT)
  #undef CONTROL_WRONG_STARTING_POINT
#endif
#if defined(_WIN32) && defined(CONTROL_CARTESIAN_CANNOT_START)
  #undef CONTROL_CARTESIAN_CANNOT_START
#endif
#if defined(_WIN32) && defined(CONTROL_UNDEFINED_CONSTRAINT)
  #undef CONTROL_UNDEFINED_CONSTRAINT
#endif
#if defined(_WIN32) && defined(CONTROL_UNINITIALIZED)
  #undef CONTROL_UNINITIALIZED
#endif
#if defined(_WIN32) && defined(CONTROL_NO_ACTION)
  #undef CONTROL_NO_ACTION
#endif
#if defined(_WIN32) && defined(CONTROL_UNDEFINED)
  #undef CONTROL_UNDEFINED
#endif
#if defined(_WIN32) && defined(WRONG_SERVOING_MODE)
  #undef WRONG_SERVOING_MODE
#endif
#if defined(_WIN32) && defined(CONTROL_WRONG_STARTING_SPEED)
  #undef CONTROL_WRONG_STARTING_SPEED
#endif
#if defined(_WIN32) && defined(USERNAME_LENGTH_EXCEEDED)
  #undef USERNAME_LENGTH_EXCEEDED
#endif
#if defined(_WIN32) && defined(FIRSTNAME_LENGTH_EXCEEDED)
  #undef FIRSTNAME_LENGTH_EXCEEDED
#endif
#if defined(_WIN32) && defined(LASTNAME_LENGTH_EXCEEDED)
  #undef LASTNAME_LENGTH_EXCEEDED
#endif
#if defined(_WIN32) && defined(PASSWORD_LENGTH_EXCEEDED)
  #undef PASSWORD_LENGTH_EXCEEDED
#endif
#if defined(_WIN32) && defined(USERNAME_ALREADY_EXISTS)
  #undef USERNAME_ALREADY_EXISTS
#endif
#if defined(_WIN32) && defined(USERNAME_EMPTY)
  #undef USERNAME_EMPTY
#endif
#if defined(_WIN32) && defined(PASSWORD_NOT_CHANGED)
  #undef PASSWORD_NOT_CHANGED
#endif
#if defined(_WIN32) && defined(MAXIMUM_USER_PROFILES_USED)
  #undef MAXIMUM_USER_PROFILES_USED
#endif
#if defined(_WIN32) && defined(ROUTER_UNVAILABLE)
  #undef ROUTER_UNVAILABLE
#endif
#if defined(_WIN32) && defined(ADDRESS_NOT_IN_VALID_RANGE)
  #undef ADDRESS_NOT_IN_VALID_RANGE
#endif
#if defined(_WIN32) && defined(ADDRESS_NOT_CONFIGURABLE)
  #undef ADDRESS_NOT_CONFIGURABLE
#endif
#if defined(_WIN32) && defined(SESSION_NOT_IN_CONTROL)
  #undef SESSION_NOT_IN_CONTROL
#endif
#if defined(_WIN32) && defined(METHOD_TIMEOUT)
  #undef METHOD_TIMEOUT
#endif
#if defined(_WIN32) && defined(UNSUPPORTED_ROBOT_CONFIGURATION)
  #undef UNSUPPORTED_ROBOT_CONFIGURATION
#endif
#if defined(_WIN32) && defined(NVRAM_READ_FAIL)
  #undef NVRAM_READ_FAIL
#endif
#if defined(_WIN32) && defined(NVRAM_WRITE_FAIL)
  #undef NVRAM_WRITE_FAIL
#endif
#if defined(_WIN32) && defined(NETWORK_NO_ADDRESS_ASSIGNED)
  #undef NETWORK_NO_ADDRESS_ASSIGNED
#endif
#if defined(_WIN32) && defined(READ_PERMISSION_DENIED)
  #undef READ_PERMISSION_DENIED
#endif
#if defined(_WIN32) && defined(CONTROLLER_INVALID_MAPPING)
  #undef CONTROLLER_INVALID_MAPPING
#endif
#if defined(_WIN32) && defined(ACTION_IN_USE)
  #undef ACTION_IN_USE
#endif

  enum {
    SUB_ERROR_NONE = 0u,
    METHOD_FAILED = 1u,
    UNIMPLEMENTED = 2u,
    INVALID_PARAM = 3u,
    UNSUPPORTED_SERVICE = 4u,
    UNSUPPORTED_METHOD = 5u,
    TOO_LARGE_ENCODED_FRAME_BUFFER = 6u,
    FRAME_ENCODING_ERR = 7u,
    FRAME_DECODING_ERR = 8u,
    INCOMPATIBLE_HEADER_VERSION = 9u,
    UNSUPPORTED_FRAME_TYPE = 10u,
    UNREGISTERED_NOTIFICATION_RECEIVED = 11u,
    INVALID_SESSION = 12u,
    PAYLOAD_DECODING_ERR = 13u,
    UNREGISTERED_FRAME_RECEIVED = 14u,
    INVALID_PASSWORD = 15u,
    USER_NOT_FOUND = 16u,
    ENTITY_NOT_FOUND = 17u,
    ROBOT_MOVEMENT_IN_PROGRESS = 18u,
    ROBOT_NOT_MOVING = 19u,
    NO_MORE_STORAGE_SPACE = 20u,
    ROBOT_NOT_READY = 21u,
    ROBOT_IN_FAULT = 22u,
    ROBOT_IN_MAINTENANCE = 23u,
    ROBOT_IN_UPDATE_MODE = 24u,
    ROBOT_IN_EMERGENCY_STOP = 25u,
    SINGLE_LEVEL_SERVOING = 26u,
    LOW_LEVEL_SERVOING = 27u,
    MAPPING_GROUP_NON_ROOT = 28u,
    MAPPING_INVALID_GROUP = 29u,
    MAPPING_INVALID_MAP = 30u,
    MAP_GROUP_INVALID_MAP = 31u,
    MAP_GROUP_INVALID_PARENT = 32u,
    MAP_GROUP_INVALID_CHILD = 33u,
    MAP_GROUP_INVALID_MOVE = 34u,
    MAP_IN_USE = 35u,
    WIFI_CONNECT_ERROR = 36u,
    UNSUPPORTED_NETWORK_TYPE = 37u,
    TOO_LARGE_ENCODED_PAYLOAD_BUFFER = 38u,
    UPDATE_PERMISSION_DENIED = 39u,
    DELETE_PERMISSION_DENIED = 40u,
    DATABASE_ERROR = 41u,
    UNSUPPORTED_OPTION = 42u,
    UNSUPPORTED_RESOLUTION = 43u,
    UNSUPPORTED_FRAME_RATE = 44u,
    UNSUPPORTED_BIT_RATE = 45u,
    UNSUPPORTED_ACTION = 46u,
    UNSUPPORTED_FOCUS_ACTION = 47u,
    VALUE_IS_ABOVE_MAXIMUM = 48u,
    VALUE_IS_BELOW_MINIMUM = 49u,
    DEVICE_DISCONNECTED = 50u,
    DEVICE_NOT_READY = 51u,
    INVALID_DEVICE = 52u,
    SAFETY_THRESHOLD_REACHED = 53u,
    INVALID_USER_SESSION_ACCESS = 54u,
    CONTROL_MANUAL_STOP = 55u,
    CONTROL_OUTSIDE_WORKSPACE = 56u,
    CONTROL_ACTUATOR_COUNT_MISMATCH = 57u,
    CONTROL_INVALID_DURATION = 58u,
    CONTROL_INVALID_SPEED = 59u,
    CONTROL_LARGE_SPEED = 60u,
    CONTROL_INVALID_ACCELERATION = 61u,
    CONTROL_INVALID_TIME_STEP = 62u,
    CONTROL_LARGE_SIZE = 63u,
    CONTROL_WRONG_MODE = 64u,
    CONTROL_JOINT_POSITION_LIMIT = 65u,
    CONTROL_NO_FILE_IN_MEMORY = 66u,
    CONTROL_INDEX_OUT_OF_TRAJECTORY = 67u,
    CONTROL_ALREADY_RUNNING = 68u,
    CONTROL_WRONG_STARTING_POINT = 69u,
    CONTROL_CARTESIAN_CANNOT_START = 70u,
    CONTROL_UNDEFINED_CONSTRAINT = 71u,
    CONTROL_UNINITIALIZED = 72u,
    CONTROL_NO_ACTION = 73u,
    CONTROL_UNDEFINED = 74u,
    WRONG_SERVOING_MODE = 75u,
    CONTROL_WRONG_STARTING_SPEED = 76u,
    USERNAME_LENGTH_EXCEEDED = 100u,
    FIRSTNAME_LENGTH_EXCEEDED = 101u,
    LASTNAME_LENGTH_EXCEEDED = 102u,
    PASSWORD_LENGTH_EXCEEDED = 103u,
    USERNAME_ALREADY_EXISTS = 104u,
    USERNAME_EMPTY = 105u,
    PASSWORD_NOT_CHANGED = 106u,
    MAXIMUM_USER_PROFILES_USED = 107u,
    ROUTER_UNVAILABLE = 108u,
    ADDRESS_NOT_IN_VALID_RANGE = 120u,
    ADDRESS_NOT_CONFIGURABLE = 121u,
    SESSION_NOT_IN_CONTROL = 130u,
    METHOD_TIMEOUT = 131u,
    UNSUPPORTED_ROBOT_CONFIGURATION = 132u,
    NVRAM_READ_FAIL = 133u,
    NVRAM_WRITE_FAIL = 134u,
    NETWORK_NO_ADDRESS_ASSIGNED = 135u,
    READ_PERMISSION_DENIED = 136u,
    CONTROLLER_INVALID_MAPPING = 137u,
    ACTION_IN_USE = 138u,
  };


  typedef boost::shared_ptr< ::kortex_driver::SubErrorCodes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::SubErrorCodes_<ContainerAllocator> const> ConstPtr;

}; // struct SubErrorCodes_

typedef ::kortex_driver::SubErrorCodes_<std::allocator<void> > SubErrorCodes;

typedef boost::shared_ptr< ::kortex_driver::SubErrorCodes > SubErrorCodesPtr;
typedef boost::shared_ptr< ::kortex_driver::SubErrorCodes const> SubErrorCodesConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::SubErrorCodes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::SubErrorCodes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::SubErrorCodes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::SubErrorCodes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ede778acac401c3fdc814c471888cc4d";
  }

  static const char* value(const ::kortex_driver::SubErrorCodes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xede778acac401c3fULL;
  static const uint64_t static_value2 = 0xdc814c471888cc4dULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/SubErrorCodes";
  }

  static const char* value(const ::kortex_driver::SubErrorCodes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 SUB_ERROR_NONE = 0\n"
"\n"
"uint32 METHOD_FAILED = 1\n"
"\n"
"uint32 UNIMPLEMENTED = 2\n"
"\n"
"uint32 INVALID_PARAM = 3\n"
"\n"
"uint32 UNSUPPORTED_SERVICE = 4\n"
"\n"
"uint32 UNSUPPORTED_METHOD = 5\n"
"\n"
"uint32 TOO_LARGE_ENCODED_FRAME_BUFFER = 6\n"
"\n"
"uint32 FRAME_ENCODING_ERR = 7\n"
"\n"
"uint32 FRAME_DECODING_ERR = 8\n"
"\n"
"uint32 INCOMPATIBLE_HEADER_VERSION = 9\n"
"\n"
"uint32 UNSUPPORTED_FRAME_TYPE = 10\n"
"\n"
"uint32 UNREGISTERED_NOTIFICATION_RECEIVED = 11\n"
"\n"
"uint32 INVALID_SESSION = 12\n"
"\n"
"uint32 PAYLOAD_DECODING_ERR = 13\n"
"\n"
"uint32 UNREGISTERED_FRAME_RECEIVED = 14\n"
"\n"
"uint32 INVALID_PASSWORD = 15\n"
"\n"
"uint32 USER_NOT_FOUND = 16\n"
"\n"
"uint32 ENTITY_NOT_FOUND = 17\n"
"\n"
"uint32 ROBOT_MOVEMENT_IN_PROGRESS = 18\n"
"\n"
"uint32 ROBOT_NOT_MOVING = 19\n"
"\n"
"uint32 NO_MORE_STORAGE_SPACE = 20\n"
"\n"
"uint32 ROBOT_NOT_READY = 21\n"
"\n"
"uint32 ROBOT_IN_FAULT = 22\n"
"\n"
"uint32 ROBOT_IN_MAINTENANCE = 23\n"
"\n"
"uint32 ROBOT_IN_UPDATE_MODE = 24\n"
"\n"
"uint32 ROBOT_IN_EMERGENCY_STOP = 25\n"
"\n"
"uint32 SINGLE_LEVEL_SERVOING = 26\n"
"\n"
"uint32 LOW_LEVEL_SERVOING = 27\n"
"\n"
"uint32 MAPPING_GROUP_NON_ROOT = 28\n"
"\n"
"uint32 MAPPING_INVALID_GROUP = 29\n"
"\n"
"uint32 MAPPING_INVALID_MAP = 30\n"
"\n"
"uint32 MAP_GROUP_INVALID_MAP = 31\n"
"\n"
"uint32 MAP_GROUP_INVALID_PARENT = 32\n"
"\n"
"uint32 MAP_GROUP_INVALID_CHILD = 33\n"
"\n"
"uint32 MAP_GROUP_INVALID_MOVE = 34\n"
"\n"
"uint32 MAP_IN_USE = 35\n"
"\n"
"uint32 WIFI_CONNECT_ERROR = 36\n"
"\n"
"uint32 UNSUPPORTED_NETWORK_TYPE = 37\n"
"\n"
"uint32 TOO_LARGE_ENCODED_PAYLOAD_BUFFER = 38\n"
"\n"
"uint32 UPDATE_PERMISSION_DENIED = 39\n"
"\n"
"uint32 DELETE_PERMISSION_DENIED = 40\n"
"\n"
"uint32 DATABASE_ERROR = 41\n"
"\n"
"uint32 UNSUPPORTED_OPTION = 42\n"
"\n"
"uint32 UNSUPPORTED_RESOLUTION = 43\n"
"\n"
"uint32 UNSUPPORTED_FRAME_RATE = 44\n"
"\n"
"uint32 UNSUPPORTED_BIT_RATE = 45\n"
"\n"
"uint32 UNSUPPORTED_ACTION = 46\n"
"\n"
"uint32 UNSUPPORTED_FOCUS_ACTION = 47\n"
"\n"
"uint32 VALUE_IS_ABOVE_MAXIMUM = 48\n"
"\n"
"uint32 VALUE_IS_BELOW_MINIMUM = 49\n"
"\n"
"uint32 DEVICE_DISCONNECTED = 50\n"
"\n"
"uint32 DEVICE_NOT_READY = 51\n"
"\n"
"uint32 INVALID_DEVICE = 52\n"
"\n"
"uint32 SAFETY_THRESHOLD_REACHED = 53\n"
"\n"
"uint32 INVALID_USER_SESSION_ACCESS = 54\n"
"\n"
"uint32 CONTROL_MANUAL_STOP = 55\n"
"\n"
"uint32 CONTROL_OUTSIDE_WORKSPACE = 56\n"
"\n"
"uint32 CONTROL_ACTUATOR_COUNT_MISMATCH = 57\n"
"\n"
"uint32 CONTROL_INVALID_DURATION = 58\n"
"\n"
"uint32 CONTROL_INVALID_SPEED = 59\n"
"\n"
"uint32 CONTROL_LARGE_SPEED = 60\n"
"\n"
"uint32 CONTROL_INVALID_ACCELERATION = 61\n"
"\n"
"uint32 CONTROL_INVALID_TIME_STEP = 62\n"
"\n"
"uint32 CONTROL_LARGE_SIZE = 63\n"
"\n"
"uint32 CONTROL_WRONG_MODE = 64\n"
"\n"
"uint32 CONTROL_JOINT_POSITION_LIMIT = 65\n"
"\n"
"uint32 CONTROL_NO_FILE_IN_MEMORY = 66\n"
"\n"
"uint32 CONTROL_INDEX_OUT_OF_TRAJECTORY = 67\n"
"\n"
"uint32 CONTROL_ALREADY_RUNNING = 68\n"
"\n"
"uint32 CONTROL_WRONG_STARTING_POINT = 69\n"
"\n"
"uint32 CONTROL_CARTESIAN_CANNOT_START = 70\n"
"\n"
"uint32 CONTROL_UNDEFINED_CONSTRAINT = 71\n"
"\n"
"uint32 CONTROL_UNINITIALIZED = 72\n"
"\n"
"uint32 CONTROL_NO_ACTION = 73\n"
"\n"
"uint32 CONTROL_UNDEFINED = 74\n"
"\n"
"uint32 WRONG_SERVOING_MODE = 75\n"
"\n"
"uint32 CONTROL_WRONG_STARTING_SPEED = 76\n"
"\n"
"uint32 USERNAME_LENGTH_EXCEEDED = 100\n"
"\n"
"uint32 FIRSTNAME_LENGTH_EXCEEDED = 101\n"
"\n"
"uint32 LASTNAME_LENGTH_EXCEEDED = 102\n"
"\n"
"uint32 PASSWORD_LENGTH_EXCEEDED = 103\n"
"\n"
"uint32 USERNAME_ALREADY_EXISTS = 104\n"
"\n"
"uint32 USERNAME_EMPTY = 105\n"
"\n"
"uint32 PASSWORD_NOT_CHANGED = 106\n"
"\n"
"uint32 MAXIMUM_USER_PROFILES_USED = 107\n"
"\n"
"uint32 ROUTER_UNVAILABLE = 108\n"
"\n"
"uint32 ADDRESS_NOT_IN_VALID_RANGE = 120\n"
"\n"
"uint32 ADDRESS_NOT_CONFIGURABLE = 121\n"
"\n"
"uint32 SESSION_NOT_IN_CONTROL = 130\n"
"\n"
"uint32 METHOD_TIMEOUT = 131\n"
"\n"
"uint32 UNSUPPORTED_ROBOT_CONFIGURATION = 132\n"
"\n"
"uint32 NVRAM_READ_FAIL = 133\n"
"\n"
"uint32 NVRAM_WRITE_FAIL = 134\n"
"\n"
"uint32 NETWORK_NO_ADDRESS_ASSIGNED = 135\n"
"\n"
"uint32 READ_PERMISSION_DENIED = 136\n"
"\n"
"uint32 CONTROLLER_INVALID_MAPPING = 137\n"
"\n"
"uint32 ACTION_IN_USE = 138\n"
;
  }

  static const char* value(const ::kortex_driver::SubErrorCodes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SubErrorCodes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::SubErrorCodes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::kortex_driver::SubErrorCodes_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_SUBERRORCODES_H
