// Generated by gencpp from file simple_planning/get_planRequest.msg
// DO NOT EDIT!


#ifndef SIMPLE_PLANNING_MESSAGE_GET_PLANREQUEST_H
#define SIMPLE_PLANNING_MESSAGE_GET_PLANREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <simple_planning/position.h>

namespace simple_planning
{
template <class ContainerAllocator>
struct get_planRequest_
{
  typedef get_planRequest_<ContainerAllocator> Type;

  get_planRequest_()
    : a_id()
    , goal()  {
    }
  get_planRequest_(const ContainerAllocator& _alloc)
    : a_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _a_id_type;
  _a_id_type a_id;

   typedef  ::simple_planning::position_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::simple_planning::get_planRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simple_planning::get_planRequest_<ContainerAllocator> const> ConstPtr;

}; // struct get_planRequest_

typedef ::simple_planning::get_planRequest_<std::allocator<void> > get_planRequest;

typedef boost::shared_ptr< ::simple_planning::get_planRequest > get_planRequestPtr;
typedef boost::shared_ptr< ::simple_planning::get_planRequest const> get_planRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simple_planning::get_planRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simple_planning::get_planRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simple_planning

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'simple_planning': ['/home/endo/bito/src/simple_planning/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simple_planning::get_planRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simple_planning::get_planRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_planning::get_planRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_planning::get_planRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_planning::get_planRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_planning::get_planRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simple_planning::get_planRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ecf2a5b86287c816e8b2cabb479cb7e2";
  }

  static const char* value(const ::simple_planning::get_planRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xecf2a5b86287c816ULL;
  static const uint64_t static_value2 = 0xe8b2cabb479cb7e2ULL;
};

template<class ContainerAllocator>
struct DataType< ::simple_planning::get_planRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simple_planning/get_planRequest";
  }

  static const char* value(const ::simple_planning::get_planRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simple_planning::get_planRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string a_id\n\
simple_planning/position goal\n\
\n\
================================================================================\n\
MSG: simple_planning/position\n\
int16 x\n\
int16 y\n\
int16 yaw\n\
";
  }

  static const char* value(const ::simple_planning::get_planRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simple_planning::get_planRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_planRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simple_planning::get_planRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simple_planning::get_planRequest_<ContainerAllocator>& v)
  {
    s << indent << "a_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.a_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::simple_planning::position_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMPLE_PLANNING_MESSAGE_GET_PLANREQUEST_H
