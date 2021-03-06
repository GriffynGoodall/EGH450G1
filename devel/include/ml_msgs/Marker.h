// Generated by gencpp from file ml_msgs/Marker.msg
// DO NOT EDIT!


#ifndef ML_MSGS_MESSAGE_MARKER_H
#define ML_MSGS_MESSAGE_MARKER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace ml_msgs
{
template <class ContainerAllocator>
struct Marker_
{
  typedef Marker_<ContainerAllocator> Type;

  Marker_()
    : marker_id(0)
    , marker_confidence(0.0)
    , rows(0)
    , cols(0)
    , tag_ids()
    , tag_confidence()
    , pose()  {
    }
  Marker_(const ContainerAllocator& _alloc)
    : marker_id(0)
    , marker_confidence(0.0)
    , rows(0)
    , cols(0)
    , tag_ids(_alloc)
    , tag_confidence(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _marker_id_type;
  _marker_id_type marker_id;

   typedef double _marker_confidence_type;
  _marker_confidence_type marker_confidence;

   typedef int32_t _rows_type;
  _rows_type rows;

   typedef int32_t _cols_type;
  _cols_type cols;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _tag_ids_type;
  _tag_ids_type tag_ids;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _tag_confidence_type;
  _tag_confidence_type tag_confidence;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::ml_msgs::Marker_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ml_msgs::Marker_<ContainerAllocator> const> ConstPtr;

}; // struct Marker_

typedef ::ml_msgs::Marker_<std::allocator<void> > Marker;

typedef boost::shared_ptr< ::ml_msgs::Marker > MarkerPtr;
typedef boost::shared_ptr< ::ml_msgs::Marker const> MarkerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ml_msgs::Marker_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ml_msgs::Marker_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ml_msgs::Marker_<ContainerAllocator1> & lhs, const ::ml_msgs::Marker_<ContainerAllocator2> & rhs)
{
  return lhs.marker_id == rhs.marker_id &&
    lhs.marker_confidence == rhs.marker_confidence &&
    lhs.rows == rhs.rows &&
    lhs.cols == rhs.cols &&
    lhs.tag_ids == rhs.tag_ids &&
    lhs.tag_confidence == rhs.tag_confidence &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ml_msgs::Marker_<ContainerAllocator1> & lhs, const ::ml_msgs::Marker_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ml_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ml_msgs::Marker_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ml_msgs::Marker_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ml_msgs::Marker_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ml_msgs::Marker_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ml_msgs::Marker_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ml_msgs::Marker_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ml_msgs::Marker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fc44c2cb27f5503bc7ad49b3ff1f830";
  }

  static const char* value(const ::ml_msgs::Marker_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fc44c2cb27f5503ULL;
  static const uint64_t static_value2 = 0xbc7ad49b3ff1f830ULL;
};

template<class ContainerAllocator>
struct DataType< ::ml_msgs::Marker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ml_msgs/Marker";
  }

  static const char* value(const ::ml_msgs::Marker_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ml_msgs::Marker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This expresses a marker in a 3D space\n"
"int32 marker_id           # id of the marker detected\n"
"float64 marker_confidence  # confidence that this marker is identified correctly\n"
"\n"
"int32 rows                # number of rows of tags in this marker\n"
"int32 cols                # number of cols of tags in this marker\n"
"\n"
"int32[] tag_ids           # possible ids of the detected marker (empty if no id could be identified)\n"
"float64[] tag_confidence  # confidence of the possible ids in 0 -> 1 (empty if no id could be identified)\n"
"\n"
"geometry_msgs/Pose pose   # pose of the detected marker/fiducial\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::ml_msgs::Marker_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ml_msgs::Marker_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.marker_id);
      stream.next(m.marker_confidence);
      stream.next(m.rows);
      stream.next(m.cols);
      stream.next(m.tag_ids);
      stream.next(m.tag_confidence);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Marker_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ml_msgs::Marker_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ml_msgs::Marker_<ContainerAllocator>& v)
  {
    s << indent << "marker_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.marker_id);
    s << indent << "marker_confidence: ";
    Printer<double>::stream(s, indent + "  ", v.marker_confidence);
    s << indent << "rows: ";
    Printer<int32_t>::stream(s, indent + "  ", v.rows);
    s << indent << "cols: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cols);
    s << indent << "tag_ids[]" << std::endl;
    for (size_t i = 0; i < v.tag_ids.size(); ++i)
    {
      s << indent << "  tag_ids[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.tag_ids[i]);
    }
    s << indent << "tag_confidence[]" << std::endl;
    for (size_t i = 0; i < v.tag_confidence.size(); ++i)
    {
      s << indent << "  tag_confidence[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.tag_confidence[i]);
    }
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ML_MSGS_MESSAGE_MARKER_H
