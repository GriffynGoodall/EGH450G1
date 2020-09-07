;; Auto-generated. Do not edit!


(when (boundp 'ml_msgs::Marker)
  (if (not (find-package "ML_MSGS"))
    (make-package "ML_MSGS"))
  (shadow 'Marker (find-package "ML_MSGS")))
(unless (find-package "ML_MSGS::MARKER")
  (make-package "ML_MSGS::MARKER"))

(in-package "ROS")
;;//! \htmlinclude Marker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ml_msgs::Marker
  :super ros::object
  :slots (_marker_id _marker_confidence _rows _cols _tag_ids _tag_confidence _pose ))

(defmethod ml_msgs::Marker
  (:init
   (&key
    ((:marker_id __marker_id) 0)
    ((:marker_confidence __marker_confidence) 0.0)
    ((:rows __rows) 0)
    ((:cols __cols) 0)
    ((:tag_ids __tag_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tag_confidence __tag_confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _marker_id (round __marker_id))
   (setq _marker_confidence (float __marker_confidence))
   (setq _rows (round __rows))
   (setq _cols (round __cols))
   (setq _tag_ids __tag_ids)
   (setq _tag_confidence __tag_confidence)
   (setq _pose __pose)
   self)
  (:marker_id
   (&optional __marker_id)
   (if __marker_id (setq _marker_id __marker_id)) _marker_id)
  (:marker_confidence
   (&optional __marker_confidence)
   (if __marker_confidence (setq _marker_confidence __marker_confidence)) _marker_confidence)
  (:rows
   (&optional __rows)
   (if __rows (setq _rows __rows)) _rows)
  (:cols
   (&optional __cols)
   (if __cols (setq _cols __cols)) _cols)
  (:tag_ids
   (&optional __tag_ids)
   (if __tag_ids (setq _tag_ids __tag_ids)) _tag_ids)
  (:tag_confidence
   (&optional __tag_confidence)
   (if __tag_confidence (setq _tag_confidence __tag_confidence)) _tag_confidence)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _marker_id
    4
    ;; float64 _marker_confidence
    8
    ;; int32 _rows
    4
    ;; int32 _cols
    4
    ;; int32[] _tag_ids
    (* 4    (length _tag_ids)) 4
    ;; float64[] _tag_confidence
    (* 8    (length _tag_confidence)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _marker_id
       (write-long _marker_id s)
     ;; float64 _marker_confidence
       (sys::poke _marker_confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _rows
       (write-long _rows s)
     ;; int32 _cols
       (write-long _cols s)
     ;; int32[] _tag_ids
     (write-long (length _tag_ids) s)
     (dotimes (i (length _tag_ids))
       (write-long (elt _tag_ids i) s)
       )
     ;; float64[] _tag_confidence
     (write-long (length _tag_confidence) s)
     (dotimes (i (length _tag_confidence))
       (sys::poke (elt _tag_confidence i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _marker_id
     (setq _marker_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _marker_confidence
     (setq _marker_confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _rows
     (setq _rows (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cols
     (setq _cols (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _tag_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tag_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tag_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _tag_confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tag_confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tag_confidence i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get ml_msgs::Marker :md5sum-) "3fc44c2cb27f5503bc7ad49b3ff1f830")
(setf (get ml_msgs::Marker :datatype-) "ml_msgs/Marker")
(setf (get ml_msgs::Marker :definition-)
      "# This expresses a marker in a 3D space
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



(provide :ml_msgs/Marker "3fc44c2cb27f5503bc7ad49b3ff1f830")


