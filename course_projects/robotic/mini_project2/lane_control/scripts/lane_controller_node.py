#!/usr/bin/env python
from __future__ import division
import math
import rospy
import time
from numpy import sign
#from sensor_msgs.msg import Joy
from duckietown_msgs.msg import LanePose , Twist2DStamped

class PID():
        def __init__(self):

                rospy.Subscriber("~lane_pose", LanePose, self.callback)
                self.pub = rospy.Publisher("~car_cmd", Twist2DStamped, queue_size=1)
#                self.pub_joystick = rospy.Publisher("/jafar/joy", Joy, queue_size=1)
                self.d = 0.0
                self.phi = 0.0
                self.d_ref = 0.0
                self.phi_ref = 0.0
                self.er_d = 0.0
                self.er_phi = 0.0
                self.velocity = 0.5
                self.omega = 0.0
                self.kp_d=10
                self.ki_d=0.3
                self.kd_d=0.1
                self.kp_phi=5
                self.ki_phi=0.0
                self.kd_phi=0.0
                self.proportional_d=0.0
                self.integral_d=0.0
                self.derivative_d=0.0
                self.last_er_d=0.0
                self.proportional_phi=0.0
                self.integral_phi=0.0
                self.derivative_phi=0.0
                self.last_er_phi=0.0
                self.d_t=0.001 
                self.u_phi= 0.0 
                self.u_d= 0.0 
#               self.key_handle = "empty"

        def callback(self, data):
                self.d = data.d
                self.phi = data.phi
                self.d_ref = data.d_ref
                self.phi_ref = data.phi_ref
                self.last_er_d = self.er_d
                self.last_er_phi = self.er_phi
                self.er_d = self.d_ref-self.d
                self.er_phi = self.phi_ref-self.phi


                #PID for d
                self.proportional_d = self.kp_d * self.er_d
                self.integral_d += self.ki_d * self.er_d * self.d_t
                self.d_er_d = self.er_d - self.last_er_d
                self.derivative_d = self.kd_d * self.d_er_d/self.d_t
                self.u_d = self.proportional_d + self.integral_d + self.derivative_d


                #PID for phi
                self.proportional_phi = self.kp_phi * self.er_phi
                self.integral_phi += self.ki_phi * self.er_phi * self.d_t
                self.d_er_phi = self.er_phi - self.last_er_phi
                self.derivative_phi = self.kd_phi * self.d_er_phi/self.d_t
                self.u_phi = self.proportional_phi + self.integral_phi + self.derivative_phi


                self.omega = self.u_d + self.u_phi

                if math.fabs(self.omega)>= 5  :
                        self.omega =5 * self.omega/math.fabs(self.omega)

                output = Twist2DStamped()
                output.v = self.velocity
                output.omega = self.omega
                output.header = data.header
                self.pub.publish(output)


 #               msg = Joy()
 #               msg.header = data.header
 #               msg.axes = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
 #               if self.key_handle == "a" : 
 #                       msg.buttons = [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0]
#                       self.key_handle = "empty"
 #               key = raw_input()
 #               if key == "a" : 
#                       self.key_handle = "a"
 #                       msg.buttons = [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
 #               if key == "s" : 
 #                       msg.buttons = [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0]
 #               key="empty"

#                self.pub_joystick.publish(msg)




if __name__ == '__main__':
        rospy.init_node('lane_controller_node', anonymous=True)
        PID()
        rospy.spin()








