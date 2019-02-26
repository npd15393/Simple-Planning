;; Auto-generated. Do not edit!


(when (boundp 'simple_planning::update_goal)
  (if (not (find-package "SIMPLE_PLANNING"))
    (make-package "SIMPLE_PLANNING"))
  (shadow 'update_goal (find-package "SIMPLE_PLANNING")))
(unless (find-package "SIMPLE_PLANNING::UPDATE_GOAL")
  (make-package "SIMPLE_PLANNING::UPDATE_GOAL"))
(unless (find-package "SIMPLE_PLANNING::UPDATE_GOALREQUEST")
  (make-package "SIMPLE_PLANNING::UPDATE_GOALREQUEST"))
(unless (find-package "SIMPLE_PLANNING::UPDATE_GOALRESPONSE")
  (make-package "SIMPLE_PLANNING::UPDATE_GOALRESPONSE"))

(in-package "ROS")





(defclass simple_planning::update_goalRequest
  :super ros::object
  :slots (_id _goal_pose ))

(defmethod simple_planning::update_goalRequest
  (:init
   (&key
    ((:id __id) "")
    ((:goal_pose __goal_pose) (instance simple_planning::position :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _goal_pose __goal_pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; simple_planning/position _goal_pose
    (send _goal_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; simple_planning/position _goal_pose
       (send _goal_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; simple_planning/position _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;;
   self)
  )

(defclass simple_planning::update_goalResponse
  :super ros::object
  :slots ())

(defmethod simple_planning::update_goalResponse
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

(defclass simple_planning::update_goal
  :super ros::object
  :slots ())

(setf (get simple_planning::update_goal :md5sum-) "6c3f64fdd204d39a46bf43783756a939")
(setf (get simple_planning::update_goal :datatype-) "simple_planning/update_goal")
(setf (get simple_planning::update_goal :request) simple_planning::update_goalRequest)
(setf (get simple_planning::update_goal :response) simple_planning::update_goalResponse)

(defmethod simple_planning::update_goalRequest
  (:response () (instance simple_planning::update_goalResponse :init)))

(setf (get simple_planning::update_goalRequest :md5sum-) "6c3f64fdd204d39a46bf43783756a939")
(setf (get simple_planning::update_goalRequest :datatype-) "simple_planning/update_goalRequest")
(setf (get simple_planning::update_goalRequest :definition-)
      "string id
simple_planning/position goal_pose

================================================================================
MSG: simple_planning/position
int16 x
int16 y
int16 yaw
---


")

(setf (get simple_planning::update_goalResponse :md5sum-) "6c3f64fdd204d39a46bf43783756a939")
(setf (get simple_planning::update_goalResponse :datatype-) "simple_planning/update_goalResponse")
(setf (get simple_planning::update_goalResponse :definition-)
      "string id
simple_planning/position goal_pose

================================================================================
MSG: simple_planning/position
int16 x
int16 y
int16 yaw
---


")



(provide :simple_planning/update_goal "6c3f64fdd204d39a46bf43783756a939")


