; Auto-generated. Do not edit!


(cl:in-package ml_msgs-msg)


;//! \htmlinclude MarkerDetection.msg.html

(cl:defclass <MarkerDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (markers
    :reader markers
    :initarg :markers
    :type (cl:vector ml_msgs-msg:Marker)
   :initform (cl:make-array 0 :element-type 'ml_msgs-msg:Marker :initial-element (cl:make-instance 'ml_msgs-msg:Marker))))
)

(cl:defclass MarkerDetection (<MarkerDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ml_msgs-msg:<MarkerDetection> is deprecated: use ml_msgs-msg:MarkerDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MarkerDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ml_msgs-msg:header-val is deprecated.  Use ml_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <MarkerDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ml_msgs-msg:markers-val is deprecated.  Use ml_msgs-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerDetection>) ostream)
  "Serializes a message object of type '<MarkerDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerDetection>) istream)
  "Deserializes a message object of type '<MarkerDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ml_msgs-msg:Marker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerDetection>)))
  "Returns string type for a message object of type '<MarkerDetection>"
  "ml_msgs/MarkerDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerDetection)))
  "Returns string type for a message object of type 'MarkerDetection"
  "ml_msgs/MarkerDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerDetection>)))
  "Returns md5sum for a message object of type '<MarkerDetection>"
  "98b2dd1b1684e7d642f181b4ca3c1f0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerDetection)))
  "Returns md5sum for a message object of type 'MarkerDetection"
  "98b2dd1b1684e7d642f181b4ca3c1f0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerDetection>)))
  "Returns full string definition for message of type '<MarkerDetection>"
  (cl:format cl:nil "# An marker with reference coordinate frame and timestamp~%Header header~%Marker[] markers              # pose of the detected boards~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ml_msgs/Marker~%# This expresses a marker in a 3D space~%int32 marker_id           # id of the marker detected~%float64 marker_confidence  # confidence that this marker is identified correctly~%~%int32 rows                # number of rows of tags in this marker~%int32 cols                # number of cols of tags in this marker~%~%int32[] tag_ids           # possible ids of the detected marker (empty if no id could be identified)~%float64[] tag_confidence  # confidence of the possible ids in 0 -> 1 (empty if no id could be identified)~%~%geometry_msgs/Pose pose   # pose of the detected marker/fiducial~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerDetection)))
  "Returns full string definition for message of type 'MarkerDetection"
  (cl:format cl:nil "# An marker with reference coordinate frame and timestamp~%Header header~%Marker[] markers              # pose of the detected boards~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ml_msgs/Marker~%# This expresses a marker in a 3D space~%int32 marker_id           # id of the marker detected~%float64 marker_confidence  # confidence that this marker is identified correctly~%~%int32 rows                # number of rows of tags in this marker~%int32 cols                # number of cols of tags in this marker~%~%int32[] tag_ids           # possible ids of the detected marker (empty if no id could be identified)~%float64[] tag_confidence  # confidence of the possible ids in 0 -> 1 (empty if no id could be identified)~%~%geometry_msgs/Pose pose   # pose of the detected marker/fiducial~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerDetection
    (cl:cons ':header (header msg))
    (cl:cons ':markers (markers msg))
))
