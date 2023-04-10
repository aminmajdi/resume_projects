#!/usr/bin/env python
from __future__ import division
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
        self.pub1 = rospy.Publisher("image_lines_yellow", Image, queue_size=10)
        self.pub2 = rospy.Publisher("image_lines_white", Image, queue_size=10)
        self.pub3 = rospy.Publisher("image_lines_all", Image, queue_size=10)        

    def filtering(self, msg):

        cv_img = self.bridge.imgmsg_to_cv2(msg, "bgr8")


        #all_lines in the image
	image_lines = cv2.Canny(cv_img,0,255)

	#yellow_lines
	img = cv2.cvtColor(cv_img, cv2.COLOR_BGR2HSV)
	lower_yellow = np.array([25,90,110])
	upper_yellow = np.array([50,255,255])
        
	mask_yellow = cv2.inRange(img, lower_yellow, upper_yellow)
	result_yellow = cv2.bitwise_and(cv_img,cv_img, mask= mask_yellow)
	yellow_edg= cv2.Canny(result_yellow,50,150)
	yellow_lanes = cv2.bitwise_and(image_lines,yellow_edg)
	yellow_HoughLines = cv2.HoughLinesP(yellow_lanes,1,np.pi/180,5,minLineLength=5,maxLineGap=5)
	yellow_with_marker = self.bridge.imgmsg_to_cv2(msg, "bgr8")
	for line in yellow_HoughLines:
		x1 ,y1 , x2 , y2 = line[0]
		cv2.line(yellow_with_marker , (x1,y1),(x2,y2),(255,0,0),2)
		cv2.circle(yellow_with_marker, (x1,y1), 2, (0,255,0),2)
		cv2.circle(yellow_with_marker, (x2,y2), 2, (0,0,255),2)
	ros_yellow_filter = self.bridge.cv2_to_imgmsg(yellow_with_marker, "bgr8")
        
        self.pub1.publish(ros_yellow_filter)
	#white_line
	lower_white = np.array([0,0,150])
	upper_white = np.array([255,50,255])
        
	mask_white = cv2.inRange(img, lower_white, upper_white)
	result_white = cv2.bitwise_and(cv_img,cv_img, mask= mask_white)
	white_edg= cv2.Canny(result_white,50,150)
	white_lanes = cv2.bitwise_and(image_lines,white_edg)	
	white_HoughLines = cv2.HoughLinesP(white_lanes,1,np.pi/180,5,minLineLength=5,maxLineGap=5)
	white_with_marker = self.bridge.imgmsg_to_cv2(msg, "bgr8")
	for line in white_HoughLines:
		x1 ,y1 , x2 , y2 = line[0]
		cv2.line(white_with_marker , (x1,y1),(x2,y2),(255,0,0),2)
		cv2.circle(white_with_marker, (x1,y1), 2, (0,255,0),2)
		cv2.circle(white_with_marker, (x2,y2), 2, (0,0,255),2)
	ros_white_filter = self.bridge.cv2_to_imgmsg(white_with_marker, "bgr8")
        
        self.pub2.publish(ros_white_filter)      

	#yellow and white lines#
	yellow_and_white_lanes =cv2.bitwise_or(white_lanes,yellow_lanes)  
	yellow_and_white_HoughLines = cv2.HoughLinesP(yellow_and_white_lanes,1,np.pi/180,5,minLineLength=5,maxLineGap=5)
	yellow_and_white_with_marker = self.bridge.imgmsg_to_cv2(msg, "bgr8")
	for line in yellow_and_white_HoughLines:
		x1 ,y1 , x2 , y2 = line[0]
		cv2.line(yellow_and_white_with_marker , (x1,y1),(x2,y2),(255,0,0),2)
		cv2.circle(yellow_and_white_with_marker, (x1,y1), 2, (0,255,0),2)
		cv2.circle(yellow_and_white_with_marker, (x2,y2), 2, (0,0,255),2)
	ros_yellow_and_white_lines = self.bridge.cv2_to_imgmsg(yellow_and_white_with_marker, "bgr8")

        self.pub3.publish(ros_yellow_and_white_lines)      

if __name__=="__main__":

    rospy.init_node("line_detector_node", anonymous=True)
    filter_ = color_filter()
    rospy.spin()
