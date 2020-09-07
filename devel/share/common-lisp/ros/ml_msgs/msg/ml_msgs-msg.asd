
(cl:in-package :asdf)

(defsystem "ml_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Marker" :depends-on ("_package_Marker"))
    (:file "_package_Marker" :depends-on ("_package"))
    (:file "MarkerDetection" :depends-on ("_package_MarkerDetection"))
    (:file "_package_MarkerDetection" :depends-on ("_package"))
  ))