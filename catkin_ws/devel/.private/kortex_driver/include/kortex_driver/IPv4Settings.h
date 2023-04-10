// Generated by gencpp from file kortex_driver/IPv4Settings.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_IPV4SETTINGS_H
#define KORTEX_DRIVER_MESSAGE_IPV4SETTINGS_H


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
struct IPv4Settings_
{
  typedef IPv4Settings_<ContainerAllocator> Type;

  IPv4Settings_()
    : ipv4_address(0)
    , ipv4_subnet_mask(0)
    , ipv4_default_gateway(0)  {
    }
  IPv4Settings_(const ContainerAllocator& _alloc)
    : ipv4_address(0)
    , ipv4_subnet_mask(0)
    , ipv4_default_gateway(0)  {
  (void)_alloc;
    }



   typedef uint32_t _ipv4_address_type;
  _ipv4_address_type ipv4_address;

   typedef uint32_t _ipv4_subnet_mask_type;
  _ipv4_subnet_mask_type ipv4_subnet_mask;

   typedef uint32_t _ipv4_default_gateway_type;
  _ipv4_default_gateway_type ipv4_default_gateway;





  typedef boost::shared_ptr< ::kortex_driver::IPv4Settings_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::IPv4Settings_<ContainerAllocator> const> ConstPtr;

}; // struct IPv4Settings_

typedef ::kortex_driver::IPv4Settings_<std::allocator<void> > IPv4Settings;

typedef boost::shared_ptr< ::kortex_driver::IPv4Settings > IPv4SettingsPtr;
typedef boost::shared_ptr< ::kortex_driver::IPv4Settings const> IPv4SettingsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::IPv4Settings_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::IPv4Settings_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::IPv4Settings_<ContainerAllocator1> & lhs, const ::kortex_driver::IPv4Settings_<ContainerAllocator2> & rhs)
{
  return lhs.ipv4_address == rhs.ipv4_address &&
    lhs.ipv4_subnet_mask == rhs.ipv4_subnet_mask &&
    lhs.ipv4_default_gateway == rhs.ipv4_default_gateway;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::IPv4Settings_<ContainerAllocator1> & lhs, const ::kortex_driver::IPv4Settings_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::IPv4Settings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::IPv4Settings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::IPv4Settings_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "485e8d7e0822786c2180cac4b25f7434";
  }

  static const char* value(const ::kortex_driver::IPv4Settings_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x485e8d7e0822786cULL;
  static const uint64_t static_value2 = 0x2180cac4b25f7434ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/IPv4Settings";
  }

  static const char* value(const ::kortex_driver::IPv4Settings_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 ipv4_address\n"
"uint32 ipv4_subnet_mask\n"
"uint32 ipv4_default_gateway\n"
;
  }

  static const char* value(const ::kortex_driver::IPv4Settings_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ipv4_address);
      stream.next(m.ipv4_subnet_mask);
      stream.next(m.ipv4_default_gateway);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IPv4Settings_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::IPv4Settings_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::IPv4Settings_<ContainerAllocator>& v)
  {
    s << indent << "ipv4_address: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ipv4_address);
    s << indent << "ipv4_subnet_mask: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ipv4_subnet_mask);
    s << indent << "ipv4_default_gateway: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ipv4_default_gateway);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_IPV4SETTINGS_H
