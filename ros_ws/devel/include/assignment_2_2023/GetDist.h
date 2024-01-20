// Generated by gencpp from file assignment_2_2023/GetDist.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2023_MESSAGE_GETDIST_H
#define ASSIGNMENT_2_2023_MESSAGE_GETDIST_H

#include <ros/service_traits.h>


#include <assignment_2_2023/GetDistRequest.h>
#include <assignment_2_2023/GetDistResponse.h>


namespace assignment_2_2023
{

struct GetDist
{

typedef GetDistRequest Request;
typedef GetDistResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetDist
} // namespace assignment_2_2023


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::assignment_2_2023::GetDist > {
  static const char* value()
  {
    return "baf3f8753bb076ec82d9321f4cc87db6";
  }

  static const char* value(const ::assignment_2_2023::GetDist&) { return value(); }
};

template<>
struct DataType< ::assignment_2_2023::GetDist > {
  static const char* value()
  {
    return "assignment_2_2023/GetDist";
  }

  static const char* value(const ::assignment_2_2023::GetDist&) { return value(); }
};


// service_traits::MD5Sum< ::assignment_2_2023::GetDistRequest> should match
// service_traits::MD5Sum< ::assignment_2_2023::GetDist >
template<>
struct MD5Sum< ::assignment_2_2023::GetDistRequest>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2023::GetDist >::value();
  }
  static const char* value(const ::assignment_2_2023::GetDistRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2023::GetDistRequest> should match
// service_traits::DataType< ::assignment_2_2023::GetDist >
template<>
struct DataType< ::assignment_2_2023::GetDistRequest>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2023::GetDist >::value();
  }
  static const char* value(const ::assignment_2_2023::GetDistRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::assignment_2_2023::GetDistResponse> should match
// service_traits::MD5Sum< ::assignment_2_2023::GetDist >
template<>
struct MD5Sum< ::assignment_2_2023::GetDistResponse>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2023::GetDist >::value();
  }
  static const char* value(const ::assignment_2_2023::GetDistResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2023::GetDistResponse> should match
// service_traits::DataType< ::assignment_2_2023::GetDist >
template<>
struct DataType< ::assignment_2_2023::GetDistResponse>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2023::GetDist >::value();
  }
  static const char* value(const ::assignment_2_2023::GetDistResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASSIGNMENT_2_2023_MESSAGE_GETDIST_H