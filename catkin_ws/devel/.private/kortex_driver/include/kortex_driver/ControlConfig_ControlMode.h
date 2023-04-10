// Generated by gencpp from file kortex_driver/ControlConfig_ControlMode.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_CONTROLCONFIG_CONTROLMODE_H
#define KORTEX_DRIVER_MESSAGE_CONTROLCONFIG_CONTROLMODE_H


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
struct ControlConfig_ControlMode_
{
  typedef ControlConfig_ControlMode_<ContainerAllocator> Type;

  ControlConfig_ControlMode_()
    {
    }
  ControlConfig_ControlMode_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }





// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNSPECIFIED_CONTROL_MODE)
  #undef UNSPECIFIED_CONTROL_MODE
#endif
#if defined(_WIN32) && defined(ANGULAR_JOYSTICK)
  #undef ANGULAR_JOYSTICK
#endif
#if defined(_WIN32) && defined(CARTESIAN_JOYSTICK)
  #undef CARTESIAN_JOYSTICK
#endif
#if defined(_WIN32) && defined(ANGULAR_TRAJECTORY)
  #undef ANGULAR_TRAJECTORY
#endif
#if defined(_WIN32) && defined(CARTESIAN_TRAJECTORY)
  #undef CARTESIAN_TRAJECTORY
#endif
#if defined(_WIN32) && defined(CARTESIAN_ADMITTANCE)
  #undef CARTESIAN_ADMITTANCE
#endif
#if defined(_WIN32) && defined(JOINT_ADMITTANCE)
  #undef JOINT_ADMITTANCE
#endif
#if defined(_WIN32) && defined(NULL_SPACE_ADMITTANCE)
  #undef NULL_SPACE_ADMITTANCE
#endif
#if defined(_WIN32) && defined(FORCE_CONTROL)
  #undef FORCE_CONTROL
#endif
#if defined(_WIN32) && defined(FORCE_CONTROL_MOTION_RESTRICTED)
  #undef FORCE_CONTROL_MOTION_RESTRICTED
#endif
#if defined(_WIN32) && defined(IDLE)
  #undef IDLE
#endif

  enum {
    UNSPECIFIED_CONTROL_MODE = 0u,
    ANGULAR_JOYSTICK = 1u,
    CARTESIAN_JOYSTICK = 2u,
    ANGULAR_TRAJECTORY = 4u,
    CARTESIAN_TRAJECTORY = 5u,
    CARTESIAN_ADMITTANCE = 6u,
    JOINT_ADMITTANCE = 7u,
    NULL_SPACE_ADMITTANCE = 8u,
    FORCE_CONTROL = 10u,
    FORCE_CONTROL_MOTION_RESTRICTED = 11u,
    IDLE = 13u,
  };


  typedef boost::shared_ptr< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> const> ConstPtr;

}; // struct ControlConfig_ControlMode_

typedef ::kortex_driver::ControlConfig_ControlMode_<std::allocator<void> > ControlConfig_ControlMode;

typedef boost::shared_ptr< ::kortex_driver::ControlConfig_ControlMode > ControlConfig_ControlModePtr;
typedef boost::shared_ptr< ::kortex_driver::ControlConfig_ControlMode const> ControlConfig_ControlModeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "027ce394a2c0dcd8cf27153deda7b144";
  }

  static const char* value(const ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x027ce394a2c0dcd8ULL;
  static const uint64_t static_value2 = 0xcf27153deda7b144ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/ControlConfig_ControlMode";
  }

  static const char* value(const ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 UNSPECIFIED_CONTROL_MODE = 0\n"
"\n"
"uint32 ANGULAR_JOYSTICK = 1\n"
"\n"
"uint32 CARTESIAN_JOYSTICK = 2\n"
"\n"
"uint32 ANGULAR_TRAJECTORY = 4\n"
"\n"
"uint32 CARTESIAN_TRAJECTORY = 5\n"
"\n"
"uint32 CARTESIAN_ADMITTANCE = 6\n"
"\n"
"uint32 JOINT_ADMITTANCE = 7\n"
"\n"
"uint32 NULL_SPACE_ADMITTANCE = 8\n"
"\n"
"uint32 FORCE_CONTROL = 10\n"
"\n"
"uint32 FORCE_CONTROL_MOTION_RESTRICTED = 11\n"
"\n"
"uint32 IDLE = 13\n"
;
  }

  static const char* value(const ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlConfig_ControlMode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::kortex_driver::ControlConfig_ControlMode_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_CONTROLCONFIG_CONTROLMODE_H
