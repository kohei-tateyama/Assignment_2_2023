// Generated by gencpp from file assignment_2_2023/Position.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2023_MESSAGE_POSITION_H
#define ASSIGNMENT_2_2023_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment_2_2023
{
template <class ContainerAllocator>
struct Position_
{
  typedef Position_<ContainerAllocator> Type;

  Position_()
    : x(0.0)
    , y(0.0)
    , vel_x(0.0)
    , vel_y(0.0)  {
    }
  Position_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , vel_x(0.0)
    , vel_y(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _vel_x_type;
  _vel_x_type vel_x;

   typedef double _vel_y_type;
  _vel_y_type vel_y;





  typedef boost::shared_ptr< ::assignment_2_2023::Position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_2_2023::Position_<ContainerAllocator> const> ConstPtr;

}; // struct Position_

typedef ::assignment_2_2023::Position_<std::allocator<void> > Position;

typedef boost::shared_ptr< ::assignment_2_2023::Position > PositionPtr;
typedef boost::shared_ptr< ::assignment_2_2023::Position const> PositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_2_2023::Position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_2_2023::Position_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignment_2_2023::Position_<ContainerAllocator1> & lhs, const ::assignment_2_2023::Position_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.vel_x == rhs.vel_x &&
    lhs.vel_y == rhs.vel_y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignment_2_2023::Position_<ContainerAllocator1> & lhs, const ::assignment_2_2023::Position_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignment_2_2023

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2023::Position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2023::Position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2023::Position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2023::Position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2023::Position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2023::Position_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_2_2023::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c041bf0d055543994235684d51d3d835";
  }

  static const char* value(const ::assignment_2_2023::Position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc041bf0d05554399ULL;
  static const uint64_t static_value2 = 0x4235684d51d3d835ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_2_2023::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_2_2023/Position";
  }

  static const char* value(const ::assignment_2_2023::Position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_2_2023::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 vel_x\n"
"float64 vel_y\n"
;
  }

  static const char* value(const ::assignment_2_2023::Position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_2_2023::Position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.vel_x);
      stream.next(m.vel_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_2_2023::Position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment_2_2023::Position_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "vel_x: ";
    Printer<double>::stream(s, indent + "  ", v.vel_x);
    s << indent << "vel_y: ";
    Printer<double>::stream(s, indent + "  ", v.vel_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_2_2023_MESSAGE_POSITION_H
