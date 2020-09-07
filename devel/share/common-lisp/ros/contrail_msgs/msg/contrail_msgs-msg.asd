
(cl:in-package :asdf)

(defsystem "contrail_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CubicSpline" :depends-on ("_package_CubicSpline"))
    (:file "_package_CubicSpline" :depends-on ("_package"))
    (:file "DiscreteProgress" :depends-on ("_package_DiscreteProgress"))
    (:file "_package_DiscreteProgress" :depends-on ("_package"))
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "WaypointList" :depends-on ("_package_WaypointList"))
    (:file "_package_WaypointList" :depends-on ("_package"))
  ))