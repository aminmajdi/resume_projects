#! /usr/bin/env python


import numpy as np
from scipy.integrate import odeint

class cart_pole:

    def __init__(self):
        self.m = 0.5 
        self.M = 0.5
        self.g = 9.82   
        self.l = 0.5   
        self.b = 0.1   
        self.goal_reached = False
    def move(self, x_in,vel_in,angular_velocity, theta, action):
        def ODE(X, t):
            self.x = X[0]
            self.v = X[1]
            self.th_dot=X[2]
            self.th=X[3]
            dxdt=self.v
            dvdt=(2*self.m *self.l*(self.th_dot**2)*np.sin(self.th)+3*self.m*self.g*np.sin(self.th)*np.cos(self.th)+4*action-4*self.b*self.v)/(4*(self.m+self.M)-3*self.m*(np.cos(self.th))**2)
            dth_dotdt=(-3*self.m*self.l*(self.th_dot**2)*np.sin(self.th)*np.cos(self.th)-6*(self.M+self.m)*self.g*np.sin(self.th)-6*(action-self.b*self.v)*np.cos(self.th))/(4*(self.M+self.m)*self.l-3*self.m*self.l*(np.cos(self.th))**2)
            dthdt=self.th_dot
            return [dxdt, dvdt,dth_dotdt,dthdt]
        
        
        X0 = [x_in,vel_in, angular_velocity, theta]
        sol = odeint(ODE, X0,[0,0.1])
        x_out=sol[1][0]
        #print(sol,x_in,vel_in,angular_velocity, theta, action)
        v_out=sol[1][1]
        angular_velocity_p=sol[1][2]
        theta_p=sol[1][3]
        v_out=np.clip(v_out,-2*np.pi,2*np.pi)
        x_out=np.clip(x_out,-np.pi,np.pi)
        angular_velocity_p=np.clip(angular_velocity_p,-2*np.pi,2*np.pi)
        while theta_p<0:
            theta_p+=2*np.pi
        while theta_p>=2*np.pi:
            theta_p-=2*np.pi

            
        return x_out,v_out,angular_velocity_p, theta_p


if __name__ == '__main__':
    pend = pendulum()

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
