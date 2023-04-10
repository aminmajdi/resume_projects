#!/usr/bin/env python
from __future__ import division
import time
import math
import rospy

from duckietown_msgs.msg import WheelsCmdStamped
from position_finding.msg import current_pose

class odometry():
	def __init__(self):
		
		rospy.Subscriber("/jafar/wheels_driver_node/wheels_cmd_executed", WheelsCmdStamped, self.callback)
		self.pub = rospy.Publisher('current_location',current_pose, queue_size=10)
		self.L=0.052
		self.x=0
		self.y=0
		self.theta=0
		self.vel_l =0
		self.vel_r =0
		self.vel_act_l =0
		self.vel_act_l =0
		self.delta_t =0
		self.delta_sl=0
		self.delta_sr=0
		self.delta_s=0
		self.delta_theta=0
		self.delta_x=0
		self.delta_y=0
		self.v_coef_r = 0.69
		self.v_coef_l = 0.79
		self.last_time = 0
		self.real_time = 0
		self.theta_coef = 0.62
		self.not_first_callback = False
	def callback(self, data):
                self.vel_l =data.vel_left
                self.vel_r =data.vel_right
		self.vel_act_l = self.vel_l * self.v_coef_l
		self.vel_act_r = self.vel_r * self.v_coef_r
		self.real_time = rospy.get_time()
		if self.not_first_callback:
			self.delta_t = rospy.get_time() - self.last_time
		else:
			self.delta_t = 0.02
		if self.delta_t >=0.5 : #long stop
			self.delta_t = 0.02

		self.delta_sl =self.vel_act_l * self.delta_t
		self.delta_sr =self.vel_act_r * self.delta_t
                self.delta_s  = (self.delta_sl + self.delta_sr)/2
		self.delta_theta = ((self.delta_sr - self.delta_sl)/(2*self.L))*self.theta_coef
		self.delta_x = self.delta_s* math.cos(self.theta +self.delta_theta/2)
		self.delta_y = self.delta_s* math.sin(self.theta +self.delta_theta/2)
		self.x = self.x + self.delta_x
		self.y = self.y + self.delta_y
		self.theta = self.theta + self.delta_theta
		output = current_pose()
		output.x = self.x
		output.y = self.y
		output.theta = self.theta
		self.pub.publish(output)
#		rospy.loginfo(self.delta_t)
#                rospy.loginfo(self.vel_l)
		self.not_first_callback = True
                self.last_time = self.real_time
if __name__ == '__main__':
		rospy.init_node('current_pose_node', anonymous=True)
        	odometry()
		rospy.spin()

