; Auto-generated. Do not edit!


(cl:in-package contrail_msgs-msg)


;//! \htmlinclude DiscreteProgress.msg.html

(cl:defclass <DiscreteProgress> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current
    :reader current
    :initarg :current
    :type cl:integer
    :initform 0)
   (progress
    :reader progress
    :initarg :progress
    :type cl:float
    :initform 0.0))
)

(cl:defclass DiscreteProgress (<DiscreteProgress>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiscreteProgress>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiscreteProgress)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name contrail_msgs-msg:<DiscreteProgress> is deprecated: use contrail_msgs-msg:DiscreteProgress instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DiscreteProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader contrail_msgs-msg:header-val is deprecated.  Use contrail_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <DiscreteProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader contrail_msgs-msg:current-val is deprecated.  Use contrail_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <DiscreteProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader contrail_msgs-msg:progress-val is deprecated.  Use contrail_msgs-msg:progress instead.")
  (progress m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiscreteProgress>) ostream)
  "Serializes a message object of type '<DiscreteProgress>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiscreteProgress>) istream)
  "Deserializes a message object of type '<DiscreteProgress>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiscreteProgress>)))
  "Returns string type for a message object of type '<DiscreteProgress>"
  "contrail_msgs/DiscreteProgress")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiscreteProgress)))
  "Returns string type for a message object of type 'DiscreteProgress"
  "contrail_msgs/DiscreteProgress")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiscreteProgress>)))
  "Returns md5sum for a message object of type '<DiscreteProgress>"
  "d0ce37d53e22567cc5a6951f42cb07aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiscreteProgress)))
  "Returns md5sum for a message object of type 'DiscreteProgress"
  "d0ce37d53e22567cc5a6951f42cb07aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiscreteProgress>)))
  "Returns full string definition for message of type '<DiscreteProgress>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Latest step in the discrete path completed~%uint32 current~%~%# Overall path progess (1.0 = 100%)~%float64 progress~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiscreteProgress)))
  "Returns full string definition for message of type 'DiscreteProgress"
  (cl:format cl:nil "std_msgs/Header header~%~%# Latest step in the discrete path completed~%uint32 current~%~%# Overall path progess (1.0 = 100%)~%float64 progress~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiscreteProgress>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiscreteProgress>))
  "Converts a ROS message object to a list"
  (cl:list 'DiscreteProgress
    (cl:cons ':header (header msg))
    (cl:cons ':current (current msg))
    (cl:cons ':progress (progress msg))
))
