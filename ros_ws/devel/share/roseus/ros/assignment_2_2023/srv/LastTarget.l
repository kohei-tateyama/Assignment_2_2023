;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::LastTarget)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'LastTarget (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::LASTTARGET")
  (make-package "ASSIGNMENT_2_2023::LASTTARGET"))
(unless (find-package "ASSIGNMENT_2_2023::LASTTARGETREQUEST")
  (make-package "ASSIGNMENT_2_2023::LASTTARGETREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::LASTTARGETRESPONSE")
  (make-package "ASSIGNMENT_2_2023::LASTTARGETRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::LastTargetRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::LastTargetRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass assignment_2_2023::LastTargetResponse
  :super ros::object
  :slots (_x _y ))

(defmethod assignment_2_2023::LastTargetResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass assignment_2_2023::LastTarget
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::LastTarget :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get assignment_2_2023::LastTarget :datatype-) "assignment_2_2023/LastTarget")
(setf (get assignment_2_2023::LastTarget :request) assignment_2_2023::LastTargetRequest)
(setf (get assignment_2_2023::LastTarget :response) assignment_2_2023::LastTargetResponse)

(defmethod assignment_2_2023::LastTargetRequest
  (:response () (instance assignment_2_2023::LastTargetResponse :init)))

(setf (get assignment_2_2023::LastTargetRequest :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get assignment_2_2023::LastTargetRequest :datatype-) "assignment_2_2023/LastTargetRequest")
(setf (get assignment_2_2023::LastTargetRequest :definition-)
      "---
float64 x
float64 y

")

(setf (get assignment_2_2023::LastTargetResponse :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get assignment_2_2023::LastTargetResponse :datatype-) "assignment_2_2023/LastTargetResponse")
(setf (get assignment_2_2023::LastTargetResponse :definition-)
      "---
float64 x
float64 y

")



(provide :assignment_2_2023/LastTarget "209f516d3eb691f0663e25cb750d67c1")


