#!/usr/bin/env python
# Adapted from http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29


import time 
import rospy
from std_msgs.msg import String
from duckietown_msgs.msg import Twist2DStamped



class listener:
    def __init__(self):
#        rospy.Subscriber("/chatter", String, self.callback)
	self.pub = rospy.Publisher('/jafar/car_cmd_switch_node/cmd', Twist2DStamped, queue_size=10)
	output = Twist2DStamped()
	output.v = 0
	output.omega = 0
	self.pub.publish(output)

	duration_time = 2
	start_time = rospy.get_time()  
	while (rospy.get_time() - start_time) < duration_time:
		output.v = 0.5
		output.omega = 0
		rate = rospy.Rate(100)
		self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega =0.7 
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0.5
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = -0.7
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0.5
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0.7
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
		rate.sleep()
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0.5
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)
        duration_time = 2
        start_time = rospy.get_time()  
        while (rospy.get_time() - start_time) < duration_time:
                output.v = 0
                output.omega = 0
		rate = rospy.Rate(100)
                self.pub.publish(output)



if __name__ == '__main__':
	rospy.init_node('mp1_node', anonymous=True)
	listener()
	rospy.spin()

