;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::GoalStatus)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'GoalStatus (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::GOALSTATUS")
  (make-package "ASSIGNMENT_2_2023::GOALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GoalStatus.msg.html


(defclass assignment_2_2023::GoalStatus
  :super ros::object
  :slots (_header _goal_id _stamp _secs _nsecs _id _status _text ))

(defmethod assignment_2_2023::GoalStatus
  (:init
   (&key
    ((:header __header) 0.0)
    ((:goal_id __goal_id) 0.0)
    ((:stamp __stamp) 0.0)
    ((:secs __secs) 0.0)
    ((:nsecs __nsecs) 0.0)
    ((:id __id) 0.0)
    ((:status __status) 0.0)
    ((:text __text) 0.0)
    )
   (send-super :init)
   (setq _header (float __header))
   (setq _goal_id (float __goal_id))
   (setq _stamp (float __stamp))
   (setq _secs (float __secs))
   (setq _nsecs (float __nsecs))
   (setq _id (float __id))
   (setq _status (float __status))
   (setq _text (float __text))
   self)
  (:header
   (&optional __header)
   (if __header (setq _header __header)) _header)
  (:goal_id
   (&optional __goal_id)
   (if __goal_id (setq _goal_id __goal_id)) _goal_id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:secs
   (&optional __secs)
   (if __secs (setq _secs __secs)) _secs)
  (:nsecs
   (&optional __nsecs)
   (if __nsecs (setq _nsecs __nsecs)) _nsecs)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; float64 _header
    8
    ;; float64 _goal_id
    8
    ;; float64 _stamp
    8
    ;; float64 _secs
    8
    ;; float64 _nsecs
    8
    ;; float64 _id
    8
    ;; float64 _status
    8
    ;; float64 _text
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _header
       (sys::poke _header (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _goal_id
       (sys::poke _goal_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _secs
       (sys::poke _secs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _nsecs
       (sys::poke _nsecs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _id
       (sys::poke _id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _status
       (sys::poke _status (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _text
       (sys::poke _text (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _header
     (setq _header (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _goal_id
     (setq _goal_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _stamp
     (setq _stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _secs
     (setq _secs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _nsecs
     (setq _nsecs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _id
     (setq _id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _status
     (setq _status (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _text
     (setq _text (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get assignment_2_2023::GoalStatus :md5sum-) "067cd7cb55e722a1bc57106df18d22c9")
(setf (get assignment_2_2023::GoalStatus :datatype-) "assignment_2_2023/GoalStatus")
(setf (get assignment_2_2023::GoalStatus :definition-)
      "float64 header
float64 goal_id
float64 stamp
float64 secs
float64 nsecs
float64 id
float64 status
float64 text

")



(provide :assignment_2_2023/GoalStatus "067cd7cb55e722a1bc57106df18d22c9")


