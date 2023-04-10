#!/usr/bin/env python
# Adapted from http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29

import rospy
from std_msgs.msg import String


class listener:
    def __init__(self):
        rospy.Subscriber("chatter", String, self.callback)
	self.pub = rospy.Publisher('my_topic', String, queue_size=10)

    def callback(self, data):
	hello_str = "MESSAGE : "+data.data
        rospy.loginfo(rospy.get_caller_id() + "MASSAGE : %s", data.data)
	self.pub.publish(hello_str)
if __name__ == '__main__':
    try:
	rospy.init_node('my_node', anonymous=True)
        t = listener()
        rate = rospy.Rate(1) # 10hz
        while not rospy.is_shutdown():
            rate.sleep()
    except rospy.ROSInterruptException:
        pass
