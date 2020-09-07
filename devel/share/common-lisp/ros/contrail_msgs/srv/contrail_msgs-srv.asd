
(cl:in-package :asdf)

(defsystem "contrail_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetTracking" :depends-on ("_package_SetTracking"))
    (:file "_package_SetTracking" :depends-on ("_package"))
  ))