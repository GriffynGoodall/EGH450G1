
(cl:in-package :asdf)

(defsystem "contrail_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TrajectoryAction" :depends-on ("_package_TrajectoryAction"))
    (:file "_package_TrajectoryAction" :depends-on ("_package"))
    (:file "TrajectoryActionFeedback" :depends-on ("_package_TrajectoryActionFeedback"))
    (:file "_package_TrajectoryActionFeedback" :depends-on ("_package"))
    (:file "TrajectoryActionGoal" :depends-on ("_package_TrajectoryActionGoal"))
    (:file "_package_TrajectoryActionGoal" :depends-on ("_package"))
    (:file "TrajectoryActionResult" :depends-on ("_package_TrajectoryActionResult"))
    (:file "_package_TrajectoryActionResult" :depends-on ("_package"))
    (:file "TrajectoryFeedback" :depends-on ("_package_TrajectoryFeedback"))
    (:file "_package_TrajectoryFeedback" :depends-on ("_package"))
    (:file "TrajectoryGoal" :depends-on ("_package_TrajectoryGoal"))
    (:file "_package_TrajectoryGoal" :depends-on ("_package"))
    (:file "TrajectoryResult" :depends-on ("_package_TrajectoryResult"))
    (:file "_package_TrajectoryResult" :depends-on ("_package"))
  ))