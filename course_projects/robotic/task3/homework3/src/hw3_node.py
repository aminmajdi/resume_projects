#!/usr/bin/env python
# Adapted from http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29

import rospy
from std_msgs.msg import String
from homework3.msg import my_massage




#output = my_massage()
#output.str_var=rospy.get_caller_id()


class listener:
    def __init__(self):
        rospy.Subscriber("/chatter", String, self.callback)
	self.pub = rospy.Publisher('hw3_topic', my_massage, queue_size=10)
	self.counter = 0
    def callback(self, data):
        output = my_massage()
	output.str_var = data.data
	output.num_var = self.counter
	self.pub.publish(output)
	self.counter += 1

if __name__ == '__main__':
	listener()
        rospy.init_node('hw3_node', anonymous=True)
	rospy.spin()
