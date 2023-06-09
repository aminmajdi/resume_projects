// Generated by gencpp from file kortex_driver/CreateSequence.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_CREATESEQUENCE_H
#define KORTEX_DRIVER_MESSAGE_CREATESEQUENCE_H

#include <ros/service_traits.h>


#include <kortex_driver/CreateSequenceRequest.h>
#include <kortex_driver/CreateSequenceResponse.h>


namespace kortex_driver
{

struct CreateSequence
{

typedef CreateSequenceRequest Request;
typedef CreateSequenceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CreateSequence
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::CreateSequence > {
  static const char* value()
  {
    return "cfb529ee8979edc12d516b224eafe4f3";
  }

  static const char* value(const ::kortex_driver::CreateSequence&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::CreateSequence > {
  static const char* value()
  {
    return "kortex_driver/CreateSequence";
  }

  static const char* value(const ::kortex_driver::CreateSequence&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::CreateSequenceRequest> should match
// service_traits::MD5Sum< ::kortex_driver::CreateSequence >
template<>
struct MD5Sum< ::kortex_driver::CreateSequenceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::CreateSequence >::value();
  }
  static const char* value(const ::kortex_driver::CreateSequenceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::CreateSequenceRequest> should match
// service_traits::DataType< ::kortex_driver::CreateSequence >
template<>
struct DataType< ::kortex_driver::CreateSequenceRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::CreateSequence >::value();
  }
  static const char* value(const ::kortex_driver::CreateSequenceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::CreateSequenceResponse> should match
// service_traits::MD5Sum< ::kortex_driver::CreateSequence >
template<>
struct MD5Sum< ::kortex_driver::CreateSequenceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::CreateSequence >::value();
  }
  static const char* value(const ::kortex_driver::CreateSequenceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::CreateSequenceResponse> should match
// service_traits::DataType< ::kortex_driver::CreateSequence >
template<>
struct DataType< ::kortex_driver::CreateSequenceResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::CreateSequence >::value();
  }
  static const char* value(const ::kortex_driver::CreateSequenceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_CREATESEQUENCE_H
