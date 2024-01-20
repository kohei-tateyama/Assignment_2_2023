; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude GetDist-request.msg.html

(cl:defclass <GetDist-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDist-request (<GetDist-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDist-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDist-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<GetDist-request> is deprecated: use assignment_2_2023-srv:GetDist-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDist-request>) ostream)
  "Serializes a message object of type '<GetDist-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDist-request>) istream)
  "Deserializes a message object of type '<GetDist-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDist-request>)))
  "Returns string type for a service object of type '<GetDist-request>"
  "assignment_2_2023/GetDistRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDist-request)))
  "Returns string type for a service object of type 'GetDist-request"
  "assignment_2_2023/GetDistRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDist-request>)))
  "Returns md5sum for a message object of type '<GetDist-request>"
  "baf3f8753bb076ec82d9321f4cc87db6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDist-request)))
  "Returns md5sum for a message object of type 'GetDist-request"
  "baf3f8753bb076ec82d9321f4cc87db6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDist-request>)))
  "Returns full string definition for message of type '<GetDist-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDist-request)))
  "Returns full string definition for message of type 'GetDist-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDist-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDist-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDist-request
))
;//! \htmlinclude GetDist-response.msg.html

(cl:defclass <GetDist-response> (roslisp-msg-protocol:ros-message)
  ((dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (av_speed_x
    :reader av_speed_x
    :initarg :av_speed_x
    :type cl:float
    :initform 0.0)
   (av_speed_y
    :reader av_speed_y
    :initarg :av_speed_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetDist-response (<GetDist-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDist-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDist-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<GetDist-response> is deprecated: use assignment_2_2023-srv:GetDist-response instead.")))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <GetDist-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:dist-val is deprecated.  Use assignment_2_2023-srv:dist instead.")
  (dist m))

(cl:ensure-generic-function 'av_speed_x-val :lambda-list '(m))
(cl:defmethod av_speed_x-val ((m <GetDist-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:av_speed_x-val is deprecated.  Use assignment_2_2023-srv:av_speed_x instead.")
  (av_speed_x m))

(cl:ensure-generic-function 'av_speed_y-val :lambda-list '(m))
(cl:defmethod av_speed_y-val ((m <GetDist-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:av_speed_y-val is deprecated.  Use assignment_2_2023-srv:av_speed_y instead.")
  (av_speed_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDist-response>) ostream)
  "Serializes a message object of type '<GetDist-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'av_speed_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'av_speed_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDist-response>) istream)
  "Deserializes a message object of type '<GetDist-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'av_speed_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'av_speed_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDist-response>)))
  "Returns string type for a service object of type '<GetDist-response>"
  "assignment_2_2023/GetDistResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDist-response)))
  "Returns string type for a service object of type 'GetDist-response"
  "assignment_2_2023/GetDistResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDist-response>)))
  "Returns md5sum for a message object of type '<GetDist-response>"
  "baf3f8753bb076ec82d9321f4cc87db6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDist-response)))
  "Returns md5sum for a message object of type 'GetDist-response"
  "baf3f8753bb076ec82d9321f4cc87db6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDist-response>)))
  "Returns full string definition for message of type '<GetDist-response>"
  (cl:format cl:nil "float64 dist~%float64 av_speed_x~%float64 av_speed_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDist-response)))
  "Returns full string definition for message of type 'GetDist-response"
  (cl:format cl:nil "float64 dist~%float64 av_speed_x~%float64 av_speed_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDist-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDist-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDist-response
    (cl:cons ':dist (dist msg))
    (cl:cons ':av_speed_x (av_speed_x msg))
    (cl:cons ':av_speed_y (av_speed_y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDist)))
  'GetDist-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDist)))
  'GetDist-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDist)))
  "Returns string type for a service object of type '<GetDist>"
  "assignment_2_2023/GetDist")