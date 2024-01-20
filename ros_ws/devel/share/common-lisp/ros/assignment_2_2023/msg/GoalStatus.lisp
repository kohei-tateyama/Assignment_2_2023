; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-msg)


;//! \htmlinclude GoalStatus.msg.html

(cl:defclass <GoalStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass GoalStatus (<GoalStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-msg:<GoalStatus> is deprecated: use assignment_2_2023-msg:GoalStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GoalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:status-val is deprecated.  Use assignment_2_2023-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <GoalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:text-val is deprecated.  Use assignment_2_2023-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalStatus>) ostream)
  "Serializes a message object of type '<GoalStatus>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalStatus>) istream)
  "Deserializes a message object of type '<GoalStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalStatus>)))
  "Returns string type for a message object of type '<GoalStatus>"
  "assignment_2_2023/GoalStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalStatus)))
  "Returns string type for a message object of type 'GoalStatus"
  "assignment_2_2023/GoalStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalStatus>)))
  "Returns md5sum for a message object of type '<GoalStatus>"
  "3a7ffb7542e8f2c34c310f44cb69496e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalStatus)))
  "Returns md5sum for a message object of type 'GoalStatus"
  "3a7ffb7542e8f2c34c310f44cb69496e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalStatus>)))
  "Returns full string definition for message of type '<GoalStatus>"
  (cl:format cl:nil "# GoalStatus.msg~%int32 status~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalStatus)))
  "Returns full string definition for message of type 'GoalStatus"
  (cl:format cl:nil "# GoalStatus.msg~%int32 status~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalStatus>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalStatus
    (cl:cons ':status (status msg))
    (cl:cons ':text (text msg))
))
