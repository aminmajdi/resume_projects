import modern_robotics as mr
import numpy as np

###########
# In this block we calculate the distance measure between two different embodiments
###########


#######
#Calculate the distance between two point
#######
def vec_len(v1,v2):
    if len(v1)==2:
        out=np.sqrt((v1[0]-v2[0])**2+(v1[1]-v2[1])**2)
    elif len(v1)==3:
        out=np.sqrt((v1[0]-v2[0])**2+(v1[1]-v2[1])**2+(v1[2]-v2[2])**2)
    return out
#######
#This function calculates the 0 position translation of each body fram based on the base fram
#It is used in 'Distance_measure' function
#######
def calc_M_S_List(L_list):
    omg_hat=[0,0,1]# screw direction
    q_list=[0,0,0]
    S_list=[np.append(omg_hat,q_list)]
    M_list=[mr.RpToTrans(np.eye(3),[L_list[0]/2,0,0])]
    #M_list=[]
    for i in range(len(L_list)):
        for k in range(i):
            L=0
            for q in range(k+1):
                L+=L_list[q]
            q_vec=[L,0,0]
            s_vec=np.append(omg_hat,q_vec)
            q_list=np.append(q_list,q_vec,axis=0)
            S_list=np.append(S_list,[s_vec],axis=0)
        if i>0:
            L_M=0#L_M is the distance between cordinate Fram i from base
            for h in range(i+1):
                L_M+=L_list[h]
            L_M=L_M-(L_list[i]/2)
            M=mr.RpToTrans(np.eye(3), [L_M,0,0])
            M_list=np.append(M_list,[M],axis=0)
    return M_list ,S_list

#######
#This function calculates twists in body frames
#It is used in 'Distance_measure' function
#######

def V_twist(M,S,q,q_dot,V_previous):
    S_se3=mr.MatrixExp6(mr.VecTose3(S*q))#exp(sq)
    Ti_1_i=np.inner(M,S_se3)  #Ti-1,i
    adj=mr.Adjoint(mr.TransInv(Ti_1_i))
    V=np.inner(adj,V_previous) + S*q_dot
    return V

###########
# This function calculate the distance matrix between two embodyments
###########
def Distance_measure(theta_list1,thetadot_list1,L_lst1,theta_list2,thetadot_list2,L_lst2,w):#w= weights
    L1_sum=sum(L_lst1)   #Rescalr 
    L_list1=np.array(L_lst1)/L1_sum#resulting in a chain length of 1
    L2_sum=sum(L_lst2)
    L_list2=np.array(L_lst2)/L2_sum
    n1=len(theta_list1)
    n2=len(theta_list2)
    distance=np.zeros((n1,n2))
    M_list1 ,S_list1=calc_M_S_List(L_list1)
    M_list2 ,S_list2=calc_M_S_List(L_list2)
    V1_previous=[0,0,0,0,0,0]
    V2_previous=[0,0,0,0,0,0]
    for i in range(n1):
        for j in range(n2):
            T0i=mr.FKinSpace(M_list1[i],np.transpose(S_list1[:i+1]),theta_list1[:i+1])
            T0j=mr.FKinSpace(M_list1[j],np.transpose(S_list2[:j+1]),theta_list2[:j+1])
            V1=V_twist(M_list1[i],S_list1[i],theta_list1[i],thetadot_list1[i],V1_previous)
            V2=V_twist(M_list2[j],S_list2[j],theta_list2[j],thetadot_list2[j],V2_previous)
            V1_previous=V1
            V2_previous=V2
            ωi=V1[:3]
            vi=V1[3:]
            ωj=V2[:3]
            vj=V2[3:]
            R0i,Pi=mr.TransToRp(T0i)
            R0j,Pj=mr.TransToRp(T0j)
            ωsi=np.inner(R0i,ωi)
            p_doti=np.inner(R0i,vi)
            ωsj=np.inner(R0j,ωj)
            p_dotj=np.inner(R0j,vj)
            d_tr= vec_len(Pi,Pj)    #d tr (T i , T̂ j ) = \\p i − p̂ j \\
            d_rot=(np.pi/2)*(1-np.dot(R0i[:,0],R0j[:,0]))    #(pi/2)(1 − e ix · ê jx )
            d_v=vec_len(p_doti,p_dotj)
            d_ω= vec_len(ωsi,ωsj)
            distance_i_j=w[0]*d_tr + w[1]*d_rot + w[2]*d_v + w[3]*d_ω    #d(s i , ŝ j ) = α tr d tr + α rot d rot + α v d v + α ω d ω
            distance[i][j]=distance_i_j
    return distance

###########
#This function calculates distance scaler based on distance matrix and state dependent W
#We used mean of D=W*D' matrix (we could use any other Matrix norms, such as the Frobenius norm)
###########
def Distance_between_embodiments(distance):
    #D=W*D' this function gives an scaler which is 'distance measure'
    negative_dis=distance*-1
    n1=np.shape(negative_dis)[0]
    n2=np.shape(negative_dis)[1]
    #w12=np.zeros((n1,n2))
    #w21=np.zeros((n1,n2))
    #for i in range(n1):
    #    index=np.argmax(negative_dis[i])
    #    w12[i][index]=1
    #for j in range(n2):
    #    index=np.argmax(negative_dis[:,j])
    #    w21[index][j]=1
    #w=w12+w21
    #print("W",w, w12,w21)
    w=np.diag([1,1,1,1,1,1])
    dist_between_enbodients=w*distance
    #print("dist_between_enbodients",dist_between_enbodients)
    dist_mean=np.mean(dist_between_enbodients)
    return dist_mean


######## 
#The main function gives us the scaler distance between two embodyments
#This function can be used as reward/cost function
########
def cost(theta_list1,thetadot_list1,L_lst1,theta_list2,thetadot_list2,L_lst2,w):#states for both robots
    distance_prime=Distance_measure(theta_list1,thetadot_list1,L_lst1,theta_list2,thetadot_list2,L_lst2,w)
    distance=Distance_between_embodiments(distance_prime)
    return distance


# theta_list1,thetadot_list1,L_lst1,
# theta_list2,thetadot_list2,L_lst2,
# w



