#!/usr/bin/env python
# Adapted from http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29
import math
import rospy
from odometry_hw.msg import DistWheel
from odometry_hw.msg import Pose2D

class odometry():
	def __init__(self):
		
		rospy.Subscriber("dist_wheel", DistWheel, self.callback)
		self.pub = rospy.Publisher('pose', Pose2D, queue_size=10)
		self.L=0.05
		self.x=0
		self.y=0
		self.theta=0
		self.delta_sl=0
		self.delta_sr=0
		self.delta_s=0
		self.delta_theta=0
		self.delta_x=0
		self.delta_y=0
		
	def callback(self, data):
		
		self.delta_sl =data.dist_wheel_left
		self.delta_sr =data.dist_wheel_right
                self.delta_s  = (self.delta_sl + self.delta_sr)/2
		self.delta_theta = (self.delta_sr - self.delta_sl)/(2*self.L)
		self.delta_x = self.delta_s* math.cos(self.theta +self.delta_theta/2)
		self.delta_y = self.delta_s* math.sin(self.theta +self.delta_theta/2)
		self.x = self.x + self.delta_x
		self.y = self.y + self.delta_y
		self.theta = self.theta + self.delta_theta
		output = Pose2D()
		output.x = self.x
		output.y = self.y
		output.theta = self.theta
		self.pub.publish(output)

if __name__ == '__main__':

	try:
		rospy.init_node('odom_node', anonymous=True)
        	odometry()
        	rate = rospy.Rate(10) 
        	while not rospy.is_shutdown():
			rate.sleep()
	except rospy.ROSInterruptException:
		pass
