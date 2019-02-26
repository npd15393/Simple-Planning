; Auto-generated. Do not edit!


(cl:in-package simple_planning-srv)


;//! \htmlinclude get_plan-request.msg.html

(cl:defclass <get_plan-request> (roslisp-msg-protocol:ros-message)
  ((a_id
    :reader a_id
    :initarg :a_id
    :type cl:string
    :initform "")
   (goal
    :reader goal
    :initarg :goal
    :type simple_planning-msg:position
    :initform (cl:make-instance 'simple_planning-msg:position)))
)

(cl:defclass get_plan-request (<get_plan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_plan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_plan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_planning-srv:<get_plan-request> is deprecated: use simple_planning-srv:get_plan-request instead.")))

(cl:ensure-generic-function 'a_id-val :lambda-list '(m))
(cl:defmethod a_id-val ((m <get_plan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_planning-srv:a_id-val is deprecated.  Use simple_planning-srv:a_id instead.")
  (a_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <get_plan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_planning-srv:goal-val is deprecated.  Use simple_planning-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_plan-request>) ostream)
  "Serializes a message object of type '<get_plan-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'a_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'a_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_plan-request>) istream)
  "Deserializes a message object of type '<get_plan-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'a_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_plan-request>)))
  "Returns string type for a service object of type '<get_plan-request>"
  "simple_planning/get_planRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_plan-request)))
  "Returns string type for a service object of type 'get_plan-request"
  "simple_planning/get_planRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_plan-request>)))
  "Returns md5sum for a message object of type '<get_plan-request>"
  "ecf2a5b86287c816e8b2cabb479cb7e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_plan-request)))
  "Returns md5sum for a message object of type 'get_plan-request"
  "ecf2a5b86287c816e8b2cabb479cb7e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_plan-request>)))
  "Returns full string definition for message of type '<get_plan-request>"
  (cl:format cl:nil "string a_id~%simple_planning/position goal~%~%================================================================================~%MSG: simple_planning/position~%int16 x~%int16 y~%int16 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_plan-request)))
  "Returns full string definition for message of type 'get_plan-request"
  (cl:format cl:nil "string a_id~%simple_planning/position goal~%~%================================================================================~%MSG: simple_planning/position~%int16 x~%int16 y~%int16 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_plan-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'a_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_plan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_plan-request
    (cl:cons ':a_id (a_id msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude get_plan-response.msg.html

(cl:defclass <get_plan-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_plan-response (<get_plan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_plan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_plan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_planning-srv:<get_plan-response> is deprecated: use simple_planning-srv:get_plan-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_plan-response>) ostream)
  "Serializes a message object of type '<get_plan-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_plan-response>) istream)
  "Deserializes a message object of type '<get_plan-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_plan-response>)))
  "Returns string type for a service object of type '<get_plan-response>"
  "simple_planning/get_planResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_plan-response)))
  "Returns string type for a service object of type 'get_plan-response"
  "simple_planning/get_planResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_plan-response>)))
  "Returns md5sum for a message object of type '<get_plan-response>"
  "ecf2a5b86287c816e8b2cabb479cb7e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_plan-response)))
  "Returns md5sum for a message object of type 'get_plan-response"
  "ecf2a5b86287c816e8b2cabb479cb7e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_plan-response>)))
  "Returns full string definition for message of type '<get_plan-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_plan-response)))
  "Returns full string definition for message of type 'get_plan-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_plan-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_plan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_plan-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_plan)))
  'get_plan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_plan)))
  'get_plan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_plan)))
  "Returns string type for a service object of type '<get_plan>"
  "simple_planning/get_plan")