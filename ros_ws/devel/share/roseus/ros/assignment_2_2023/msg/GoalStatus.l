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
  :slots (_status _text ))

(defmethod assignment_2_2023::GoalStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _text (string __text))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get assignment_2_2023::GoalStatus :md5sum-) "3a7ffb7542e8f2c34c310f44cb69496e")
(setf (get assignment_2_2023::GoalStatus :datatype-) "assignment_2_2023/GoalStatus")
(setf (get assignment_2_2023::GoalStatus :definition-)
      "# GoalStatus.msg
int32 status
string text

")



(provide :assignment_2_2023/GoalStatus "3a7ffb7542e8f2c34c310f44cb69496e")


