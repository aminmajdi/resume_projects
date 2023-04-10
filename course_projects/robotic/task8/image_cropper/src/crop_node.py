#!/usr/bin/env python

import sys
import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

class crop:
    def __init__(self):
        # Instatiate the converter class once by using a class member
        self.bridge = CvBridge()
        rospy.Subscriber("image", Image, self.cropper)
        self.pub = rospy.Publisher("image_cropped", Image, queue_size=10)
    
    def cropper(self, msg):
        # convert to a ROS image using the bridge
        cv_img = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        
	rows , cols , rgb = cv_img.shape
		
        # flip along the horizontal axis using an OpenCV function
        cropped_img = cv_img[ rows/2 :rows , 0: cols ]
        
        # convert new image to ROS to send
        ros_cropped = self.bridge.cv2_to_imgmsg(cropped_img, "bgr8")
        
        # publish flipped image
        self.pub.publish(ros_cropped)
        

if __name__=="__main__":

    rospy.init_node("crop_node", anonymous=True)
    img_cropped = crop()
    rospy.spin()
