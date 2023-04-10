// Generated by gencpp from file kortex_driver/ActionType.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_ACTIONTYPE_H
#define KORTEX_DRIVER_MESSAGE_ACTIONTYPE_H


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
struct ActionType_
{
  typedef ActionType_<ContainerAllocator> Type;

  ActionType_()
    {
    }
  ActionType_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }





// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNSPECIFIED_ACTION)
  #undef UNSPECIFIED_ACTION
#endif
#if defined(_WIN32) && defined(SEND_TWIST_COMMAND)
  #undef SEND_TWIST_COMMAND
#endif
#if defined(_WIN32) && defined(SEND_WRENCH_COMMAND)
  #undef SEND_WRENCH_COMMAND
#endif
#if defined(_WIN32) && defined(SEND_JOINT_SPEEDS)
  #undef SEND_JOINT_SPEEDS
#endif
#if defined(_WIN32) && defined(REACH_POSE)
  #undef REACH_POSE
#endif
#if defined(_WIN32) && defined(REACH_JOINT_ANGLES)
  #undef REACH_JOINT_ANGLES
#endif
#if defined(_WIN32) && defined(TOGGLE_ADMITTANCE_MODE)
  #undef TOGGLE_ADMITTANCE_MODE
#endif
#if defined(_WIN32) && defined(SNAPSHOT)
  #undef SNAPSHOT
#endif
#if defined(_WIN32) && defined(SWITCH_CONTROL_MAPPING)
  #undef SWITCH_CONTROL_MAPPING
#endif
#if defined(_WIN32) && defined(NAVIGATE_JOINTS)
  #undef NAVIGATE_JOINTS
#endif
#if defined(_WIN32) && defined(NAVIGATE_MAPPINGS)
  #undef NAVIGATE_MAPPINGS
#endif
#if defined(_WIN32) && defined(CHANGE_TWIST)
  #undef CHANGE_TWIST
#endif
#if defined(_WIN32) && defined(CHANGE_JOINT_SPEEDS)
  #undef CHANGE_JOINT_SPEEDS
#endif
#if defined(_WIN32) && defined(CHANGE_WRENCH)
  #undef CHANGE_WRENCH
#endif
#if defined(_WIN32) && defined(APPLY_EMERGENCY_STOP)
  #undef APPLY_EMERGENCY_STOP
#endif
#if defined(_WIN32) && defined(CLEAR_FAULTS)
  #undef CLEAR_FAULTS
#endif
#if defined(_WIN32) && defined(TIME_DELAY)
  #undef TIME_DELAY
#endif
#if defined(_WIN32) && defined(EXECUTE_ACTION)
  #undef EXECUTE_ACTION
#endif
#if defined(_WIN32) && defined(SEND_GRIPPER_COMMAND)
  #undef SEND_GRIPPER_COMMAND
#endif
#if defined(_WIN32) && defined(STOP_ACTION)
  #undef STOP_ACTION
#endif
#if defined(_WIN32) && defined(PLAY_PRE_COMPUTED_TRAJECTORY)
  #undef PLAY_PRE_COMPUTED_TRAJECTORY
#endif

  enum {
    UNSPECIFIED_ACTION = 0u,
    SEND_TWIST_COMMAND = 1u,
    SEND_WRENCH_COMMAND = 2u,
    SEND_JOINT_SPEEDS = 4u,
    REACH_POSE = 6u,
    REACH_JOINT_ANGLES = 7u,
    TOGGLE_ADMITTANCE_MODE = 13u,
    SNAPSHOT = 14u,
    SWITCH_CONTROL_MAPPING = 16u,
    NAVIGATE_JOINTS = 17u,
    NAVIGATE_MAPPINGS = 18u,
    CHANGE_TWIST = 22u,
    CHANGE_JOINT_SPEEDS = 23u,
    CHANGE_WRENCH = 25u,
    APPLY_EMERGENCY_STOP = 28u,
    CLEAR_FAULTS = 29u,
    TIME_DELAY = 31u,
    EXECUTE_ACTION = 32u,
    SEND_GRIPPER_COMMAND = 33u,
    STOP_ACTION = 35u,
    PLAY_PRE_COMPUTED_TRAJECTORY = 39u,
  };


  typedef boost::shared_ptr< ::kortex_driver::ActionType_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::ActionType_<ContainerAllocator> const> ConstPtr;

}; // struct ActionType_

typedef ::kortex_driver::ActionType_<std::allocator<void> > ActionType;

typedef boost::shared_ptr< ::kortex_driver::ActionType > ActionTypePtr;
typedef boost::shared_ptr< ::kortex_driver::ActionType const> ActionTypeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::ActionType_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::ActionType_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::ActionType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::ActionType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::ActionType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::ActionType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::ActionType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::ActionType_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::ActionType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2090a0cda2c1161052081f00045b76f";
  }

  static const char* value(const ::kortex_driver::ActionType_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2090a0cda2c1161ULL;
  static const uint64_t static_value2 = 0x052081f00045b76fULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::ActionType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/ActionType";
  }

  static const char* value(const ::kortex_driver::ActionType_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::ActionType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 UNSPECIFIED_ACTION = 0\n"
"\n"
"uint32 SEND_TWIST_COMMAND = 1\n"
"\n"
"uint32 SEND_WRENCH_COMMAND = 2\n"
"\n"
"uint32 SEND_JOINT_SPEEDS = 4\n"
"\n"
"uint32 REACH_POSE = 6\n"
"\n"
"uint32 REACH_JOINT_ANGLES = 7\n"
"\n"
"uint32 TOGGLE_ADMITTANCE_MODE = 13\n"
"\n"
"uint32 SNAPSHOT = 14\n"
"\n"
"uint32 SWITCH_CONTROL_MAPPING = 16\n"
"\n"
"uint32 NAVIGATE_JOINTS = 17\n"
"\n"
"uint32 NAVIGATE_MAPPINGS = 18\n"
"\n"
"uint32 CHANGE_TWIST = 22\n"
"\n"
"uint32 CHANGE_JOINT_SPEEDS = 23\n"
"\n"
"uint32 CHANGE_WRENCH = 25\n"
"\n"
"uint32 APPLY_EMERGENCY_STOP = 28\n"
"\n"
"uint32 CLEAR_FAULTS = 29\n"
"\n"
"uint32 TIME_DELAY = 31\n"
"\n"
"uint32 EXECUTE_ACTION = 32\n"
"\n"
"uint32 SEND_GRIPPER_COMMAND = 33\n"
"\n"
"uint32 STOP_ACTION = 35\n"
"\n"
"uint32 PLAY_PRE_COMPUTED_TRAJECTORY = 39\n"
;
  }

  static const char* value(const ::kortex_driver::ActionType_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::ActionType_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActionType_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::ActionType_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::kortex_driver::ActionType_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_ACTIONTYPE_H
