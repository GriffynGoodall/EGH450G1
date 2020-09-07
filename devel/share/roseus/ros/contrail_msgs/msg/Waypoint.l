;; Auto-generated. Do not edit!


(when (boundp 'contrail_msgs::Waypoint)
  (if (not (find-package "CONTRAIL_MSGS"))
    (make-package "CONTRAIL_MSGS"))
  (shadow 'Waypoint (find-package "CONTRAIL_MSGS")))
(unless (find-package "CONTRAIL_MSGS::WAYPOINT")
  (make-package "CONTRAIL_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass contrail_msgs::Waypoint
  :super ros::object
  :slots (_position _yaw ))

(defmethod contrail_msgs::Waypoint
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _yaw (float __yaw))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get contrail_msgs::Waypoint :md5sum-) "4cc04ac3ba6c1f0f2caa721fb8f71842")
(setf (get contrail_msgs::Waypoint :datatype-) "contrail_msgs/Waypoint")
(setf (get contrail_msgs::Waypoint :definition-)
      "geometry_msgs/Point position
float64 yaw

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :contrail_msgs/Waypoint "4cc04ac3ba6c1f0f2caa721fb8f71842")


