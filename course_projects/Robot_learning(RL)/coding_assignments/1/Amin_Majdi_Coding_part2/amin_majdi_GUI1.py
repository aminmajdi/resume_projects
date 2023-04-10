from tkinter import *
from tkinter import ttk
import numpy as np
import matplotlib.pyplot as plt
import h5py
from scipy.interpolate import interp1d
from scipy import interpolate
from scipy.interpolate import UnivariateSpline

#release_check=False
#print(release_check)
global canvas_h,canvas_w
canvas_h=500
canvas_w=500
global counter
counter=1
global number_of_dems
number_of_dems=0
global frames 
frames = []

def left_click(event):
    global position_list,number_of_dems
    if number_of_dems>0:
        position_list=np.empty([1,2])
        savePosn(event)

def savePosn(event):
    global lastx, lasty , position_list
    lastx, lasty = event.x, event.y
    position_list=np.append(position_list,[[lastx, canvas_h-lasty]],axis=0)

def addLine(event):
    global counter, number_of_dems
    if number_of_dems>0:
        canvas.create_line((lastx, lasty, event.x, event.y),stipple='gray75', width=3,tags='current')
        savePosn(event)

def number_of_dems_key():
    global number_of_dems
    number_of_dems=int(num_dems_entry.get())
    num_dems_label=Label(root,text=("number of demonstrations is %s"%(number_of_dems)))
    num_dems_entry.delete(0,'end')
    num_dems_label.pack()

def delete():#delete with tag
    tag=delete_dems_entry.get()
    delete_dems_entry.delete(0,'end')
    print('delete',tag)
    print(canvas.find_withtag(tag))
    for i in canvas.find_withtag(tag):
        canvas.delete(canvas.find_withtag(i))

def add_counter():
    global counter
    print(counter)
    counter+=1

def interpolation(x,y):
    smoothing_factor=1000
    t=np.linspace(0,1,len(x))
    spl_x = UnivariateSpline(t, x)
    spl_y = UnivariateSpline(t, y)
    spl_x.set_smoothing_factor(smoothing_factor)
    spl_y.set_smoothing_factor(smoothing_factor)
    ts = np.linspace(0, 1, 100)# number of points
    out=[spl_x(ts),spl_y(ts)]    
    #tck, u = interpolate.splprep([x, y], s=0)
    #unew = np.arange(0, 1.01, 0.01)
    #out = interpolate.splev(unew, tck)
    #print(out)
    return out#f_interpolation,new_x


def buttonRelease(event):
    global position_list, counter,tag,position_dataset ,number_of_dems,frames
    if number_of_dems>0:
        inside_counter=counter
        position_dataset.append(position_list)
        new_frame = Frame(root)
        new_frame.pack()
        frames.append(new_frame)
        #demonstrations tag
        dem_tag=Label(new_frame,text=(" demonstrations tag = d%s"%(counter)))
        dem_tag.pack(side=TOP)
        #show checkbox
        var_show=StringVar()
        show_b=Checkbutton(new_frame,text="showd",variable=var_show,onvalue="show",offvalue="hide",command=lambda i=inside_counter:showcheckbox(inside_counter,var_show))
        show_b.select()
        show_b.pack(side=LEFT)
        #smooth checkbox
        var_smooth=StringVar()
        smooth_b=Checkbutton(new_frame,text="smooth",variable=var_smooth)
        smooth_b.deselect()
        smooth_b.pack(side=LEFT)
        #save button
        save_b=Button(new_frame,text="save d%s"%(inside_counter),command=lambda i=inside_counter:save_demonstration(inside_counter))
        save_b.pack(side=LEFT)
        #plot button
        plot_b=Button(new_frame,text="plot",command=lambda i=inside_counter:plot_demonstration(inside_counter))
        plot_b.pack(side=LEFT)
        #delete button
        delete_b=Button(new_frame,text="delete",command=lambda i=inside_counter:delete_demonstration(inside_counter))
        delete_b.pack(side=LEFT)

        canvas.itemconfigure('current',fill='red', width=3)
        canvas.addtag('d%s'%counter, 'withtag', 'current')
        canvas.dtag('current')
        add_counter()
        number_of_dems-=1

def showcheckbox(num,var_show):
    text=var_show.get()
    tag="d%s"%num
    if text=="show":
        for i in canvas.find_withtag(tag):
            canvas.itemconfigure(canvas.find_withtag(i), state='normal')
    elif text=="hide":
        for i in canvas.find_withtag(tag):
            canvas.itemconfigure(canvas.find_withtag(i), state='hidden')

def delete_demonstration(num):# for a single demonstration
    global number_of_dems
    number_of_dems+=1
    tag="d%s"%num
    for i in canvas.find_withtag(tag):
        canvas.delete(canvas.find_withtag(i))
    for widget in frames[num-1].winfo_children():
        widget.destroy()


def plot_demonstration(num):# for a single demonstration
    positions=position_dataset[num-1]
    out=interpolation(positions[1:,0],positions[1:,1])
    plt.plot(positions[1:,0], positions[1:,1], 'o', out[0], out[1], '-')
    plt.legend(['data', 'cubic interpolation'], loc='best')
    plt.title("demonstration%s"%num)
    plt.show()

def load_file():
    global dataset_loaded
    name=load_entry.get()
    load_entry.delete(0,'end')
    #####################change the directory if you changed the path ########################
    with h5py.File('%s'%name,'r') as hdf:
        ls=list(hdf.keys())
        print(ls)
        dataset_loaded=[]
        for dataset in ls:
            data=hdf.get(dataset)
            data_array=np.array(data)
            dataset_loaded.append(data_array)
            print(np.delete(data_array[:,0],0),np.delete(data_array[:,1],0))
            plt.figure()
            plt.plot(np.delete(data_array[:,0],0),np.delete(data_array[:,1],0))
            plt.show()

def save_file():#save everithing in canvas
    global position_dataset
    text=save_entry.get()
    save_entry.delete(0,'end')
    #####################change the directory if you changed the path ########################
    with h5py.File('%s_raw.h5'%text,'w') as hdf:
        for i in range(len(position_dataset)):
            hdf.create_dataset('dataset%s'%i,data=position_dataset[i])

    with h5py.File('%s_smooth.h5'%text,'w') as hdf:
        for i in range(len(position_dataset)):
            positions=position_dataset[i]
            out=interpolation(positions[1:,0],positions[1:,1])
            hdf.create_dataset('dataset%s'%i,data=out)


def save_demonstration(num):## for a single demonstration
    global position_dataset
    print("num",num)
    #text=save_entry.get()
    with h5py.File('dem_%s.h5'%str(num),'w') as hdf:
        hdf.create_dataset('dataset%s'%str(num),data=position_dataset[num-1])

root = Tk()
root.title("Demonstration GUI")
root.geometry("1000x1000")


global position_dataset
position_dataset=[]
num_dems_button=Button(root,text="Enter the number of Demonstraions", command=number_of_dems_key)
num_dems_button.pack()

num_dems_entry=Entry(root,width=50,font=('Helveticq',10))
num_dems_entry.pack()

load_button=Button(root,text="Enter file name you want to load", command=load_file)
load_button.pack()

load_entry=Entry(root,width=50,font=('Helveticq',10))
load_entry.pack()

save_button=Button(root,text="Enter file name you want to save(all demonstrations)", command=save_file)
save_button.pack()

save_entry=Entry(root,width=50,font=('Helveticq',10))
save_entry.pack()

delete_dems_botton=Button(root,text="Enter the tag you want to delete ", command=delete)
delete_dems_botton.pack()

delete_dems_entry=Entry(root,width=50,font=('Helveticq',10))
delete_dems_entry.pack()

canvas = Canvas(root,height=canvas_h,width=canvas_w,bg='white')
canvas.bind("<Button-1>", left_click)
canvas.bind("<B1-Motion>", addLine)
canvas.bind("<B1-ButtonRelease>", buttonRelease)
canvas.pack()

root.mainloop()
