// Generated by gencpp from file kortex_driver/Twist.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_TWIST_H
#define KORTEX_DRIVER_MESSAGE_TWIST_H


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
struct Twist_
{
  typedef Twist_<ContainerAllocator> Type;

  Twist_()
    : linear_x(0.0)
    , linear_y(0.0)
    , linear_z(0.0)
    , angular_x(0.0)
    , angular_y(0.0)
    , angular_z(0.0)  {
    }
  Twist_(const ContainerAllocator& _alloc)
    : linear_x(0.0)
    , linear_y(0.0)
    , linear_z(0.0)
    , angular_x(0.0)
    , angular_y(0.0)
    , angular_z(0.0)  {
  (void)_alloc;
    }



   typedef float _linear_x_type;
  _linear_x_type linear_x;

   typedef float _linear_y_type;
  _linear_y_type linear_y;

   typedef float _linear_z_type;
  _linear_z_type linear_z;

   typedef float _angular_x_type;
  _angular_x_type angular_x;

   typedef float _angular_y_type;
  _angular_y_type angular_y;

   typedef float _angular_z_type;
  _angular_z_type angular_z;





  typedef boost::shared_ptr< ::kortex_driver::Twist_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::Twist_<ContainerAllocator> const> ConstPtr;

}; // struct Twist_

typedef ::kortex_driver::Twist_<std::allocator<void> > Twist;

typedef boost::shared_ptr< ::kortex_driver::Twist > TwistPtr;
typedef boost::shared_ptr< ::kortex_driver::Twist const> TwistConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::Twist_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::Twist_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::Twist_<ContainerAllocator1> & lhs, const ::kortex_driver::Twist_<ContainerAllocator2> & rhs)
{
  return lhs.linear_x == rhs.linear_x &&
    lhs.linear_y == rhs.linear_y &&
    lhs.linear_z == rhs.linear_z &&
    lhs.angular_x == rhs.angular_x &&
    lhs.angular_y == rhs.angular_y &&
    lhs.angular_z == rhs.angular_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::Twist_<ContainerAllocator1> & lhs, const ::kortex_driver::Twist_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::Twist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::Twist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::Twist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::Twist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::Twist_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::Twist_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::Twist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aadf583bd82c7a5a42adeb6e230fba63";
  }

  static const char* value(const ::kortex_driver::Twist_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaadf583bd82c7a5aULL;
  static const uint64_t static_value2 = 0x42adeb6e230fba63ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::Twist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/Twist";
  }

  static const char* value(const ::kortex_driver::Twist_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::Twist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"float32 linear_x\n"
"float32 linear_y\n"
"float32 linear_z\n"
"float32 angular_x\n"
"float32 angular_y\n"
"float32 angular_z\n"
;
  }

  static const char* value(const ::kortex_driver::Twist_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::Twist_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear_x);
      stream.next(m.linear_y);
      stream.next(m.linear_z);
      stream.next(m.angular_x);
      stream.next(m.angular_y);
      stream.next(m.angular_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Twist_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::Twist_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::Twist_<ContainerAllocator>& v)
  {
    s << indent << "linear_x: ";
    Printer<float>::stream(s, indent + "  ", v.linear_x);
    s << indent << "linear_y: ";
    Printer<float>::stream(s, indent + "  ", v.linear_y);
    s << indent << "linear_z: ";
    Printer<float>::stream(s, indent + "  ", v.linear_z);
    s << indent << "angular_x: ";
    Printer<float>::stream(s, indent + "  ", v.angular_x);
    s << indent << "angular_y: ";
    Printer<float>::stream(s, indent + "  ", v.angular_y);
    s << indent << "angular_z: ";
    Printer<float>::stream(s, indent + "  ", v.angular_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_TWIST_H