// Generated by gencpp from file kortex_driver/CreateAction.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_CREATEACTION_H
#define KORTEX_DRIVER_MESSAGE_CREATEACTION_H

#include <ros/service_traits.h>


#include <kortex_driver/CreateActionRequest.h>
#include <kortex_driver/CreateActionResponse.h>


namespace kortex_driver
{

struct CreateAction
{

typedef CreateActionRequest Request;
typedef CreateActionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CreateAction
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::CreateAction > {
  static const char* value()
  {
    return "83fc9494b9a3cfe9495b5685593b3645";
  }

  static const char* value(const ::kortex_driver::CreateAction&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::CreateAction > {
  static const char* value()
  {
    return "kortex_driver/CreateAction";
  }

  static const char* value(const ::kortex_driver::CreateAction&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::CreateActionRequest> should match
// service_traits::MD5Sum< ::kortex_driver::CreateAction >
template<>
struct MD5Sum< ::kortex_driver::CreateActionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::CreateAction >::value();
  }
  static const char* value(const ::kortex_driver::CreateActionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::CreateActionRequest> should match
// service_traits::DataType< ::kortex_driver::CreateAction >
template<>
struct DataType< ::kortex_driver::CreateActionRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::CreateAction >::value();
  }
  static const char* value(const ::kortex_driver::CreateActionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::CreateActionResponse> should match
// service_traits::MD5Sum< ::kortex_driver::CreateAction >
template<>
struct MD5Sum< ::kortex_driver::CreateActionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::CreateAction >::value();
  }
  static const char* value(const ::kortex_driver::CreateActionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::CreateActionResponse> should match
// service_traits::DataType< ::kortex_driver::CreateAction >
template<>
struct DataType< ::kortex_driver::CreateActionResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::CreateAction >::value();
  }
  static const char* value(const ::kortex_driver::CreateActionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_CREATEACTION_H
