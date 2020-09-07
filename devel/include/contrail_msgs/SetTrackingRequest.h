// Generated by gencpp from file contrail_msgs/SetTrackingRequest.msg
// DO NOT EDIT!


#ifndef CONTRAIL_MSGS_MESSAGE_SETTRACKINGREQUEST_H
#define CONTRAIL_MSGS_MESSAGE_SETTRACKINGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace contrail_msgs
{
template <class ContainerAllocator>
struct SetTrackingRequest_
{
  typedef SetTrackingRequest_<ContainerAllocator> Type;

  SetTrackingRequest_()
    : tracking(0)  {
    }
  SetTrackingRequest_(const ContainerAllocator& _alloc)
    : tracking(0)  {
  (void)_alloc;
    }



   typedef uint8_t _tracking_type;
  _tracking_type tracking;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(TRACKING_NONE)
  #undef TRACKING_NONE
#endif
#if defined(_WIN32) && defined(TRACKING_SPLINE)
  #undef TRACKING_SPLINE
#endif
#if defined(_WIN32) && defined(TRACKING_PATH)
  #undef TRACKING_PATH
#endif
#if defined(_WIN32) && defined(TRACKING_POSE)
  #undef TRACKING_POSE
#endif

  enum {
    TRACKING_NONE = 0u,
    TRACKING_SPLINE = 1u,
    TRACKING_PATH = 2u,
    TRACKING_POSE = 3u,
  };


  typedef boost::shared_ptr< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTrackingRequest_

typedef ::contrail_msgs::SetTrackingRequest_<std::allocator<void> > SetTrackingRequest;

typedef boost::shared_ptr< ::contrail_msgs::SetTrackingRequest > SetTrackingRequestPtr;
typedef boost::shared_ptr< ::contrail_msgs::SetTrackingRequest const> SetTrackingRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator1> & lhs, const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator2> & rhs)
{
  return lhs.tracking == rhs.tracking;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator1> & lhs, const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace contrail_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c9243e9b574a04db99088031f82c5223";
  }

  static const char* value(const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc9243e9b574a04dbULL;
  static const uint64_t static_value2 = 0x99088031f82c5223ULL;
};

template<class ContainerAllocator>
struct DataType< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "contrail_msgs/SetTrackingRequest";
  }

  static const char* value(const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 TRACKING_NONE = 0\n"
"uint8 TRACKING_SPLINE = 1\n"
"uint8 TRACKING_PATH = 2\n"
"uint8 TRACKING_POSE = 3\n"
"\n"
"# Set using the \"TRACKING_*\" options defined above\n"
"# If no match is found the request will be rejected\n"
"uint8 tracking\n"
"\n"
;
  }

  static const char* value(const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tracking);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTrackingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::contrail_msgs::SetTrackingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::contrail_msgs::SetTrackingRequest_<ContainerAllocator>& v)
  {
    s << indent << "tracking: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.tracking);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTRAIL_MSGS_MESSAGE_SETTRACKINGREQUEST_H
