; Auto-generated. Do not edit!


(cl:in-package contrail_msgs-srv)


;//! \htmlinclude SetTracking-request.msg.html

(cl:defclass <SetTracking-request> (roslisp-msg-protocol:ros-message)
  ((tracking
    :reader tracking
    :initarg :tracking
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTracking-request (<SetTracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name contrail_msgs-srv:<SetTracking-request> is deprecated: use contrail_msgs-srv:SetTracking-request instead.")))

(cl:ensure-generic-function 'tracking-val :lambda-list '(m))
(cl:defmethod tracking-val ((m <SetTracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader contrail_msgs-srv:tracking-val is deprecated.  Use contrail_msgs-srv:tracking instead.")
  (tracking m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetTracking-request>)))
    "Constants for message type '<SetTracking-request>"
  '((:TRACKING_NONE . 0)
    (:TRACKING_SPLINE . 1)
    (:TRACKING_PATH . 2)
    (:TRACKING_POSE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetTracking-request)))
    "Constants for message type 'SetTracking-request"
  '((:TRACKING_NONE . 0)
    (:TRACKING_SPLINE . 1)
    (:TRACKING_PATH . 2)
    (:TRACKING_POSE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTracking-request>) ostream)
  "Serializes a message object of type '<SetTracking-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTracking-request>) istream)
  "Deserializes a message object of type '<SetTracking-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTracking-request>)))
  "Returns string type for a service object of type '<SetTracking-request>"
  "contrail_msgs/SetTrackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTracking-request)))
  "Returns string type for a service object of type 'SetTracking-request"
  "contrail_msgs/SetTrackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTracking-request>)))
  "Returns md5sum for a message object of type '<SetTracking-request>"
  "fcc46c426eb0b77856610784df76e9f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTracking-request)))
  "Returns md5sum for a message object of type 'SetTracking-request"
  "fcc46c426eb0b77856610784df76e9f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTracking-request>)))
  "Returns full string definition for message of type '<SetTracking-request>"
  (cl:format cl:nil "uint8 TRACKING_NONE = 0~%uint8 TRACKING_SPLINE = 1~%uint8 TRACKING_PATH = 2~%uint8 TRACKING_POSE = 3~%~%# Set using the \"TRACKING_*\" options defined above~%# If no match is found the request will be rejected~%uint8 tracking~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTracking-request)))
  "Returns full string definition for message of type 'SetTracking-request"
  (cl:format cl:nil "uint8 TRACKING_NONE = 0~%uint8 TRACKING_SPLINE = 1~%uint8 TRACKING_PATH = 2~%uint8 TRACKING_POSE = 3~%~%# Set using the \"TRACKING_*\" options defined above~%# If no match is found the request will be rejected~%uint8 tracking~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTracking-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTracking-request
    (cl:cons ':tracking (tracking msg))
))
;//! \htmlinclude SetTracking-response.msg.html

(cl:defclass <SetTracking-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTracking-response (<SetTracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name contrail_msgs-srv:<SetTracking-response> is deprecated: use contrail_msgs-srv:SetTracking-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader contrail_msgs-srv:success-val is deprecated.  Use contrail_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTracking-response>) ostream)
  "Serializes a message object of type '<SetTracking-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTracking-response>) istream)
  "Deserializes a message object of type '<SetTracking-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTracking-response>)))
  "Returns string type for a service object of type '<SetTracking-response>"
  "contrail_msgs/SetTrackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTracking-response)))
  "Returns string type for a service object of type 'SetTracking-response"
  "contrail_msgs/SetTrackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTracking-response>)))
  "Returns md5sum for a message object of type '<SetTracking-response>"
  "fcc46c426eb0b77856610784df76e9f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTracking-response)))
  "Returns md5sum for a message object of type 'SetTracking-response"
  "fcc46c426eb0b77856610784df76e9f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTracking-response>)))
  "Returns full string definition for message of type '<SetTracking-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTracking-response)))
  "Returns full string definition for message of type 'SetTracking-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTracking-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTracking-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTracking)))
  'SetTracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTracking)))
  'SetTracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTracking)))
  "Returns string type for a service object of type '<SetTracking>"
  "contrail_msgs/SetTracking")