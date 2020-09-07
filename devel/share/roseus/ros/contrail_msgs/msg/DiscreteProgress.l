;; Auto-generated. Do not edit!


(when (boundp 'contrail_msgs::DiscreteProgress)
  (if (not (find-package "CONTRAIL_MSGS"))
    (make-package "CONTRAIL_MSGS"))
  (shadow 'DiscreteProgress (find-package "CONTRAIL_MSGS")))
(unless (find-package "CONTRAIL_MSGS::DISCRETEPROGRESS")
  (make-package "CONTRAIL_MSGS::DISCRETEPROGRESS"))

(in-package "ROS")
;;//! \htmlinclude DiscreteProgress.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass contrail_msgs::DiscreteProgress
  :super ros::object
  :slots (_header _current _progress ))

(defmethod contrail_msgs::DiscreteProgress
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current __current) 0)
    ((:progress __progress) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current (round __current))
   (setq _progress (float __progress))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _current
    4
    ;; float64 _progress
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _current
       (write-long _current s)
     ;; float64 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _current
     (setq _current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _progress
     (setq _progress (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get contrail_msgs::DiscreteProgress :md5sum-) "d0ce37d53e22567cc5a6951f42cb07aa")
(setf (get contrail_msgs::DiscreteProgress :datatype-) "contrail_msgs/DiscreteProgress")
(setf (get contrail_msgs::DiscreteProgress :definition-)
      "std_msgs/Header header

# Latest step in the discrete path completed
uint32 current

# Overall path progess (1.0 = 100%)
float64 progress

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :contrail_msgs/DiscreteProgress "d0ce37d53e22567cc5a6951f42cb07aa")


