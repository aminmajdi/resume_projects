#!/usr/bin/env python

import rospy
from homework4.srv import *
import random

def change_mode_client():
     rospy.wait_for_service('change_mode')
     rospy.wait_for_service('query_mode')
     try:
         change_object = rospy.ServiceProxy('change_mode', change_mode)
         query_object = rospy.ServiceProxy('query_mode', query_mode)
         rate = rospy.Rate(2) # 2hz
         b=10
         while not rospy.is_shutdown():
          a=random.randint(0,10)
          while a == b :
           a=random.randint(0,10)
          change_object(a)
          b=a
          handle_query_response = query_object()
          rospy.logwarn(str(handle_query_response))
          rate.sleep()
     except rospy.ROSInterruptException:
        pass

if __name__ == "__main__":
	rospy.init_node('query_mode_client')
	change_mode_client()
