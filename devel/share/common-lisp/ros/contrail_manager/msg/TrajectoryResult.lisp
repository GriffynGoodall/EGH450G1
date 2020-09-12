; Auto-generated. Do not edit!


(cl:in-package contrail_manager-msg)


;//! \htmlinclude TrajectoryResult.msg.html

(cl:defclass <TrajectoryResult> (roslisp-msg-protocol:ros-message)
  ((position_final
    :reader position_final
    :initarg :position_final
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (yaw_final
    :reader yaw_final
    :initarg :yaw_final
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryResult (<TrajectoryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name contrail_manager-msg:<TrajectoryResult> is deprecated: use contrail_manager-msg:TrajectoryResult instead.")))

(cl:ensure-generic-function 'position_final-val :lambda-list '(m))
(cl:defmethod position_final-val ((m <TrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader contrail_manager-msg:position_final-val is deprecated.  Use contrail_manager-msg:position_final instead.")
  (position_final m))

(cl:ensure-generic-function 'yaw_final-val :lambda-list '(m))
(cl:defmethod yaw_final-val ((m <TrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader contrail_manager-msg:yaw_final-val is deprecated.  Use contrail_manager-msg:yaw_final instead.")
  (yaw_final m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryResult>) ostream)
  "Serializes a message object of type '<TrajectoryResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_final) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_final))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryResult>) istream)
  "Deserializes a message object of type '<TrajectoryResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_final) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_final) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryResult>)))
  "Returns string type for a message object of type '<TrajectoryResult>"
  "contrail_manager/TrajectoryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryResult)))
  "Returns string type for a message object of type 'TrajectoryResult"
  "contrail_manager/TrajectoryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryResult>)))
  "Returns md5sum for a message object of type '<TrajectoryResult>"
  "5fe1bdb7dd6bd3879df39aed09b5c596")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryResult)))
  "Returns md5sum for a message object of type 'TrajectoryResult"
  "5fe1bdb7dd6bd3879df39aed09b5c596")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryResult>)))
  "Returns full string definition for message of type '<TrajectoryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%#~%# position_final: the final commanded position of the movement~%geometry_msgs/Vector3 position_final~%float64 yaw_final~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryResult)))
  "Returns full string definition for message of type 'TrajectoryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%#~%# position_final: the final commanded position of the movement~%geometry_msgs/Vector3 position_final~%float64 yaw_final~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_final))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryResult
    (cl:cons ':position_final (position_final msg))
    (cl:cons ':yaw_final (yaw_final msg))
))