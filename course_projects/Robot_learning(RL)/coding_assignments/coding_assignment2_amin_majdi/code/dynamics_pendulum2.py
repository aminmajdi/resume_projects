#! /usr/bin/env python


import numpy as np
from scipy.integrate import odeint

class pendulum:

    def __init__(self):
        self.m = 1      # [backward, not_moving, forward]
        self.g = 9.82              #
        self.l = 1   # state lower bound
        self.b = 0.01     # state upper bound
        self.goal_reached = False
    def move(self, angular_velocity, theta, action):
        def ODE(X, t):
            self.x = X[0]
            self.y = X[1]
            dxdt = (action-self.b*self.x-0.5*self.m*self.g*self.l*np.sin(self.y))/(self.m*np.power(self.l,2)*(1/3))
            dydt = self.x 
            return [dxdt, dydt]
        X0 = [angular_velocity, theta]
        sol = odeint(ODE, X0,[0,0.1])
        angular_velocity_p=sol[1][0]
        theta_p=sol[1][1]
        while theta_p<0:
            theta_p+=2*np.pi
        while theta_p>=2*np.pi:
            theta_p-=2*np.pi
        if angular_velocity_p>20*np.pi:
            angular_velocity_p=20*np.pi
        elif angular_velocity_p<-20*np.pi:
            angular_velocity_p=-20*np.pi
            
        return angular_velocity_p, theta_p


if __name__ == '__main__':
    pend = pendulum()

