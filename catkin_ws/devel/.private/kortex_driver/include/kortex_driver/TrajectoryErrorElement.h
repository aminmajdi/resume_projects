// Generated by gencpp from file kortex_driver/TrajectoryErrorElement.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_TRAJECTORYERRORELEMENT_H
#define KORTEX_DRIVER_MESSAGE_TRAJECTORYERRORELEMENT_H


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
struct TrajectoryErrorElement_
{
  typedef TrajectoryErrorElement_<ContainerAllocator> Type;

  TrajectoryErrorElement_()
    : error_type(0)
    , error_identifier(0)
    , error_value(0.0)
    , min_value(0.0)
    , max_value(0.0)
    , index(0)
    , message()  {
    }
  TrajectoryErrorElement_(const ContainerAllocator& _alloc)
    : error_type(0)
    , error_identifier(0)
    , error_value(0.0)
    , min_value(0.0)
    , max_value(0.0)
    , index(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _error_type_type;
  _error_type_type error_type;

   typedef uint32_t _error_identifier_type;
  _error_identifier_type error_identifier;

   typedef float _error_value_type;
  _error_value_type error_value;

   typedef float _min_value_type;
  _min_value_type min_value;

   typedef float _max_value_type;
  _max_value_type max_value;

   typedef uint32_t _index_type;
  _index_type index;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryErrorElement_

typedef ::kortex_driver::TrajectoryErrorElement_<std::allocator<void> > TrajectoryErrorElement;

typedef boost::shared_ptr< ::kortex_driver::TrajectoryErrorElement > TrajectoryErrorElementPtr;
typedef boost::shared_ptr< ::kortex_driver::TrajectoryErrorElement const> TrajectoryErrorElementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator1> & lhs, const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator2> & rhs)
{
  return lhs.error_type == rhs.error_type &&
    lhs.error_identifier == rhs.error_identifier &&
    lhs.error_value == rhs.error_value &&
    lhs.min_value == rhs.min_value &&
    lhs.max_value == rhs.max_value &&
    lhs.index == rhs.index &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator1> & lhs, const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "921f1bd98146e5502806d842534e142a";
  }

  static const char* value(const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x921f1bd98146e550ULL;
  static const uint64_t static_value2 = 0x2806d842534e142aULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/TrajectoryErrorElement";
  }

  static const char* value(const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 error_type\n"
"uint32 error_identifier\n"
"float32 error_value\n"
"float32 min_value\n"
"float32 max_value\n"
"uint32 index\n"
"string message\n"
;
  }

  static const char* value(const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error_type);
      stream.next(m.error_identifier);
      stream.next(m.error_value);
      stream.next(m.min_value);
      stream.next(m.max_value);
      stream.next(m.index);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryErrorElement_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::TrajectoryErrorElement_<ContainerAllocator>& v)
  {
    s << indent << "error_type: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.error_type);
    s << indent << "error_identifier: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.error_identifier);
    s << indent << "error_value: ";
    Printer<float>::stream(s, indent + "  ", v.error_value);
    s << indent << "min_value: ";
    Printer<float>::stream(s, indent + "  ", v.min_value);
    s << indent << "max_value: ";
    Printer<float>::stream(s, indent + "  ", v.max_value);
    s << indent << "index: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.index);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_TRAJECTORYERRORELEMENT_H
