#!/usr/bin/env python

import sys
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

class color_filter:
    def __init__(self):

        self.bridge = CvBridge()
        rospy.Subscriber("image_cropped", Image, self.filtering)
        self.pub1 = rospy.Publisher("image_yellow", Image, queue_size=10)
        self.pub2 = rospy.Publisher("image_white", Image, queue_size=10)    

    def filtering(self, msg):

        cv_img = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        
	img = cv2.cvtColor(cv_img, cv2.COLOR_BGR2HSV)
	lower_yellow = np.array([25,90,110])
	upper_yellow = np.array([50,255,255])
        
	mask_yellow = cv2.inRange(img, lower_yellow, upper_yellow)
	result_yellow = cv2.bitwise_and(cv_img,cv_img, mask= mask_yellow)
	ros_yellow_filter = self.bridge.cv2_to_imgmsg(result_yellow, "bgr8")
        
        self.pub1.publish(ros_yellow_filter)

	lower_white = np.array([0,0,150])
	upper_white = np.array([255,50,255])
        
	mask_white = cv2.inRange(img, lower_white, upper_white)
	result_white = cv2.bitwise_and(cv_img,cv_img, mask= mask_white)
	ros_white_filter = self.bridge.cv2_to_imgmsg(result_white, "bgr8")
        
        self.pub2.publish(ros_white_filter)        

if __name__=="__main__":

    rospy.init_node("color_filter_node", anonymous=True)
    filter_ = color_filter()
    rospy.spin()
