// Generated by gencpp from file kortex_driver/ExecuteActionRequest.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_EXECUTEACTIONREQUEST_H
#define KORTEX_DRIVER_MESSAGE_EXECUTEACTIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/Action.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct ExecuteActionRequest_
{
  typedef ExecuteActionRequest_<ContainerAllocator> Type;

  ExecuteActionRequest_()
    : input()  {
    }
  ExecuteActionRequest_(const ContainerAllocator& _alloc)
    : input(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::Action_<ContainerAllocator>  _input_type;
  _input_type input;





  typedef boost::shared_ptr< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ExecuteActionRequest_

typedef ::kortex_driver::ExecuteActionRequest_<std::allocator<void> > ExecuteActionRequest;

typedef boost::shared_ptr< ::kortex_driver::ExecuteActionRequest > ExecuteActionRequestPtr;
typedef boost::shared_ptr< ::kortex_driver::ExecuteActionRequest const> ExecuteActionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input == rhs.input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator1> & lhs, const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2930b98ae1557d5a627eba21dd825d4e";
  }

  static const char* value(const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2930b98ae1557d5aULL;
  static const uint64_t static_value2 = 0x627eba21dd825d4eULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/ExecuteActionRequest";
  }

  static const char* value(const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Action input\n"
"\n"
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
"MSG: kortex_driver/MapHandle\n"
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

  static const char* value(const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecuteActionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::ExecuteActionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::ExecuteActionRequest_<ContainerAllocator>& v)
  {
    s << indent << "input: ";
    s << std::endl;
    Printer< ::kortex_driver::Action_<ContainerAllocator> >::stream(s, indent + "  ", v.input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_EXECUTEACTIONREQUEST_H
