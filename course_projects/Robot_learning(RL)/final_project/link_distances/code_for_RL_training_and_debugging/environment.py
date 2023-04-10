#!/usr/bin/python3
# -*- coding: utf-8 -*-

import numpy as np

from embodiment_distance import cost
from robot_model import Model
from states_from_json import mapping



class HumanArmImitation():
    """ RL agent environment for human arm imitation.
        
    """
    def __init__(self, path):

        # based on the path to the json files, 
        # returns real positions, thetas ,dthetas and L_list
        self.real_poses, self.thetas, self.dthetas, self.L_list = mapping(path,dt=0.1)
        self._next = 0
        self.inc = 3 #increment unit
        self.next_limit = self.thetas.shape[0]/self.inc
        self.weights = np.array([0.0, 1.0, 0.001, 0.01])
        # current state
        # self.state = 

    def reset(self):
        """ initialize state to starting position
            returns initial state
        """
        # restart counter
        self._next = 0
        # get initial teacher state
        initial_teacher = self.thetas[self._next], self.dthetas[self._next]
        # start learner at same initial state as teacher
        intitial_learner = initial_teacher

        self.state = np.array([initial_teacher, intitial_learner])
        return self.state

    def is_terminal(self):
        return self._next >= self.next_limit

    @property
    def next(self):
        return self._next
    

    def step(self, u):
        """ given an action
            takes a step in the environment
            returns next state, reward, is_terminal, {}
        """
        # given action
        taumat = u
        print("U",np.shape(u))

        # get current state
        # increment teacher traj
        self._next += self.inc

        teacher_st, learner_st = self.state  # th := theta

        # use embodiment_distance cost to compute cost of state
        c = cost(teacher_st[0], 
            teacher_st[1], 
            self.L_list, 
            learner_st[0], 
            learner_st[1], 
            self.L_list, 
            self.weights)

        # use robot_model to compute learner's next states
        next_thetas, next_dthetas = Model(learner_st[0], learner_st[1], taumat, self.L_list)
        print("nexxxxxxxxxxxxxxxt",next_thetas)
        print(f"next_thetas.shape : {next_thetas.shape}")
        print(f"next_dthetas.shape : {next_dthetas.shape}")

        # update learner's component of next state
        learner_stnext = next_thetas, next_dthetas
        #print(f"learner_stnext.shape: {learner_stnext.shape}")

        # fetch teacher's component of next state
        teacher_stnext = self.thetas[self._next], self.dthetas[self._next]
        #print(f"teacher_stnext.shape: {teacher_stnext.shape}")

        # update state
        self.state = np.array([teacher_stnext, learner_stnext]).T
        print(f"self.state.shape: {self.state.shape}")

        # return next state, -cost, is_terminal, extra
        return self.state, -c, self.is_terminal(), {}

    

if __name__ == "__main__":
    # test the environment with random actions

    print("Creating environment...")
    env = HumanArmImitation('c2fixc')
    
    env.reset()
    
    print("Jumping into main environment loop...")
    for t in range(200):

        action = np.random.normal(0,2,6)
        state, reward, done, info = env.step(action)
        print(f"Iteration {t} -- Reward: {reward}")

        if done:
            break

    print(f"Final increment: {env.next}")


# test with agent actions now
# num_steps=200

# # run a single episode
# total_rew = 0
# ob = agent.w.reset()
# for t in range(num_steps):
#     a = agent.select_action(ob)
#     (ob, reward, done, _info) = agent.w.step(a)
#     total_rew+=reward
#     if done: 
#         break
        
# mean_rew_ep = total_rew / t+1
# return total_rew, t+1, mean_rew_ep