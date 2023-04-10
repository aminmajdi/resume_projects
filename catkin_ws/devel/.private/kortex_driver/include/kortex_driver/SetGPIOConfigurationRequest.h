// Generated by gencpp from file kortex_driver/SetGPIOConfigurationRequest.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_SETGPIOCONFIGURATIONREQUEST_H
#define KORTEX_DRIVER_MESSAGE_SETGPIOCONFIGURATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/GPIOConfiguration.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct SetGPIOConfigurationRequest_
{
  typedef SetGPIOConfigurationRequest_<ContainerAllocator> Type;

  SetGPIOConfigurationRequest_()
    : input()  {
    }
  SetGPIOConfigurationRequest_(const ContainerAllocator& _alloc)
    : input(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::GPIOConfiguration_<ContainerAllocator>  _input_type;
  _input_type input;





  typedef boost::shared_ptr< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetGPIOConfigurationRequest_

typedef ::kortex_driver::SetGPIOConfigurationRequest_<std::allocator<void> > SetGPIOConfigurationRequest;

typedef boost::shared_ptr< ::kortex_driver::SetGPIOConfigurationRequest > SetGPIOConfigurationRequestPtr;
typedef boost::shared_ptr< ::kortex_driver::SetGPIOConfigurationRequest const> SetGPIOConfigurationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input == rhs.input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a82acbdb3945d04fa1f18a0da457ee6e";
  }

  static const char* value(const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa82acbdb3945d04fULL;
  static const uint64_t static_value2 = 0xa1f18a0da457ee6eULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/SetGPIOConfigurationRequest";
  }

  static const char* value(const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "GPIOConfiguration input\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/GPIOConfiguration\n"
"\n"
"uint32 identifier\n"
"uint32 mode\n"
"uint32 pull\n"
"uint32 default_value\n"
;
  }

  static const char* value(const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGPIOConfigurationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::SetGPIOConfigurationRequest_<ContainerAllocator>& v)
  {
    s << indent << "input: ";
    s << std::endl;
    Printer< ::kortex_driver::GPIOConfiguration_<ContainerAllocator> >::stream(s, indent + "  ", v.input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_SETGPIOCONFIGURATIONREQUEST_H
