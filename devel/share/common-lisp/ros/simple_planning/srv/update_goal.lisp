; Auto-generated. Do not edit!


(cl:in-package simple_planning-srv)


;//! \htmlinclude update_goal-request.msg.html

(cl:defclass <update_goal-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type simple_planning-msg:position
    :initform (cl:make-instance 'simple_planning-msg:position)))
)

(cl:defclass update_goal-request (<update_goal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <update_goal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'update_goal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_planning-srv:<update_goal-request> is deprecated: use simple_planning-srv:update_goal-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <update_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_planning-srv:id-val is deprecated.  Use simple_planning-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <update_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_planning-srv:goal_pose-val is deprecated.  Use simple_planning-srv:goal_pose instead.")
  (goal_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <update_goal-request>) ostream)
  "Serializes a message object of type '<update_goal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <update_goal-request>) istream)
  "Deserializes a message object of type '<update_goal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<update_goal-request>)))
  "Returns string type for a service object of type '<update_goal-request>"
  "simple_planning/update_goalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update_goal-request)))
  "Returns string type for a service object of type 'update_goal-request"
  "simple_planning/update_goalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<update_goal-request>)))
  "Returns md5sum for a message object of type '<update_goal-request>"
  "6c3f64fdd204d39a46bf43783756a939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'update_goal-request)))
  "Returns md5sum for a message object of type 'update_goal-request"
  "6c3f64fdd204d39a46bf43783756a939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<update_goal-request>)))
  "Returns full string definition for message of type '<update_goal-request>"
  (cl:format cl:nil "string id~%simple_planning/position goal_pose~%~%================================================================================~%MSG: simple_planning/position~%int16 x~%int16 y~%int16 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'update_goal-request)))
  "Returns full string definition for message of type 'update_goal-request"
  (cl:format cl:nil "string id~%simple_planning/position goal_pose~%~%================================================================================~%MSG: simple_planning/position~%int16 x~%int16 y~%int16 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <update_goal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <update_goal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'update_goal-request
    (cl:cons ':id (id msg))
    (cl:cons ':goal_pose (goal_pose msg))
))
;//! \htmlinclude update_goal-response.msg.html

(cl:defclass <update_goal-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass update_goal-response (<update_goal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <update_goal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'update_goal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_planning-srv:<update_goal-response> is deprecated: use simple_planning-srv:update_goal-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <update_goal-response>) ostream)
  "Serializes a message object of type '<update_goal-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <update_goal-response>) istream)
  "Deserializes a message object of type '<update_goal-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<update_goal-response>)))
  "Returns string type for a service object of type '<update_goal-response>"
  "simple_planning/update_goalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update_goal-response)))
  "Returns string type for a service object of type 'update_goal-response"
  "simple_planning/update_goalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<update_goal-response>)))
  "Returns md5sum for a message object of type '<update_goal-response>"
  "6c3f64fdd204d39a46bf43783756a939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'update_goal-response)))
  "Returns md5sum for a message object of type 'update_goal-response"
  "6c3f64fdd204d39a46bf43783756a939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<update_goal-response>)))
  "Returns full string definition for message of type '<update_goal-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'update_goal-response)))
  "Returns full string definition for message of type 'update_goal-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <update_goal-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <update_goal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'update_goal-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'update_goal)))
  'update_goal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'update_goal)))
  'update_goal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update_goal)))
  "Returns string type for a service object of type '<update_goal>"
  "simple_planning/update_goal")