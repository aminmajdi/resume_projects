#!/usr/bin/env python

import rospy
import math
from apriltags2_ros.msg import AprilTagDetectionArray
from sign_reader.msg import SignInfo
from utilities.utils import signDict

class SignReader:
    def __init__(self):
        rospy.Subscriber(
            '/horriblegoose/tag_detections', 
            AprilTagDetectionArray, 
            self.printer
        )

        self.pubSignInfo = rospy.Publisher('/sign_info', SignInfo, queue_size=10)

    def printer(self, aprilTagInfo):
        # If the length of the detections list is 0, we aren't seeing any signs
        if len(aprilTagInfo.detections):
            for detection in aprilTagInfo.detections:
                z = aprilTagInfo.detections[0].pose.pose.pose.position.z
                signId = aprilTagInfo.detections[0].id[0]
                self.pubSignInfo.publish(signDict[signId], z)
        else:
            self.pubSignInfo.publish(signDict[-1], -1)

if __name__ == '__main__':
    rospy.init_node('sign_reader_node', anonymous=True)
    SignReader()

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

