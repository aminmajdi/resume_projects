// Generated by gencpp from file kortex_driver/OnNotificationControlModeTopicRequest.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONCONTROLMODETOPICREQUEST_H
#define KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONCONTROLMODETOPICREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/NotificationOptions.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct OnNotificationControlModeTopicRequest_
{
  typedef OnNotificationControlModeTopicRequest_<ContainerAllocator> Type;

  OnNotificationControlModeTopicRequest_()
    : input()  {
    }
  OnNotificationControlModeTopicRequest_(const ContainerAllocator& _alloc)
    : input(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::NotificationOptions_<ContainerAllocator>  _input_type;
  _input_type input;





  typedef boost::shared_ptr< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OnNotificationControlModeTopicRequest_

typedef ::kortex_driver::OnNotificationControlModeTopicRequest_<std::allocator<void> > OnNotificationControlModeTopicRequest;

typedef boost::shared_ptr< ::kortex_driver::OnNotificationControlModeTopicRequest > OnNotificationControlModeTopicRequestPtr;
typedef boost::shared_ptr< ::kortex_driver::OnNotificationControlModeTopicRequest const> OnNotificationControlModeTopicRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input == rhs.input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "942d7c40a40678d0347656d7bafd96e9";
  }

  static const char* value(const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x942d7c40a40678d0ULL;
  static const uint64_t static_value2 = 0x347656d7bafd96e9ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/OnNotificationControlModeTopicRequest";
  }

  static const char* value(const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "NotificationOptions input\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/NotificationOptions\n"
"\n"
"uint32 type\n"
"uint32 rate_m_sec\n"
"float32 threshold_value\n"
;
  }

  static const char* value(const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OnNotificationControlModeTopicRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::OnNotificationControlModeTopicRequest_<ContainerAllocator>& v)
  {
    s << indent << "input: ";
    s << std::endl;
    Printer< ::kortex_driver::NotificationOptions_<ContainerAllocator> >::stream(s, indent + "  ", v.input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONCONTROLMODETOPICREQUEST_H
