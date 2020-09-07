;; Auto-generated. Do not edit!


(when (boundp 'contrail_msgs::SetTracking)
  (if (not (find-package "CONTRAIL_MSGS"))
    (make-package "CONTRAIL_MSGS"))
  (shadow 'SetTracking (find-package "CONTRAIL_MSGS")))
(unless (find-package "CONTRAIL_MSGS::SETTRACKING")
  (make-package "CONTRAIL_MSGS::SETTRACKING"))
(unless (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST")
  (make-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(unless (find-package "CONTRAIL_MSGS::SETTRACKINGRESPONSE")
  (make-package "CONTRAIL_MSGS::SETTRACKINGRESPONSE"))

(in-package "ROS")





(intern "*TRACKING_NONE*" (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(shadow '*TRACKING_NONE* (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(defconstant contrail_msgs::SetTrackingRequest::*TRACKING_NONE* 0)
(intern "*TRACKING_SPLINE*" (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(shadow '*TRACKING_SPLINE* (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(defconstant contrail_msgs::SetTrackingRequest::*TRACKING_SPLINE* 1)
(intern "*TRACKING_PATH*" (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(shadow '*TRACKING_PATH* (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(defconstant contrail_msgs::SetTrackingRequest::*TRACKING_PATH* 2)
(intern "*TRACKING_POSE*" (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(shadow '*TRACKING_POSE* (find-package "CONTRAIL_MSGS::SETTRACKINGREQUEST"))
(defconstant contrail_msgs::SetTrackingRequest::*TRACKING_POSE* 3)
(defclass contrail_msgs::SetTrackingRequest
  :super ros::object
  :slots (_tracking ))

(defmethod contrail_msgs::SetTrackingRequest
  (:init
   (&key
    ((:tracking __tracking) 0)
    )
   (send-super :init)
   (setq _tracking (round __tracking))
   self)
  (:tracking
   (&optional __tracking)
   (if __tracking (setq _tracking __tracking)) _tracking)
  (:serialization-length
   ()
   (+
    ;; uint8 _tracking
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _tracking
       (write-byte _tracking s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _tracking
     (setq _tracking (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass contrail_msgs::SetTrackingResponse
  :super ros::object
  :slots (_success ))

(defmethod contrail_msgs::SetTrackingResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass contrail_msgs::SetTracking
  :super ros::object
  :slots ())

(setf (get contrail_msgs::SetTracking :md5sum-) "fcc46c426eb0b77856610784df76e9f8")
(setf (get contrail_msgs::SetTracking :datatype-) "contrail_msgs/SetTracking")
(setf (get contrail_msgs::SetTracking :request) contrail_msgs::SetTrackingRequest)
(setf (get contrail_msgs::SetTracking :response) contrail_msgs::SetTrackingResponse)

(defmethod contrail_msgs::SetTrackingRequest
  (:response () (instance contrail_msgs::SetTrackingResponse :init)))

(setf (get contrail_msgs::SetTrackingRequest :md5sum-) "fcc46c426eb0b77856610784df76e9f8")
(setf (get contrail_msgs::SetTrackingRequest :datatype-) "contrail_msgs/SetTrackingRequest")
(setf (get contrail_msgs::SetTrackingRequest :definition-)
      "uint8 TRACKING_NONE = 0
uint8 TRACKING_SPLINE = 1
uint8 TRACKING_PATH = 2
uint8 TRACKING_POSE = 3

# Set using the \"TRACKING_*\" options defined above
# If no match is found the request will be rejected
uint8 tracking

---

bool success

")

(setf (get contrail_msgs::SetTrackingResponse :md5sum-) "fcc46c426eb0b77856610784df76e9f8")
(setf (get contrail_msgs::SetTrackingResponse :datatype-) "contrail_msgs/SetTrackingResponse")
(setf (get contrail_msgs::SetTrackingResponse :definition-)
      "uint8 TRACKING_NONE = 0
uint8 TRACKING_SPLINE = 1
uint8 TRACKING_PATH = 2
uint8 TRACKING_POSE = 3

# Set using the \"TRACKING_*\" options defined above
# If no match is found the request will be rejected
uint8 tracking

---

bool success

")



(provide :contrail_msgs/SetTracking "fcc46c426eb0b77856610784df76e9f8")


