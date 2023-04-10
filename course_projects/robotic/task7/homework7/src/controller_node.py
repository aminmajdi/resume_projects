#!/usr/bin/env python
# Adapted from http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29
import math
import rospy
from numpy import sign
from std_msgs.msg import Float32

class PID():
	def __init__(self):
		
		rospy.Subscriber("error", Float32, self.error_in)
		rospy.Subscriber("velocity", Float32, self.velocity_in)
		self.pub = rospy.Publisher('control_input', Float32, queue_size=10)
		self.error = 0.0
		self.velocity = 0.0
		self.velocity_PID = 0.0
		self.last_velocity_PID = 0.0
		self.d_v = 0.0
		self.a_PID = 0.0
		self.kp=0.02
		self.ki=0.0001
		self.kd=0.000001
		self.proportional=0.0
		self.integral=0.0
		self.derivative=0.0
		self.last_error=0.0
		self.d_t=0.001 ###same as itteration in vehicle_dynamics node 
		self.u= 0.0 
		self.last_u = 0.0
		self.d_u = 0.0

	def velocity_in(self, ve):
		self.velocity = ve.data # just subscribe to check some possibilities to a better control 

	def error_in(self, er):
		self.error = er.data
		self.proportional = self.kp * self.error

		self.integral += self.ki * self.error * self.d_t

		self.d_error = self.error - self.last_error
		self.last_error = self.error
		self.derivative = self.kd * self.d_error/self.d_t
		self.u = self.proportional + self.integral + self.derivative
		self.d_u = self.u - self.last_u
		self.last_u = self.u
		self.velocity_PID = self.d_u /self.d_t  
		self.d_v = self.velocity_PID - self.last_velocity_PID 
		self.a_PID = self.d_v/ self.d_t
		self.pub.publish(self.a_PID)
#		if -50<= self.a_PID <= 50:
#			self.pub.publish(self.a_PID)
#		else:
#			self.pub.publish(sign(self.a_PID)*60)


if __name__ == '__main__':

	try:
		rospy.init_node('controller_node', anonymous=True)
        	PID()
        	rate = rospy.Rate(10) 
        	while not rospy.is_shutdown():
			rate.sleep()
	except rospy.ROSInterruptException:
		pass
