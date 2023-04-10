// Generated by gencpp from file kortex_driver/InterconnectCyclic_CustomData_tool_customData.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_INTERCONNECTCYCLIC_CUSTOMDATA_TOOL_CUSTOMDATA_H
#define KORTEX_DRIVER_MESSAGE_INTERCONNECTCYCLIC_CUSTOMDATA_TOOL_CUSTOMDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/GripperCyclic_CustomData.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct InterconnectCyclic_CustomData_tool_customData_
{
  typedef InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> Type;

  InterconnectCyclic_CustomData_tool_customData_()
    : gripper_custom_data()  {
    }
  InterconnectCyclic_CustomData_tool_customData_(const ContainerAllocator& _alloc)
    : gripper_custom_data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::kortex_driver::GripperCyclic_CustomData_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kortex_driver::GripperCyclic_CustomData_<ContainerAllocator> >::other >  _gripper_custom_data_type;
  _gripper_custom_data_type gripper_custom_data;





  typedef boost::shared_ptr< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> const> ConstPtr;

}; // struct InterconnectCyclic_CustomData_tool_customData_

typedef ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<std::allocator<void> > InterconnectCyclic_CustomData_tool_customData;

typedef boost::shared_ptr< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData > InterconnectCyclic_CustomData_tool_customDataPtr;
typedef boost::shared_ptr< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData const> InterconnectCyclic_CustomData_tool_customDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator1> & lhs, const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator2> & rhs)
{
  return lhs.gripper_custom_data == rhs.gripper_custom_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator1> & lhs, const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08300f61864775cfea0ba45676ef4872";
  }

  static const char* value(const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08300f61864775cfULL;
  static const uint64_t static_value2 = 0xea0ba45676ef4872ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/InterconnectCyclic_CustomData_tool_customData";
  }

  static const char* value(const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"GripperCyclic_CustomData[] gripper_custom_data\n"
"================================================================================\n"
"MSG: kortex_driver/GripperCyclic_CustomData\n"
"\n"
"GripperCyclic_MessageId custom_data_id\n"
"CustomDataUnit gripper_custom_data\n"
"CustomDataUnit[] motor_custom_data\n"
"================================================================================\n"
"MSG: kortex_driver/GripperCyclic_MessageId\n"
"\n"
"uint32 identifier\n"
"================================================================================\n"
"MSG: kortex_driver/CustomDataUnit\n"
"\n"
"uint32 custom_data_0\n"
"uint32 custom_data_1\n"
"uint32 custom_data_2\n"
"uint32 custom_data_3\n"
"uint32 custom_data_4\n"
"uint32 custom_data_5\n"
"uint32 custom_data_6\n"
"uint32 custom_data_7\n"
"uint32 custom_data_8\n"
"uint32 custom_data_9\n"
"uint32 custom_data_10\n"
"uint32 custom_data_11\n"
"uint32 custom_data_12\n"
"uint32 custom_data_13\n"
"uint32 custom_data_14\n"
"uint32 custom_data_15\n"
;
  }

  static const char* value(const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gripper_custom_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InterconnectCyclic_CustomData_tool_customData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::InterconnectCyclic_CustomData_tool_customData_<ContainerAllocator>& v)
  {
    s << indent << "gripper_custom_data[]" << std::endl;
    for (size_t i = 0; i < v.gripper_custom_data.size(); ++i)
    {
      s << indent << "  gripper_custom_data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kortex_driver::GripperCyclic_CustomData_<ContainerAllocator> >::stream(s, indent + "    ", v.gripper_custom_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_INTERCONNECTCYCLIC_CUSTOMDATA_TOOL_CUSTOMDATA_H
