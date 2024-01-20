; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude LastTarget-request.msg.html

(cl:defclass <LastTarget-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LastTarget-request (<LastTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LastTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LastTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<LastTarget-request> is deprecated: use assignment_2_2023-srv:LastTarget-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LastTarget-request>) ostream)
  "Serializes a message object of type '<LastTarget-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LastTarget-request>) istream)
  "Deserializes a message object of type '<LastTarget-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LastTarget-request>)))
  "Returns string type for a service object of type '<LastTarget-request>"
  "assignment_2_2023/LastTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LastTarget-request)))
  "Returns string type for a service object of type 'LastTarget-request"
  "assignment_2_2023/LastTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LastTarget-request>)))
  "Returns md5sum for a message object of type '<LastTarget-request>"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LastTarget-request)))
  "Returns md5sum for a message object of type 'LastTarget-request"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LastTarget-request>)))
  "Returns full string definition for message of type '<LastTarget-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LastTarget-request)))
  "Returns full string definition for message of type 'LastTarget-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LastTarget-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LastTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LastTarget-request
))
;//! \htmlinclude LastTarget-response.msg.html

(cl:defclass <LastTarget-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass LastTarget-response (<LastTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LastTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LastTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<LastTarget-response> is deprecated: use assignment_2_2023-srv:LastTarget-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LastTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:x-val is deprecated.  Use assignment_2_2023-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LastTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:y-val is deprecated.  Use assignment_2_2023-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LastTarget-response>) ostream)
  "Serializes a message object of type '<LastTarget-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LastTarget-response>) istream)
  "Deserializes a message object of type '<LastTarget-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LastTarget-response>)))
  "Returns string type for a service object of type '<LastTarget-response>"
  "assignment_2_2023/LastTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LastTarget-response)))
  "Returns string type for a service object of type 'LastTarget-response"
  "assignment_2_2023/LastTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LastTarget-response>)))
  "Returns md5sum for a message object of type '<LastTarget-response>"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LastTarget-response)))
  "Returns md5sum for a message object of type 'LastTarget-response"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LastTarget-response>)))
  "Returns full string definition for message of type '<LastTarget-response>"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LastTarget-response)))
  "Returns full string definition for message of type 'LastTarget-response"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LastTarget-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LastTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LastTarget-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LastTarget)))
  'LastTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LastTarget)))
  'LastTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LastTarget)))
  "Returns string type for a service object of type '<LastTarget>"
  "assignment_2_2023/LastTarget")