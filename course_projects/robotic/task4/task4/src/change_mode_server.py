#!/usr/bin/env python

import rospy
from homework4.srv import *
import random

mode = rospy.get_param("mode")

def change_function(request):
     global mode 
     mode = request.req
     return change_modeResponse()

def query_function(request):
     global mode
     return query_modeResponse(mode)

def change_mode_server():
     rospy.init_node('change_mode_server')
     rospy.Service('change_mode', change_mode,change_function)
     rospy.Service('query_mode', query_mode,query_function)

if __name__ == "__main__":
     change_mode_server()
     rospy.spin()
