import numpy as np
import gym
from gym import spaces

import numpy as np

from embodiment_distance import cost
from robot_model import Model
from states_from_json import mapping


class HumanArmImitation(gym.Env):
    """ RL agent environment for human arm imitation, 
        modified for compatibility with stables_baselines3
        
    """
    metadata = {'render.modes': ['console']}

    def __init__(self, path):
        super(HumanArmImitation, self).__init__()

        # based on the path to the json files, 
        # returns real positions, thetas ,dthetas and L_list
        self.real_poses, self.thetas, self.dthetas,self.ddthetas, self.L_list = mapping(path,dt=0.1)
        self._next = 0
        self.inc = 3 #increment unit
        self.next_limit = self.thetas.shape[0]
        self.weights = np.array([1, 1.0, 1, 1])#[0.0, 1.0, 0.001, 0.01]
        # current state
        # self.state = 

        # Define action and observation space
        # They must be gym.spaces objects

        self.action_space = spaces.Box(low=-100000000.0, high=100000000.0, shape=(6,))
        self.observation_space = spaces.Box(low=-1000000,high=1000000,shape=(2,2,6))#(low=-62.56794665922222,high=61.59437215133977,shape=(2,2,6))

    def reset(self, initial_random=False):
        """ initialize state to starting position
            returns initial state
        """
        # restart counter
        self._next = 0
        # get initial teacher state
        initial_teacher = self.thetas[self._next]*0, self.dthetas[self._next]*0
        
        # initial learner start state
        if initial_random:
            # start learner at random initial_state
            ranth, randth = self.observation_space.sample()
            initial_learner = ranth[0], randth[0]
        else:
            # start learner at same initial state as teacher
            initial_learner = initial_teacher#[np.zeros((1,len(self.thetas))),np.zeros((1,len(self.thetas)))]

        self.state = np.array([initial_teacher, initial_learner])
        return self.state

    def is_terminal(self):
        return self._next >= self.next_limit-self.inc

    @property
    def next(self):
        return self._next
    
    def step(self, u):
        """ given an action
            takes a step in the environment
            returns next state, reward, is_terminal, {}
        """
        # given action
        taumat = u*1000000

        # get current state
        # increment teacher traj
        self._next += self.inc

        teacher_st, learner_st = self.state  #
        #print("state1",self.state)    
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
        #print("next_dthetas",next_dthetas) 
        # update learner's component of next state
        learner_stnext = next_thetas, next_dthetas
        #print(f"learner_stnext: {learner_stnext}")

        # fetch teacher's component of next state
        teacher_stnext = self.thetas[self.next], self.dthetas[self.next]
        #print(f"teacher_stnext: {teacher_stnext}")
        print(f"self.next: {self.next}")

        # update state
        #self.state = np.append(teacher_stnext, [learner_stnext],axis=0)
        self.state = np.array([teacher_stnext, learner_stnext])
        #print("learner_dt_stnext",next_dthetas)
        #print("teachers_dthetas",self.dthetas[self.next])
        #print("state2",self.state)
        # return next state, -cost, is_terminal, extra
        return self.state, -c, self.is_terminal(), {} #*10000

    def render(self, mode='console'):
        if mode != 'console':
            raise NotImplementedError()

    def close(self):
        pass

if __name__ == '__main__':
  
  env = HumanArmImitation('c2fixc')
  obs = env.reset()
  n_steps = 10
  for _ in range(n_steps):
      # Random action
      action = env.action_space.sample()
      obs, reward, done, info = env.step(action)
      print(f"reward: {reward}")
      if done:
              obs = env.reset()