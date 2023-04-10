import numpy as np
import modern_robotics as mr

############
# In this block we calculate the dynamic model of the robot
# Having state(t) and actions (taw), it gives you state(t+1) 
############

def inertia_G(L_list,m_list, r_list=None):#works only for 2D
    n=len(L_list)
    G_list=np.empty((0,6,6))
    if r_list==None:
        r_list=[0 for i in range(n)]
    for i in range(n):
        G=np.zeros((6,6))
        Ixx=0.5*m_list[i]*r_list[i]**2
        Iyy=(1/12)*m_list[i]*(3*r_list[i]**2 + L_list[i]**2)
        Izz=(1/12)*m_list[i]*(3*r_list[i]**2 + L_list[i]**2)
        G[0][0]= Ixx
        G[1][1]= Iyy
        G[2][2]= Izz
        G[3][3]=m_list[i]
        G[4][4]=m_list[i]
        G[5][5]=m_list[i]
        G_list=np.append(G_list,[G],axis=0)
    return G_list

def calc_S_List(L_list):
    omg_hat=[0,0,1]# screw direction
    q_list=[0,0,0]
    S_list=np.empty((0,6))
    for i in range(len(L_list)):
        L=0
        for q in range(i):
            L+=L_list[q]
        q_vec=[L,0,0]# vector from base to joint position in 0 position
        s_vec=np.append(omg_hat,q_vec)
        #q_list=np.append(q_list,q_vec,axis=0)
        S_list=np.append(S_list,[s_vec],axis=0)
    S_list=np.array(S_list).T
    return S_list

def Mi_1_i(L_list):#works only for 2D
    Mi_1_i_list=np.empty((0,4,4))
    for i in range(len(L_list)):
        M =np.eye(4)
        if i==0:
            M[0][3]=L_list[i]/2
        else:
            M[0][3]=(L_list[i]+L_list[i-1])/2
        Mi_1_i_list=np.append(Mi_1_i_list,[M],axis=0)
    M =np.eye(4)
    M[0][3]=L_list[-1]/2
    Mi_1_i_list=np.append(Mi_1_i_list,[M],axis=0)
    return Mi_1_i_list

def create_mass(L_list,m_per_c_meter=1):
    # m_per_meter is an scaler which shows the mass of every 1 pixel of the robot links
    # the defult value is 10 grams per pixcel
    # this value should be set by cm not pixel as the scale rate in x and y is different 
    m_list=np.array(L_list)*m_per_c_meter
    return m_list
    
#################
# the main function for reaching to next state
#################
def Model(thetalist, dthetalist, taumat, L_list):
    Slist = calc_S_List(L_list)
    m_list=create_mass(L_list) # we can ether use this function or specify the mass of each link.
    Glist=inertia_G(L_list,m_list)
    Mlist=Mi_1_i(L_list)
    g = np.array([0, 0, 0])
    Ftip = np.zeros((6))
    ddthetalist=mr.ForwardDynamics(thetalist, dthetalist, taumat, g, Ftip, Mlist,Glist, Slist)
    #print("ddthetalist",ddthetalist)
    next_thetas, next_dthetas=mr.EulerStep(thetalist, dthetalist, ddthetalist, dt=0.1)
    return next_thetas, next_dthetas

def Inverse_model(thetalist, dthetalist, ddthetalist, L_list):
    Slist = calc_S_List(L_list)
    m_list=create_mass(L_list) # we can ether use this function or specify the mass of each link.
    Glist=inertia_G(L_list,m_list)
    Mlist=Mi_1_i(L_list)
    g = np.array([0, 0, 0])
    Ftip = np.zeros((6))
    taumat=mr.InverseDynamics(thetalist, dthetalist, ddthetalist, g, Ftip, Mlist,Glist, Slist)
    return taumat












