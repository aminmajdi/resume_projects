// Generated by gencpp from file kortex_driver/ReadSequenceTask.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_READSEQUENCETASK_H
#define KORTEX_DRIVER_MESSAGE_READSEQUENCETASK_H

#include <ros/service_traits.h>


#include <kortex_driver/ReadSequenceTaskRequest.h>
#include <kortex_driver/ReadSequenceTaskResponse.h>


namespace kortex_driver
{

struct ReadSequenceTask
{

typedef ReadSequenceTaskRequest Request;
typedef ReadSequenceTaskResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ReadSequenceTask
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::ReadSequenceTask > {
  static const char* value()
  {
    return "12f1e57da9dc4439676f3faaa4977e1c";
  }

  static const char* value(const ::kortex_driver::ReadSequenceTask&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::ReadSequenceTask > {
  static const char* value()
  {
    return "kortex_driver/ReadSequenceTask";
  }

  static const char* value(const ::kortex_driver::ReadSequenceTask&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::ReadSequenceTaskRequest> should match
// service_traits::MD5Sum< ::kortex_driver::ReadSequenceTask >
template<>
struct MD5Sum< ::kortex_driver::ReadSequenceTaskRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::ReadSequenceTask >::value();
  }
  static const char* value(const ::kortex_driver::ReadSequenceTaskRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::ReadSequenceTaskRequest> should match
// service_traits::DataType< ::kortex_driver::ReadSequenceTask >
template<>
struct DataType< ::kortex_driver::ReadSequenceTaskRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::ReadSequenceTask >::value();
  }
  static const char* value(const ::kortex_driver::ReadSequenceTaskRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::ReadSequenceTaskResponse> should match
// service_traits::MD5Sum< ::kortex_driver::ReadSequenceTask >
template<>
struct MD5Sum< ::kortex_driver::ReadSequenceTaskResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::ReadSequenceTask >::value();
  }
  static const char* value(const ::kortex_driver::ReadSequenceTaskResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::ReadSequenceTaskResponse> should match
// service_traits::DataType< ::kortex_driver::ReadSequenceTask >
template<>
struct DataType< ::kortex_driver::ReadSequenceTaskResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::ReadSequenceTask >::value();
  }
  static const char* value(const ::kortex_driver::ReadSequenceTaskResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_READSEQUENCETASK_H
