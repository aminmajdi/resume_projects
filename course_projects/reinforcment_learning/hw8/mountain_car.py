#! /usr/bin/env python

'''
Mountain Car - v0.1
COMP4600/5300 - Reinforcement Learning
University of Massachusetts Lowell
Fall 2020
'''

import numpy as np

class MountainCar:

    def __init__(self):
        self.actions = [-1, 0 , 1]      # [backward, not_moving, forward]
        self.reward = -1.0              #
        self.state_lb = [-1.2, -0.07]   # state lower bound
        self.state_ub = [0.5, 0.07]     # state upper bound
        self.goal_reached = False
   
    def move(self, position, velocity, action):
        
        # Update velocity
        vp = velocity + 0.001*action - 0.0025*np.cos(3*position)
        vp = min(max(vp,self.state_lb[1]),self.state_ub[1])

        # update position
        xp = position + vp
        xp = min(max(xp,self.state_lb[0]),self.state_ub[0])

        # if in left bound
        if xp == self.state_lb[0]:
            vp = 0.0
            
        # if in right bound
        if xp == self.state_ub[0]:
            self.goal_reached = True
            
        return xp, vp, self.reward, self.goal_reached


if __name__ == '__main__':
    car = MountainCar()
    xp, vp, r, goal_reached = car.move(-0.5, 0.01, 1)
    print(xp)
    print(vp)
    print(r)
    print(goal_reached)
