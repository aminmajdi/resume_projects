// Generated by gencpp from file kortex_driver/Map.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_MAP_H
#define KORTEX_DRIVER_MESSAGE_MAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/MapHandle.h>
#include <kortex_driver/MapElement.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct Map_
{
  typedef Map_<ContainerAllocator> Type;

  Map_()
    : handle()
    , name()
    , elements()  {
    }
  Map_(const ContainerAllocator& _alloc)
    : handle(_alloc)
    , name(_alloc)
    , elements(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::MapHandle_<ContainerAllocator>  _handle_type;
  _handle_type handle;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::vector< ::kortex_driver::MapElement_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kortex_driver::MapElement_<ContainerAllocator> >::other >  _elements_type;
  _elements_type elements;





  typedef boost::shared_ptr< ::kortex_driver::Map_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::Map_<ContainerAllocator> const> ConstPtr;

}; // struct Map_

typedef ::kortex_driver::Map_<std::allocator<void> > Map;

typedef boost::shared_ptr< ::kortex_driver::Map > MapPtr;
typedef boost::shared_ptr< ::kortex_driver::Map const> MapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::Map_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::Map_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::Map_<ContainerAllocator1> & lhs, const ::kortex_driver::Map_<ContainerAllocator2> & rhs)
{
  return lhs.handle == rhs.handle &&
    lhs.name == rhs.name &&
    lhs.elements == rhs.elements;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::Map_<ContainerAllocator1> & lhs, const ::kortex_driver::Map_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::Map_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::Map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::Map_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::Map_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "419d1b35598137a4a398953e58980262";
  }

  static const char* value(const ::kortex_driver::Map_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x419d1b35598137a4ULL;
  static const uint64_t static_value2 = 0xa398953e58980262ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/Map";
  }

  static const char* value(const ::kortex_driver::Map_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"MapHandle handle\n"
"string name\n"
"MapElement[] elements\n"
"================================================================================\n"
"MSG: kortex_driver/MapHandle\n"
"\n"
"uint32 identifier\n"
"uint32 permission\n"
"================================================================================\n"
"MSG: kortex_driver/MapElement\n"
"\n"
"MapEvent event\n"
"Action action\n"
"string name\n"
"================================================================================\n"
"MSG: kortex_driver/MapEvent\n"
"\n"
"string name\n"
"MapEvent_events oneof_events\n"
"================================================================================\n"
"MSG: kortex_driver/MapEvent_events\n"
"\n"
"SafetyEvent[] safety_event\n"
"GpioEvent[] gpio_event\n"
"ControllerEvent[] controller_event\n"
"================================================================================\n"
"MSG: kortex_driver/SafetyEvent\n"
"\n"
"SafetyHandle safety_handle\n"
"================================================================================\n"
"MSG: kortex_driver/SafetyHandle\n"
"\n"
"uint32 identifier\n"
"================================================================================\n"
"MSG: kortex_driver/GpioEvent\n"
"\n"
"uint32 input_type\n"
"uint32 behavior\n"
"uint32 input_identifier\n"
"================================================================================\n"
"MSG: kortex_driver/ControllerEvent\n"
"\n"
"uint32 input_type\n"
"uint32 behavior\n"
"uint32 input_identifier\n"
"================================================================================\n"
"MSG: kortex_driver/Action\n"
"\n"
"ActionHandle handle\n"
"string name\n"
"string application_data\n"
"Action_action_parameters oneof_action_parameters\n"
"================================================================================\n"
"MSG: kortex_driver/ActionHandle\n"
"\n"
"uint32 identifier\n"
"uint32 action_type\n"
"uint32 permission\n"
"================================================================================\n"
"MSG: kortex_driver/Action_action_parameters\n"
"\n"
"TwistCommand[] send_twist_command\n"
"WrenchCommand[] send_wrench_command\n"
"Base_JointSpeeds[] send_joint_speeds\n"
"ConstrainedPose[] reach_pose\n"
"ConstrainedJointAngles[] reach_joint_angles\n"
"uint32[] toggle_admittance_mode\n"
"Snapshot[] snapshot\n"
"SwitchControlMapping[] switch_control_mapping\n"
"uint32[] navigate_joints\n"
"uint32[] navigate_mappings\n"
"ChangeTwist[] change_twist\n"
"ChangeJointSpeeds[] change_joint_speeds\n"
"ChangeWrench[] change_wrench\n"
"EmergencyStop[] apply_emergency_stop\n"
"Faults[] clear_faults\n"
"Delay[] delay\n"
"ActionHandle[] execute_action\n"
"GripperCommand[] send_gripper_command\n"
"Base_Stop[] stop_action\n"
"PreComputedJointTrajectory[] play_pre_computed_trajectory\n"
"================================================================================\n"
"MSG: kortex_driver/TwistCommand\n"
"\n"
"uint32 reference_frame\n"
"Twist twist\n"
"uint32 duration\n"
"================================================================================\n"
"MSG: kortex_driver/Twist\n"
"\n"
"float32 linear_x\n"
"float32 linear_y\n"
"float32 linear_z\n"
"float32 angular_x\n"
"float32 angular_y\n"
"float32 angular_z\n"
"================================================================================\n"
"MSG: kortex_driver/WrenchCommand\n"
"\n"
"uint32 reference_frame\n"
"uint32 mode\n"
"Wrench wrench\n"
"uint32 duration\n"
"================================================================================\n"
"MSG: kortex_driver/Wrench\n"
"\n"
"float32 force_x\n"
"float32 force_y\n"
"float32 force_z\n"
"float32 torque_x\n"
"float32 torque_y\n"
"float32 torque_z\n"
"================================================================================\n"
"MSG: kortex_driver/Base_JointSpeeds\n"
"\n"
"JointSpeed[] joint_speeds\n"
"uint32 duration\n"
"================================================================================\n"
"MSG: kortex_driver/JointSpeed\n"
"\n"
"uint32 joint_identifier\n"
"float32 value\n"
"uint32 duration\n"
"================================================================================\n"
"MSG: kortex_driver/ConstrainedPose\n"
"\n"
"Pose target_pose\n"
"CartesianTrajectoryConstraint constraint\n"
"================================================================================\n"
"MSG: kortex_driver/Pose\n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 theta_x\n"
"float32 theta_y\n"
"float32 theta_z\n"
"================================================================================\n"
"MSG: kortex_driver/CartesianTrajectoryConstraint\n"
"\n"
"CartesianTrajectoryConstraint_type oneof_type\n"
"================================================================================\n"
"MSG: kortex_driver/CartesianTrajectoryConstraint_type\n"
"\n"
"CartesianSpeed[] speed\n"
"uint32[] duration\n"
"================================================================================\n"
"MSG: kortex_driver/CartesianSpeed\n"
"\n"
"float32 translation\n"
"float32 orientation\n"
"================================================================================\n"
"MSG: kortex_driver/ConstrainedJointAngles\n"
"\n"
"JointAngles joint_angles\n"
"JointTrajectoryConstraint constraint\n"
"================================================================================\n"
"MSG: kortex_driver/JointAngles\n"
"\n"
"JointAngle[] joint_angles\n"
"================================================================================\n"
"MSG: kortex_driver/JointAngle\n"
"\n"
"uint32 joint_identifier\n"
"float32 value\n"
"================================================================================\n"
"MSG: kortex_driver/JointTrajectoryConstraint\n"
"\n"
"uint32 type\n"
"float32 value\n"
"================================================================================\n"
"MSG: kortex_driver/Snapshot\n"
"\n"
"uint32 snapshot_type\n"
"================================================================================\n"
"MSG: kortex_driver/SwitchControlMapping\n"
"\n"
"uint32 controller_identifier\n"
"MapGroupHandle map_group_handle\n"
"MapHandle map_handle\n"
"================================================================================\n"
"MSG: kortex_driver/MapGroupHandle\n"
"\n"
"uint32 identifier\n"
"uint32 permission\n"
"================================================================================\n"
"MSG: kortex_driver/ChangeTwist\n"
"\n"
"float32 linear\n"
"float32 angular\n"
"================================================================================\n"
"MSG: kortex_driver/ChangeJointSpeeds\n"
"\n"
"Base_JointSpeeds joint_speeds\n"
"================================================================================\n"
"MSG: kortex_driver/ChangeWrench\n"
"\n"
"float32 force\n"
"float32 torque\n"
"================================================================================\n"
"MSG: kortex_driver/EmergencyStop\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/Faults\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/Delay\n"
"\n"
"uint32 duration\n"
"================================================================================\n"
"MSG: kortex_driver/GripperCommand\n"
"\n"
"uint32 mode\n"
"Gripper gripper\n"
"uint32 duration\n"
"================================================================================\n"
"MSG: kortex_driver/Gripper\n"
"\n"
"Finger[] finger\n"
"================================================================================\n"
"MSG: kortex_driver/Finger\n"
"\n"
"uint32 finger_identifier\n"
"float32 value\n"
"================================================================================\n"
"MSG: kortex_driver/Base_Stop\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/PreComputedJointTrajectory\n"
"\n"
"uint32 mode\n"
"PreComputedJointTrajectoryElement[] trajectory_elements\n"
"================================================================================\n"
"MSG: kortex_driver/PreComputedJointTrajectoryElement\n"
"\n"
"float32[] joint_angles\n"
"float32[] joint_speeds\n"
"float32[] joint_accelerations\n"
"float32 time_from_start\n"
;
  }

  static const char* value(const ::kortex_driver::Map_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::Map_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.handle);
      stream.next(m.name);
      stream.next(m.elements);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Map_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::Map_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::Map_<ContainerAllocator>& v)
  {
    s << indent << "handle: ";
    s << std::endl;
    Printer< ::kortex_driver::MapHandle_<ContainerAllocator> >::stream(s, indent + "  ", v.handle);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "elements[]" << std::endl;
    for (size_t i = 0; i < v.elements.size(); ++i)
    {
      s << indent << "  elements[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kortex_driver::MapElement_<ContainerAllocator> >::stream(s, indent + "    ", v.elements[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_MAP_H
