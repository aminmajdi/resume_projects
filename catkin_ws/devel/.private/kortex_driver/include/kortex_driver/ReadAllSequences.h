// Generated by gencpp from file kortex_driver/ReadAllSequences.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_READALLSEQUENCES_H
#define KORTEX_DRIVER_MESSAGE_READALLSEQUENCES_H

#include <ros/service_traits.h>


#include <kortex_driver/ReadAllSequencesRequest.h>
#include <kortex_driver/ReadAllSequencesResponse.h>


namespace kortex_driver
{

struct ReadAllSequences
{

typedef ReadAllSequencesRequest Request;
typedef ReadAllSequencesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ReadAllSequences
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::ReadAllSequences > {
  static const char* value()
  {
    return "e6a5e86bfa02e158f9a0d6c8be0b253a";
  }

  static const char* value(const ::kortex_driver::ReadAllSequences&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::ReadAllSequences > {
  static const char* value()
  {
    return "kortex_driver/ReadAllSequences";
  }

  static const char* value(const ::kortex_driver::ReadAllSequences&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::ReadAllSequencesRequest> should match
// service_traits::MD5Sum< ::kortex_driver::ReadAllSequences >
template<>
struct MD5Sum< ::kortex_driver::ReadAllSequencesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::ReadAllSequences >::value();
  }
  static const char* value(const ::kortex_driver::ReadAllSequencesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::ReadAllSequencesRequest> should match
// service_traits::DataType< ::kortex_driver::ReadAllSequences >
template<>
struct DataType< ::kortex_driver::ReadAllSequencesRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::ReadAllSequences >::value();
  }
  static const char* value(const ::kortex_driver::ReadAllSequencesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::ReadAllSequencesResponse> should match
// service_traits::MD5Sum< ::kortex_driver::ReadAllSequences >
template<>
struct MD5Sum< ::kortex_driver::ReadAllSequencesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::ReadAllSequences >::value();
  }
  static const char* value(const ::kortex_driver::ReadAllSequencesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::ReadAllSequencesResponse> should match
// service_traits::DataType< ::kortex_driver::ReadAllSequences >
template<>
struct DataType< ::kortex_driver::ReadAllSequencesResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::ReadAllSequences >::value();
  }
  static const char* value(const ::kortex_driver::ReadAllSequencesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_READALLSEQUENCES_H
