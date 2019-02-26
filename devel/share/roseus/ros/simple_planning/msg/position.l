;; Auto-generated. Do not edit!


(when (boundp 'simple_planning::position)
  (if (not (find-package "SIMPLE_PLANNING"))
    (make-package "SIMPLE_PLANNING"))
  (shadow 'position (find-package "SIMPLE_PLANNING")))
(unless (find-package "SIMPLE_PLANNING::POSITION")
  (make-package "SIMPLE_PLANNING::POSITION"))

(in-package "ROS")
;;//! \htmlinclude position.msg.html


(defclass simple_planning::position
  :super ros::object
  :slots (_x _y _yaw ))

(defmethod simple_planning::position
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:yaw __yaw) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _yaw (round __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int16 _yaw
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; int16 _yaw
       (write-word _yaw s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _yaw
     (setq _yaw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get simple_planning::position :md5sum-) "652061b60d916a0a2696ac0296ce8038")
(setf (get simple_planning::position :datatype-) "simple_planning/position")
(setf (get simple_planning::position :definition-)
      "int16 x
int16 y
int16 yaw

")



(provide :simple_planning/position "652061b60d916a0a2696ac0296ce8038")


