// Generated by gencpp from file uml_hri_nerve_pick_and_place/Num.msg
// DO NOT EDIT!


#ifndef UML_HRI_NERVE_PICK_AND_PLACE_MESSAGE_NUM_H
#define UML_HRI_NERVE_PICK_AND_PLACE_MESSAGE_NUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uml_hri_nerve_pick_and_place
{
template <class ContainerAllocator>
struct Num_
{
  typedef Num_<ContainerAllocator> Type;

  Num_()
    : num(0)  {
    }
  Num_(const ContainerAllocator& _alloc)
    : num(0)  {
  (void)_alloc;
    }



   typedef int64_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> const> ConstPtr;

}; // struct Num_

typedef ::uml_hri_nerve_pick_and_place::Num_<std::allocator<void> > Num;

typedef boost::shared_ptr< ::uml_hri_nerve_pick_and_place::Num > NumPtr;
typedef boost::shared_ptr< ::uml_hri_nerve_pick_and_place::Num const> NumConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator1> & lhs, const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator1> & lhs, const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uml_hri_nerve_pick_and_place

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "57d3c40ec3ac3754af76a83e6e73127a";
  }

  static const char* value(const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x57d3c40ec3ac3754ULL;
  static const uint64_t static_value2 = 0xaf76a83e6e73127aULL;
};

template<class ContainerAllocator>
struct DataType< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uml_hri_nerve_pick_and_place/Num";
  }

  static const char* value(const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 num\n"
;
  }

  static const char* value(const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Num_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uml_hri_nerve_pick_and_place::Num_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UML_HRI_NERVE_PICK_AND_PLACE_MESSAGE_NUM_H