;; Auto-generated. Do not edit!


(when (boundp 'simple_planning::get_plan)
  (if (not (find-package "SIMPLE_PLANNING"))
    (make-package "SIMPLE_PLANNING"))
  (shadow 'get_plan (find-package "SIMPLE_PLANNING")))
(unless (find-package "SIMPLE_PLANNING::GET_PLAN")
  (make-package "SIMPLE_PLANNING::GET_PLAN"))
(unless (find-package "SIMPLE_PLANNING::GET_PLANREQUEST")
  (make-package "SIMPLE_PLANNING::GET_PLANREQUEST"))
(unless (find-package "SIMPLE_PLANNING::GET_PLANRESPONSE")
  (make-package "SIMPLE_PLANNING::GET_PLANRESPONSE"))

(in-package "ROS")





(defclass simple_planning::get_planRequest
  :super ros::object
  :slots (_a_id _goal ))

(defmethod simple_planning::get_planRequest
  (:init
   (&key
    ((:a_id __a_id) "")
    ((:goal __goal) (instance simple_planning::position :init))
    )
   (send-super :init)
   (setq _a_id (string __a_id))
   (setq _goal __goal)
   self)
  (:a_id
   (&optional __a_id)
   (if __a_id (setq _a_id __a_id)) _a_id)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; string _a_id
    4 (length _a_id)
    ;; simple_planning/position _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _a_id
       (write-long (length _a_id) s) (princ _a_id s)
     ;; simple_planning/position _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _a_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; simple_planning/position _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass simple_planning::get_planResponse
  :super ros::object
  :slots ())

(defmethod simple_planning::get_planResponse
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

(defclass simple_planning::get_plan
  :super ros::object
  :slots ())

(setf (get simple_planning::get_plan :md5sum-) "ecf2a5b86287c816e8b2cabb479cb7e2")
(setf (get simple_planning::get_plan :datatype-) "simple_planning/get_plan")
(setf (get simple_planning::get_plan :request) simple_planning::get_planRequest)
(setf (get simple_planning::get_plan :response) simple_planning::get_planResponse)

(defmethod simple_planning::get_planRequest
  (:response () (instance simple_planning::get_planResponse :init)))

(setf (get simple_planning::get_planRequest :md5sum-) "ecf2a5b86287c816e8b2cabb479cb7e2")
(setf (get simple_planning::get_planRequest :datatype-) "simple_planning/get_planRequest")
(setf (get simple_planning::get_planRequest :definition-)
      "string a_id
simple_planning/position goal

================================================================================
MSG: simple_planning/position
int16 x
int16 y
int16 yaw
---


")

(setf (get simple_planning::get_planResponse :md5sum-) "ecf2a5b86287c816e8b2cabb479cb7e2")
(setf (get simple_planning::get_planResponse :datatype-) "simple_planning/get_planResponse")
(setf (get simple_planning::get_planResponse :definition-)
      "string a_id
simple_planning/position goal

================================================================================
MSG: simple_planning/position
int16 x
int16 y
int16 yaw
---


")



(provide :simple_planning/get_plan "ecf2a5b86287c816e8b2cabb479cb7e2")


