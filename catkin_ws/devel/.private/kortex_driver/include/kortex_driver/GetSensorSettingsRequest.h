// Generated by gencpp from file kortex_driver/GetSensorSettingsRequest.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_GETSENSORSETTINGSREQUEST_H
#define KORTEX_DRIVER_MESSAGE_GETSENSORSETTINGSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/SensorIdentifier.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct GetSensorSettingsRequest_
{
  typedef GetSensorSettingsRequest_<ContainerAllocator> Type;

  GetSensorSettingsRequest_()
    : input()  {
    }
  GetSensorSettingsRequest_(const ContainerAllocator& _alloc)
    : input(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::SensorIdentifier_<ContainerAllocator>  _input_type;
  _input_type input;





  typedef boost::shared_ptr< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetSensorSettingsRequest_

typedef ::kortex_driver::GetSensorSettingsRequest_<std::allocator<void> > GetSensorSettingsRequest;

typedef boost::shared_ptr< ::kortex_driver::GetSensorSettingsRequest > GetSensorSettingsRequestPtr;
typedef boost::shared_ptr< ::kortex_driver::GetSensorSettingsRequest const> GetSensorSettingsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input == rhs.input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d6b665ee68fb76fe11bbb8a3f0942a78";
  }

  static const char* value(const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd6b665ee68fb76feULL;
  static const uint64_t static_value2 = 0x11bbb8a3f0942a78ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/GetSensorSettingsRequest";
  }

  static const char* value(const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "SensorIdentifier input\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/SensorIdentifier\n"
"\n"
"uint32 sensor\n"
;
  }

  static const char* value(const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetSensorSettingsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::GetSensorSettingsRequest_<ContainerAllocator>& v)
  {
    s << indent << "input: ";
    s << std::endl;
    Printer< ::kortex_driver::SensorIdentifier_<ContainerAllocator> >::stream(s, indent + "  ", v.input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_GETSENSORSETTINGSREQUEST_H
