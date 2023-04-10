#!/usr/bin/env python3

import rospy
import numpy as np
from sensor_msgs.msg import JointState
from kinova_msgs.msg import JointAngles



class Collect:
    def __init__(self):
        self.data0 = None
        self.data1 = None


        rospy.Subscriber("/j2s7s300_driver/out/joint_state", JointState, self.callback)
        rospy.Subscriber("/j2s7s300_driver/out/joint_torques", JointAngles, self.callback1)



        #self.pub_r = rospy.Publisher("/pos_in_robot_coordinate_frame", Vector2D, queue_size=10)
        #self.pub_w = rospy.Publisher("/pos_in_world_coordinate_frame", Vector2D, queue_size=10)
        #self.msg_r =Vector2D()
        #self.msg_w =Vector2D()


    def callback(self, msg):
        if self.data1 :
            print("a")
            with open("collect.txt", 'a') as h:
                h.write("["+str(msg.position) +","+str(msg.velocity) +','+str(msg.effort)+","+str(self.data1)+"]"+"\n" )
            with open("torque.txt", 'a') as h:
                h.write("["+str(self.data1)+"]"+"\n" )



    def callback1(self, msg):
        print("b")
        self.data1 = (msg.joint1,msg.joint2,msg.joint3,msg.joint4,msg.joint5,msg.joint6,msg.joint7)

if __name__ == '__main__':
    rospy.init_node('data_collection')
    Collect()

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
