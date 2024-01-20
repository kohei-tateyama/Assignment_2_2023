
(cl:in-package :asdf)

(defsystem "assignment_2_2023-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetDist" :depends-on ("_package_GetDist"))
    (:file "_package_GetDist" :depends-on ("_package"))
    (:file "LastTarget" :depends-on ("_package_LastTarget"))
    (:file "_package_LastTarget" :depends-on ("_package"))
  ))