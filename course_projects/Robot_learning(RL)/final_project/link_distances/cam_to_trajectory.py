import os
from sys import argv

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# ================
# keys of interest
# ================
#
# pose_keypoints_2d
#
# pose_keypoints_2d: Body part locations (x, y) and detection confidence (c) 
# formatted as x0,y0,c0,x1,y1,c1,.... 
# The coordinates x and y can be normalized to the range [0,1], [-1,1], [0, source size], [0, output size], etc
# while the confidence score (c) in the range [0,1].
#
# source: https://cmu-perceptual-computing-lab.github.io/openpose/web/html/doc/md_doc_02_output.html#autotoc_md35
# // Result for BODY_25 (25 body parts consisting of COCO + foot)
# // const std::map<unsigned int, std::string> POSE_BODY_25_BODY_PARTS {
# //     {0,  "Nose"},
# //     {1,  "Neck"},
# //     {2,  "RShoulder"},
# //     {3,  "RElbow"},
# //     {4,  "RWrist"},
# //     {5,  "LShoulder"},
# //     {6,  "LElbow"},
# //     {7,  "LWrist"}, 
# ...
#
# hand_left_keypoints_2d
# hand_right_keypoints_2d

def get_cam_poses(path):
    """assuming path contains a "cam" directory
        return list of ordered frames (.json files)
    """
    # get all .json files in directory
    # each file represents a single frame pose estimate 
    cam = []
    with os.scandir(path) as it:
        for entry in it:
            if entry.name.endswith(".json") and entry.is_file():
                cam.append(f"{path}/{entry.name}")
    # order frames
    cam.sort()
    # return ordered frames
    return cam

def get_wrist_poses(path):
    """ 
        returns 
            cam_wrist_pose : list
    """
    cam = get_cam_poses(path)
    # get keypoints of interest
    wrist_positions = []
    for i in cam:

        df = pd.read_json(i,orient='records')

        p = df['people'][0]['pose_keypoints_2d']

        # p is a list of 75 data pts: (x, y, confidence) * 25
        # unpack p into list of triples; 
        # grab "RShoulder", "RElbow", "RWrist" ( indices 2,3,4 in list of triples)
        # want 
        # 2: (874.632, 500.844, 0.775053),
        # 3: (859.867, 689.152, 0.8752500000000001),
        # 4: (830.426, 859.95, 0.7663749999999999),
        RShoulder, RElbow, RWrist = [(p[j],p[j+1],p[j+2]) for j in range(len(p)) if j%3==0][2:5]
        wrist_positions.append(RWrist)
    return np.array(wrist_positions)

def get_index_finger_pose(path):
    #hand_right_keypoints_2d
    cam = get_cam_poses(path)
    # get keypoints of interest
    finger_positions = []
    for i in cam:

        df = pd.read_json(i,orient='records')
        p = df['people'][0]['hand_right_keypoints_2d']

        # p is a list of 63 data pts: (x, y, confidence) * 21
        # index finger is at index 8 (wrist is 0)
        right_index_finger = [(p[j],p[j+1],p[j+2]) for j in range(len(p)) if j%3==0][8]
        finger_positions.append(right_index_finger)
    return np.array(finger_positions)

def get_all_link_poses(path):
    """ given path to directory of .json files, e.g. 'c2poc'
        returns a dictionary of poses for all specified links
    """
    # get pose data for the following "links":

    # //     {1,  "Neck"},
    # //     {2,  "RShoulder"},
    # //     {3,  "RElbow"},
    # //     {4,  "RWrist"},
    # hand_right_keypoints_2d

    poses = {
        'neck': [],
        'shoulder': [],
        'elbow': [],
        'wrist': [],
        'finger': []
    }

    #
    cam_poses = get_cam_poses(path)


    for i in cam_poses:

        df = pd.read_json(i,orient='records')
        
        p = df['people'][0]['pose_keypoints_2d']
        h = df['people'][0]['hand_right_keypoints_2d']

        # p is a list of 75 data pts: (x, y, confidence) * 25
        # unpack p into list of triples; 
        # grab "RShoulder", "RElbow", "RWrist" ( indices 2,3,4 in list of triples)
        # want 
        # 2: (874.632, 500.844, 0.775053),
        # 3: (859.867, 689.152, 0.8752500000000001),
        # 4: (830.426, 859.95, 0.7663749999999999),
        
        # if we want confidence included
        #Neck, RShoulder, RElbow, RWrist = [(p[j],p[j+1],p[j+2]) for j in range(len(p)) if j%3==0][1:5]
        # confidence remove:
        Neck, RShoulder, RElbow, RWrist = [(p[j],p[j+1]) for j in range(len(p)) if j%3==0][1:5]
        # h is a list of 63 data pts: (x, y, confidence) * 21
        # index finger is at index 8 (wrist is 0)
        # with confidence:
        #right_index_finger = [(h[j],h[j+1],h[j+2]) for j in range(len(h)) if j%3==0][8]
        # confidence removed:
        right_index_finger = [(h[j],h[j+1]) for j in range(len(h)) if j%3==0][8]
        
        # store in dict
        poses['neck'].append( np.array(Neck) )
        poses['shoulder'].append( np.array(RShoulder) )
        poses['elbow'].append( np.array(RElbow) )
        poses['wrist'].append( np.array(RWrist) )
        poses['finger'].append( np.array(right_index_finger) )

    return poses
    
    
def plot_wrist(wrist_pose):
    xy = np.array([(i[0],i[1]) for i in wrist_pose]).T
    # create figure
    fig = plt.figure('Wrist Pose', figsize=(6, 4))
    # create axes
    ax_pos = fig.add_subplot(111)
    plt.plot(xy[0],xy[1])
    ax_pos.invert_xaxis()

def plot_positions(part, name='Right Index Finger'):
    xy = np.array([(i[0],i[1]) for i in part]).T
    # create figure
    fig = plt.figure(name, figsize=(6, 4))
    # create axes
    ax_pos = fig.add_subplot(111)
    plt.plot(xy[0],xy[1])
    ax_pos.invert_yaxis()


# path = "cam1"
# cam1 = []
# with os.scandir(path) as it:
#     for entry in it:
#         if entry.name.endswith(".json") and entry.is_file():
#             cam1.append(f"{path}/{entry.name}")

# cam1.sort()

# cam1[:5]
# => ['cam1/cam1_1_000000000000_keypoints.json',
#  'cam1/cam1_1_000000000001_keypoints.json',
#  'cam1/cam1_1_000000000002_keypoints.json',
#  'cam1/cam1_1_000000000003_keypoints.json',
#  'cam1/cam1_1_000000000004_keypoints.json']

# ================
# keys of interest
# ================
#
# pose_keypoints_2d
#
# pose_keypoints_2d: Body part locations (x, y) and detection confidence (c) 
# formatted as x0,y0,c0,x1,y1,c1,.... 
# The coordinates x and y can be normalized to the range [0,1], [-1,1], [0, source size], [0, output size], etc
# while the confidence score (c) in the range [0,1].
#
# source: https://cmu-perceptual-computing-lab.github.io/openpose/web/html/doc/md_doc_02_output.html#autotoc_md35
# // Result for BODY_25 (25 body parts consisting of COCO + foot)
# // const std::map<unsigned int, std::string> POSE_BODY_25_BODY_PARTS {
# //     {0,  "Nose"},
# //     {1,  "Neck"},
# //     {2,  "RShoulder"},
# //     {3,  "RElbow"},
# //     {4,  "RWrist"},
# //     {5,  "LShoulder"},
# //     {6,  "LElbow"},
# //     {7,  "LWrist"}, 
# ...
#
# hand_left_keypoints_2d
# hand_right_keypoints_2d

# df = pd.read_json(cam1[0],orient='records')

# p = df['people'][0]['pose_keypoints_2d']

# # p is a list of 75 data pts: (x, y, confidence) * 25
# # unpack p into list of triples; 
# # grab "RShoulder", "RElbow", "RWrist" ( indices 2,3,4 in list of triples)
# # want 
# # 2: (874.632, 500.844, 0.775053),
# # 3: (859.867, 689.152, 0.8752500000000001),
# # 4: (830.426, 859.95, 0.7663749999999999),
# RShoulder, RElbow, RWrist = [(p[i],p[i+1],p[i+2]) for i in range(len(p)) if i%3==0][2:5]

# RShoulder, RElbow, RWrist
# ((874.632, 500.844, 0.775053),
#  (859.867, 689.152, 0.8752500000000001),
#  (830.426, 859.95, 0.7663749999999999))