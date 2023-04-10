// Generated by gencpp from file kortex_driver/AddSequenceTasks.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_ADDSEQUENCETASKS_H
#define KORTEX_DRIVER_MESSAGE_ADDSEQUENCETASKS_H

#include <ros/service_traits.h>


#include <kortex_driver/AddSequenceTasksRequest.h>
#include <kortex_driver/AddSequenceTasksResponse.h>


namespace kortex_driver
{

struct AddSequenceTasks
{

typedef AddSequenceTasksRequest Request;
typedef AddSequenceTasksResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddSequenceTasks
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::AddSequenceTasks > {
  static const char* value()
  {
    return "2074dbf05d93ae0c83e8b64adee74474";
  }

  static const char* value(const ::kortex_driver::AddSequenceTasks&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::AddSequenceTasks > {
  static const char* value()
  {
    return "kortex_driver/AddSequenceTasks";
  }

  static const char* value(const ::kortex_driver::AddSequenceTasks&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::AddSequenceTasksRequest> should match
// service_traits::MD5Sum< ::kortex_driver::AddSequenceTasks >
template<>
struct MD5Sum< ::kortex_driver::AddSequenceTasksRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::AddSequenceTasks >::value();
  }
  static const char* value(const ::kortex_driver::AddSequenceTasksRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::AddSequenceTasksRequest> should match
// service_traits::DataType< ::kortex_driver::AddSequenceTasks >
template<>
struct DataType< ::kortex_driver::AddSequenceTasksRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::AddSequenceTasks >::value();
  }
  static const char* value(const ::kortex_driver::AddSequenceTasksRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::AddSequenceTasksResponse> should match
// service_traits::MD5Sum< ::kortex_driver::AddSequenceTasks >
template<>
struct MD5Sum< ::kortex_driver::AddSequenceTasksResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::AddSequenceTasks >::value();
  }
  static const char* value(const ::kortex_driver::AddSequenceTasksResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::AddSequenceTasksResponse> should match
// service_traits::DataType< ::kortex_driver::AddSequenceTasks >
template<>
struct DataType< ::kortex_driver::AddSequenceTasksResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::AddSequenceTasks >::value();
  }
  static const char* value(const ::kortex_driver::AddSequenceTasksResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_ADDSEQUENCETASKS_H