;; Auto-generated. Do not edit!


(when (boundp 'ml_msgs::MarkerDetection)
  (if (not (find-package "ML_MSGS"))
    (make-package "ML_MSGS"))
  (shadow 'MarkerDetection (find-package "ML_MSGS")))
(unless (find-package "ML_MSGS::MARKERDETECTION")
  (make-package "ML_MSGS::MARKERDETECTION"))

(in-package "ROS")
;;//! \htmlinclude MarkerDetection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ml_msgs::MarkerDetection
  :super ros::object
  :slots (_header _markers ))

(defmethod ml_msgs::MarkerDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance ml_msgs::Marker :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _markers __markers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ml_msgs/Marker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ml_msgs/Marker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ml_msgs/Marker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance ml_msgs::Marker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ml_msgs::MarkerDetection :md5sum-) "98b2dd1b1684e7d642f181b4ca3c1f0c")
(setf (get ml_msgs::MarkerDetection :datatype-) "ml_msgs/MarkerDetection")
(setf (get ml_msgs::MarkerDetection :definition-)
      "# An marker with reference coordinate frame and timestamp
Header header
Marker[] markers              # pose of the detected boards

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

================================================================================
MSG: ml_msgs/Marker
# This expresses a marker in a 3D space
int32 marker_id           # id of the marker detected
float64 marker_confidence  # confidence that this marker is identified correctly

int32 rows                # number of rows of tags in this marker
int32 cols                # number of cols of tags in this marker

int32[] tag_ids           # possible ids of the detected marker (empty if no id could be identified)
float64[] tag_confidence  # confidence of the possible ids in 0 -> 1 (empty if no id could be identified)

geometry_msgs/Pose pose   # pose of the detected marker/fiducial

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ml_msgs/MarkerDetection "98b2dd1b1684e7d642f181b4ca3c1f0c")


