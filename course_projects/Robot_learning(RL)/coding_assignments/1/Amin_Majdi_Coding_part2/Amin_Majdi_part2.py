#!/usr/bin/env python
'''
DMP Adaption
'''
import pylab as plt
import numpy as np
import json
from dmp import DiscreteDMP
import h5py
from lwr import LWR


################discription##################
# In this file you can set the fixed_point and all the demonstrations will transfer to (0,0) eather start or Goal
# The demonstrations are created for Letters=['C','B','D','G','L','M','O','R','S','U']
#


def transfer(list_in,fixed_point="goal"):
  target=0
  if fixed_point == "goal":
    transfer_constant=target-list_in[-1]
  elif fixed_point == "start":
    transfer_constant=target-list_in[0]
  elif fixed_point == "none":
    transfer_constant=target
  for i in range(len(list_in)):
    list_in[i]+=transfer_constant
  return list_in

def DMP(traj_pos,action="original",initial_offset=0):
  start = traj_pos[0]
  goal = traj_pos[-1]

  #add a random value between (-50,50) to the start or goal 
  if action =="original":
    pass 
  elif action =="new" :
    if initial_offset==0:
      if fixed_point=="start":
        goal+=(np.random.randint(100)-50)
      elif fixed_point=="goal":
        start+=(np.random.randint(100)-50)
    else:
      if fixed_point=="start":
        goal+=initial_offset
      elif fixed_point=="goal":
        start+=initial_offset

  #print(start,goal)

  traj_freq = int(1.0 / delta_t)
 
  # calc it here for easier drawing
  traj = DiscreteDMP.compute_derivatives(traj_pos, traj_freq)#########adds data to traj_pos


  traj = list(traj)
  ####### learn DMP
   
  dmp = DiscreteDMP(True, reg_model=LWR(activation=0.1, exponentially_spaced=True, n_rfs=20),k_gain=1000,c=20)
  #dmp.use_ft = True
  dmp.learn_batch(traj, traj_freq)
  
  
  dmp_adapt = DiscreteDMP(True, reg_model=dmp.lwr_model) #copy.deepcopy(dmp.lwr_model))
  dmp_adapt._is_learned = True  
  
  ####### learn DMP
  
  # setup DMP with start and goal
  dmp.delta_t = delta_t
  dmp.setup(start, goal, duration)
  
  dmp_adapt.delta_t = delta_t  
  dmp_adapt.setup(start, goal + adapt_offset, duration)
  
  
  # trajectory
  traj_reproduced = []
  traj_adapted = []
  
  # states of canonical system (plotting)
  s = []
  s_time = []
  
  # run steps (for each point of the sample trajectory)
  for _ in range(int(dmp.tau / dmp.delta_t)):
    dmp.run_step()
    dmp_adapt.run_step()
    
    # remember canonical system values
    s.append(dmp.s)
    s_time.append(dmp.s_time)
    
    # save reproduced trajectory
    traj_reproduced.append([dmp.x, dmp.xd, dmp.xdd])
    traj_adapted.append([dmp_adapt.x, dmp_adapt.xd, dmp_adapt.xdd])
  
  return dmp , dmp_adapt ,traj , traj_reproduced ,  traj_adapted


def main():
  global duration , adapt_offset , delta_t , fixed_point
  #the point all dems transfer to
  fixed_point= "start" # acceptable values : "start" , "goal" or "none"

  # duration
  duration = 1.0
  
  # adaption offset
  adapt_offset = +1
  
  Letters=['C','B','D','G','L','M','O','R','S','U']
  for letter in   ["part3_"]:
    # load position trajectory
    
    with h5py.File("best_data_100points/%s_smooth.h5"%letter,'r') as hdf:
      ls=list(hdf.keys())
      #print(ls)
      dataset_loaded=[]
      for dataset in ls:
        data=hdf.get(dataset)
        #print(data)
        data_array=np.array(data)
        #print(np.shape(data_array))
        #print(data_array[0])
        dataset_loaded.append(data_array)


    # create figure
    #fig = plt.figure('DMP_for_letter_%s'%letter, figsize=(12, 8))
    fig = plt.figure('DMP_for_part_d(start is fixed)', figsize=(12, 8))
    # create axes
    ax_pos = fig.add_subplot(111)
    
    for i in range(len(dataset_loaded)):
      data1=dataset_loaded[i]
      traj_pos_x=transfer(list(data1[0,:]),fixed_point=fixed_point)
      traj_pos_y=transfer(list(data1[1,:]),fixed_point=fixed_point)
      # time steps
      delta_t = 1/len(traj_pos_x)
      print(delta_t)
      dmp_x , dmp_adapt_x ,traj_x , traj_reproduced_x,  traj_adapted_x = DMP(traj_pos_x)
      dmp_y , dmp_adapt_y ,traj_y , traj_reproduced_y,  traj_adapted_y = DMP(traj_pos_y)
      ax_pos.plot(np.asarray(traj_x)[:, 0], np.asarray(traj_y)[:, 0], label='demonstration',color='green')
      number_of_reproductions=5
      for i in range(number_of_reproductions):
        traj_pos_x_old=traj_pos_x[4:-4]
        traj_pos_y_old=traj_pos_y[4:-4]
        dmp_x_new , dmp_adapt_x_new ,traj_x_new , traj_reproduced_x_new,  traj_adapted_x_new = DMP(traj_pos_x_old,action="new",initial_offset=20*(i+1))#create line whit a random start
        dmp_y_new , dmp_adapt_y_new ,traj_y_new , traj_reproduced_y_new,  traj_adapted_y_new = DMP(traj_pos_y_old,action="new",initial_offset=20*(i+1))
      ####### PLOTTING
        ax_pos.plot(np.asarray(traj_reproduced_x)[:, 0], np.asarray(traj_reproduced_y)[:, 0], label='reproduction', linestyle='dashed',color='blue')
        #ax_pos.plot(np.asarray(traj_adapted_x)[:, 0], np.asarray(traj_adapted_y)[:, 0], label='adapted',linestyle='dotted',color='red')
        ax_pos.plot(np.asarray(traj_reproduced_x_new)[:, 0], np.asarray(traj_reproduced_y_new)[:, 0], label='reproduction_new_point', linestyle='dotted',color='red')
        #ax_pos.plot(np.asarray(traj_adapted_x_new)[:, 0], np.asarray(traj_adapted_y_new)[:, 0], label='adapted_new',linestyle=(0, (5, 1)),color='blue')
    ax_pos.annotate("Start", xy=(np.asarray(traj_x)[0, 0],np.asarray(traj_y)[0, 0]),xytext=(np.asarray(traj_x)[0, 0] - 20,np.asarray(traj_y)[0, 0]-20),arrowprops=dict(arrowstyle="->"))
    ax_pos.annotate("Goal", (np.asarray(traj_x)[-1, 0],np.asarray(traj_y)[-1, 0]),xytext=(np.asarray(traj_x)[-1, 0] +10 ,np.asarray(traj_y)[-1, 0]+10),arrowprops=dict(arrowstyle="->"))
    ax_pos.legend(loc='best')
    ax_pos.set_xlabel('X')
    ax_pos.set_ylabel('Y')
    handles, labels = plt.gca().get_legend_handles_labels()
    newLabels, newHandles = [], []
    for handle, label in zip(handles, labels):
      if label not in newLabels:
        newLabels.append(label)
        newHandles.append(handle)
    plt.legend(newHandles, newLabels)
    fig.tight_layout()
    plt.show()

if __name__ == '__main__':
  main()

