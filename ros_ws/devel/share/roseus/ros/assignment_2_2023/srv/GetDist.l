;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::GetDist)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'GetDist (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::GETDIST")
  (make-package "ASSIGNMENT_2_2023::GETDIST"))
(unless (find-package "ASSIGNMENT_2_2023::GETDISTREQUEST")
  (make-package "ASSIGNMENT_2_2023::GETDISTREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::GETDISTRESPONSE")
  (make-package "ASSIGNMENT_2_2023::GETDISTRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::GetDistRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::GetDistRequest
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

(defclass assignment_2_2023::GetDistResponse
  :super ros::object
  :slots (_dist _av_speed_x _av_speed_y ))

(defmethod assignment_2_2023::GetDistResponse
  (:init
   (&key
    ((:dist __dist) 0.0)
    ((:av_speed_x __av_speed_x) 0.0)
    ((:av_speed_y __av_speed_y) 0.0)
    )
   (send-super :init)
   (setq _dist (float __dist))
   (setq _av_speed_x (float __av_speed_x))
   (setq _av_speed_y (float __av_speed_y))
   self)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:av_speed_x
   (&optional __av_speed_x)
   (if __av_speed_x (setq _av_speed_x __av_speed_x)) _av_speed_x)
  (:av_speed_y
   (&optional __av_speed_y)
   (if __av_speed_y (setq _av_speed_y __av_speed_y)) _av_speed_y)
  (:serialization-length
   ()
   (+
    ;; float64 _dist
    8
    ;; float64 _av_speed_x
    8
    ;; float64 _av_speed_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _av_speed_x
       (sys::poke _av_speed_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _av_speed_y
       (sys::poke _av_speed_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _dist
     (setq _dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _av_speed_x
     (setq _av_speed_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _av_speed_y
     (setq _av_speed_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass assignment_2_2023::GetDist
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::GetDist :md5sum-) "baf3f8753bb076ec82d9321f4cc87db6")
(setf (get assignment_2_2023::GetDist :datatype-) "assignment_2_2023/GetDist")
(setf (get assignment_2_2023::GetDist :request) assignment_2_2023::GetDistRequest)
(setf (get assignment_2_2023::GetDist :response) assignment_2_2023::GetDistResponse)

(defmethod assignment_2_2023::GetDistRequest
  (:response () (instance assignment_2_2023::GetDistResponse :init)))

(setf (get assignment_2_2023::GetDistRequest :md5sum-) "baf3f8753bb076ec82d9321f4cc87db6")
(setf (get assignment_2_2023::GetDistRequest :datatype-) "assignment_2_2023/GetDistRequest")
(setf (get assignment_2_2023::GetDistRequest :definition-)
      "
---
float64 dist
float64 av_speed_x
float64 av_speed_y
")

(setf (get assignment_2_2023::GetDistResponse :md5sum-) "baf3f8753bb076ec82d9321f4cc87db6")
(setf (get assignment_2_2023::GetDistResponse :datatype-) "assignment_2_2023/GetDistResponse")
(setf (get assignment_2_2023::GetDistResponse :definition-)
      "
---
float64 dist
float64 av_speed_x
float64 av_speed_y
")



(provide :assignment_2_2023/GetDist "baf3f8753bb076ec82d9321f4cc87db6")


