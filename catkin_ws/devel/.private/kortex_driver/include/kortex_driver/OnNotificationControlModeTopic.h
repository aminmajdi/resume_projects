// Generated by gencpp from file kortex_driver/OnNotificationControlModeTopic.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONCONTROLMODETOPIC_H
#define KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONCONTROLMODETOPIC_H

#include <ros/service_traits.h>


#include <kortex_driver/OnNotificationControlModeTopicRequest.h>
#include <kortex_driver/OnNotificationControlModeTopicResponse.h>


namespace kortex_driver
{

struct OnNotificationControlModeTopic
{

typedef OnNotificationControlModeTopicRequest Request;
typedef OnNotificationControlModeTopicResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OnNotificationControlModeTopic
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::OnNotificationControlModeTopic > {
  static const char* value()
  {
    return "6fefdd07c6cb63a94f7b48e7e07e815b";
  }

  static const char* value(const ::kortex_driver::OnNotificationControlModeTopic&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::OnNotificationControlModeTopic > {
  static const char* value()
  {
    return "kortex_driver/OnNotificationControlModeTopic";
  }

  static const char* value(const ::kortex_driver::OnNotificationControlModeTopic&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::OnNotificationControlModeTopicRequest> should match
// service_traits::MD5Sum< ::kortex_driver::OnNotificationControlModeTopic >
template<>
struct MD5Sum< ::kortex_driver::OnNotificationControlModeTopicRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::OnNotificationControlModeTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationControlModeTopicRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::OnNotificationControlModeTopicRequest> should match
// service_traits::DataType< ::kortex_driver::OnNotificationControlModeTopic >
template<>
struct DataType< ::kortex_driver::OnNotificationControlModeTopicRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::OnNotificationControlModeTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationControlModeTopicRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::OnNotificationControlModeTopicResponse> should match
// service_traits::MD5Sum< ::kortex_driver::OnNotificationControlModeTopic >
template<>
struct MD5Sum< ::kortex_driver::OnNotificationControlModeTopicResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::OnNotificationControlModeTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationControlModeTopicResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::OnNotificationControlModeTopicResponse> should match
// service_traits::DataType< ::kortex_driver::OnNotificationControlModeTopic >
template<>
struct DataType< ::kortex_driver::OnNotificationControlModeTopicResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::OnNotificationControlModeTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationControlModeTopicResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONCONTROLMODETOPIC_H
