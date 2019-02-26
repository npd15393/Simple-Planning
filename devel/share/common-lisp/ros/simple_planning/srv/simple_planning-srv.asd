
(cl:in-package :asdf)

(defsystem "simple_planning-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :simple_planning-msg
)
  :components ((:file "_package")
    (:file "get_plan" :depends-on ("_package_get_plan"))
    (:file "_package_get_plan" :depends-on ("_package"))
    (:file "update_goal" :depends-on ("_package_update_goal"))
    (:file "_package_update_goal" :depends-on ("_package"))
  ))