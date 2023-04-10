// Generated by gencpp from file kortex_driver/GetGPIOConfigurationResponse.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_GETGPIOCONFIGURATIONRESPONSE_H
#define KORTEX_DRIVER_MESSAGE_GETGPIOCONFIGURATIONRESPONSE_H


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
struct GetGPIOConfigurationResponse_
{
  typedef GetGPIOConfigurationResponse_<ContainerAllocator> Type;

  GetGPIOConfigurationResponse_()
    : output()  {
    }
  GetGPIOConfigurationResponse_(const ContainerAllocator& _alloc)
    : output(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::GPIOConfiguration_<ContainerAllocator>  _output_type;
  _output_type output;





  typedef boost::shared_ptr< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetGPIOConfigurationResponse_

typedef ::kortex_driver::GetGPIOConfigurationResponse_<std::allocator<void> > GetGPIOConfigurationResponse;

typedef boost::shared_ptr< ::kortex_driver::GetGPIOConfigurationResponse > GetGPIOConfigurationResponsePtr;
typedef boost::shared_ptr< ::kortex_driver::GetGPIOConfigurationResponse const> GetGPIOConfigurationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator1> & lhs, const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.output == rhs.output;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator1> & lhs, const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "112c99a6fcf092b1686b2f73729789a2";
  }

  static const char* value(const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x112c99a6fcf092b1ULL;
  static const uint64_t static_value2 = 0x686b2f73729789a2ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/GetGPIOConfigurationResponse";
  }

  static const char* value(const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "GPIOConfiguration output\n"
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

  static const char* value(const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetGPIOConfigurationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::GetGPIOConfigurationResponse_<ContainerAllocator>& v)
  {
    s << indent << "output: ";
    s << std::endl;
    Printer< ::kortex_driver::GPIOConfiguration_<ContainerAllocator> >::stream(s, indent + "  ", v.output);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_GETGPIOCONFIGURATIONRESPONSE_H
