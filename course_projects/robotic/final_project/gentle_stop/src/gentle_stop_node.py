#!/usr/bin/env python

import rospy
import time
from duckietown_msgs.msg import LanePose, Twist2DStamped
from sign_reader.msg import SignInfo
from std_msgs.msg import Float32

_STOP_DISTANCE=0.22 # the width of one lane
_THRESHOLD=0.01 # if you're this close, good enough - stop
_BOT_NAME='horriblegoose'

class PidController:

    def __init__(self, kp, ki, kd, init_error, init_integ):
        self.kp = kp
        self.ki = ki
        self.kd = kd
        self.prev_error = init_error
        self.integ = init_integ

    def pid(self, prev_time, curr_time, curr_error):
        dt = prev_time - curr_time
        self.integ += curr_error * dt

        p = curr_error * self.kp
        i = self.integ * self.ki
        d = ((curr_error - self.prev_error) / dt ) * self.kd

        self.prev_error = curr_error
        return  p + i + d



class Stopper:
    
    def __init__(self):
        # Receive the original message
        rospy.Subscriber('sign_info', SignInfo, self.checkSign)
        self.pub=rospy.Publisher('/'+_BOT_NAME+'/car_cmd_switch_node/cmd',Twist2DStamped,queue_size=10)
        self.debug=rospy.Publisher('debug_output',Float32,queue_size=10)
        self.speed=0 # Twist2DStamped v
        self.heading=0 # Twist2DStamped omega
        self.kp=0.5
        self.ki=0
        self.kd=0
        self.ctrl=PidController(self.kp,self.ki,self.kd,0,0)



    def checkSign(self, sign_msg):
        sign = sign_msg.sign
        self.dist=sign_msg.dist_to_sign

        if sign=='STOP':

            if ~hasattr(self,'previous_time'): # initialize previous_time
                self.previous_time=time.time()

            if ~hasattr(self,'integ'): # initialize I component
                self.integ=0

            error=self.dist-_STOP_DISTANCE # calculate error

            self.current_time=time.time()

            ctrl_output=self.ctrl.pid(self.previous_time, self.current_time,error)

            self.debug.publish(ctrl_output)

            self.previous_time=self.current_time


            output = Twist2DStamped()
            self.speed=ctrl_output
            if self.speed>_THRESHOLD:
                self.debug.publish(self.speed)
                output.v=self.speed
            else: # Close enough, cut speed to 0.
                output.v=0
            output.omega=self.heading

            self.pub.publish(output)


            # Do stuff with sign message

 
        

if __name__=='__main__':
    try:
        rospy.init_node("gentle_stop_node", anonymous=True)
        Stopper()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("TODO : Log Exception thrown")        
