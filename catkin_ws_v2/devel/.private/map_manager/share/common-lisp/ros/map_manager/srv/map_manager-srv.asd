
(cl:in-package :asdf)

(defsystem "map_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CheckCollision" :depends-on ("_package_CheckCollision"))
    (:file "_package_CheckCollision" :depends-on ("_package"))
    (:file "RandomSample" :depends-on ("_package_RandomSample"))
    (:file "_package_RandomSample" :depends-on ("_package"))
  ))