import pygame
import numpy as np
import math
import random

pygame.init()

win_x = 900
win_y = 620
particles=[]
floor_hights=[100,100,100,100,100]
side_size=50
velocity=10

class Player(object):

    def __init__(self,pose):
        self.dist_to_door=None
        self.angle_to_door=None
        self.w = side_size
        self.h = side_size
        self.x = pose[0]
        self.y= pose[1]
        self.theta = pose[2]
        self.hitbox = pygame.Rect(self.x, self.y, self.w, self.h)
        self.vel=velocity
        
    def draw(self, win):
        pygame.draw.rect(win, (255, 0, 0), self.hitbox)
        pygame.draw.line(win, (0, 0, 0), self.hitbox.center,[self.hitbox.centerx+0.5*self.w*np.cos(np.radians(self.theta)),self.hitbox.centery+0.5*self.w*np.sin(np.radians(self.theta))],5)

        
        
class Estimation(object):

    def __init__(self,pose):
        self.w = side_size
        self.h = side_size
        self.x = pose[0]
        self.y= pose[1]
        self.theta = pose[2]
        self.hitbox = pygame.Rect(self.x, self.y, self.w, self.h)
        self.vel=velocity
        
    def draw(self, win):
        pygame.draw.rect(win, (0, 255, 255), self.hitbox,5)
        pygame.draw.line(win, (0, 255, 255), self.hitbox.center,[self.hitbox.centerx+0.5*self.w*np.cos(np.radians(self.theta)),self.hitbox.centery+0.5*self.w*np.sin(np.radians(self.theta))],5)


    
      
        
class Particle(object):
    def __init__(self, pose):
        particles.append(self)  
        self.dist_to_door=None
        self.angle_to_door=None
        self.w = side_size
        self.h = side_size
        self.x = pose[0]
        self.y= pose[1]
        self.theta = pose[2]
        self.hitbox = pygame.Rect(self.x, self.y, self.w, self.h)
        self.vel=velocity
        self.weight=1
        self.colide=False
        
    def draw(self, win):
        pygame.draw.rect(win, (255, 255, 0), self.hitbox,1)
        pygame.draw.line(win, (0, 255, 0), self.hitbox.center,[self.hitbox.centerx+0.5*self.w*np.cos(np.radians(self.theta)),self.hitbox.centery+0.5*self.w*np.sin(np.radians(self.theta))],5)
        
        
        
class World(object):
    def __init__(self):
        self.h=20
        self.w=50
        self.wall_N = pygame.Rect(0, 0, win_x, self.h)
        self.wall_S = pygame.Rect(0, win_y-self.h, win_x, self.h)
        self.wall_E = pygame.Rect(win_x-self.w, 0, self.w, win_y)
        self.wall_W = pygame.Rect(0, 0, self.w, win_y)
        self.wall1_1= pygame.Rect(0,120,400,self.h)
        self.wall1_2= pygame.Rect(500,120,200,self.h)
        self.wall1_3= pygame.Rect(800,120,100,self.h)
        self.wall2_1= pygame.Rect(150,240,450,self.h)
        self.wall2_2= pygame.Rect(700,240,200,self.h)
        self.wall3_1= pygame.Rect(0,360,650,self.h)
        self.wall3_2= pygame.Rect(750,360,150,self.h)
        self.wall4= pygame.Rect(150,480,750,self.h)
        self.wall5= pygame.Rect(150,500,20,20)
        self.walls=[self.wall_N,self.wall_S,
               self.wall_E,self.wall_W,
               self.wall1_1,self.wall1_2,self.wall1_3,
               self.wall2_1,self.wall2_2,
               self.wall3_1,self.wall3_2,
               self.wall4,self.wall5]
        
        self.door11= pygame.Rect(400,120,100,self.h)
        self.door12= pygame.Rect(700,120,100,self.h)
        self.door21= pygame.Rect(50,240,100,self.h)
        self.door22= pygame.Rect(600,240,100,self.h)
        self.door3= pygame.Rect(650,360,100,self.h)
        self.door5= pygame.Rect(150,520,20,80)
        self.doors=[self.door11,
                   self.door12,
                   self.door21,
                   self.door22,
                   self.door3,
                   self.door5]
        
    def draw(self, win):
        for wall in self.walls:
            pygame.draw.rect(win, (255, 255, 255), wall)
        for door in self.doors:
            pygame.draw.rect(win, (210,105,30), door)


class Mase(object):
    def __init__(self):
        self.world=World()
        check=True
        while check:
            posx=np.random.randint(0,win_x)
            posy=np.random.randint(0,win_y)
            theta=np.random.uniform(0,360)
            self.player = Player([posx,posy,theta])
            colide=False
            for wall in self.world.walls:
                if self.player.hitbox.colliderect(wall):
                    colide=True
                    break
            if not colide:
                check=False
        
        self.num_of_particles=1000
        
        #creating initial particles
        for par in range(self.num_of_particles):
            check=True
            while check:
                posx=np.random.randint(0,win_x)
                posy=np.random.randint(0,win_y)
                theta=np.random.randint(0,360)
                Particle([posx,posy,theta])
                colide=False
                for wall in self.world.walls:
                    if particles[-1].hitbox.colliderect(wall):
                        particles.pop()
                        colide=True
                        break
                if not colide:
                    check=False

        #finding the top-left for estimation object
        pose_x_particles=[]
        pose_y_particles=[]
        for par in particles:
            pose_x_particles.append(par.hitbox.x)
            pose_y_particles.append(par.hitbox.y)
        pose_x_estimate=np.mean(pose_x_particles)
        pose_y_estimate=np.mean(pose_y_particles)
        self.estimation= Estimation([pose_x_estimate,pose_y_estimate,0])

    def Noise(self,amount):
        return np.random.normal(scale=amount)

    def stochastic_universal_sampling(self,number_of_samples,stochastic_number,normal_acc_weight_dist):
        self.index=[]
        for _ in range(int(number_of_samples/stochastic_number)):
            self.pick=random.uniform(0,1)
            self.picks=[]
            for i in range(stochastic_number):
                new_pick=self.pick + i*(1/stochastic_number)
                if new_pick>=1:
                    new_pick-=1
                self.picks.append(new_pick)
            self.picks=np.sort(self.picks)
            for pick in self.picks:
                for i in range(len(normal_acc_weight_dist)):
                    if self.pick <normal_acc_weight_dist[i]:
                        self.index.append(i)
                        break
        return self.index


    def distance_to_nearest_door(self, x, y):
        d = win_x + win_y
        angle=0
        for door in self.world.doors:
            if np.abs(door.centery-y)<=np.max(floor_hights):
                dist=np.sqrt((door.centerx-x)**2+(door.centery-y)**2)
                angle_=np.degrees(math.atan2(door.centery-y,door.centerx-x))
                if dist < d:
                    d = dist
                    angle=angle_
        return d + self.Noise(5) , angle + self.Noise(3)

    def weight_calc(self, d1,d2,theta1,theta2,sigma_d = 10 ** 2,sigma_t=10 ** 2):
        error_d = d1 - d2
        weight_d= np.exp(-(error_d ** 2 / (2 * sigma_d)))
        if weight_d<0.01:# it means if error_d>30
            weight_d=0
        error_t=theta1-theta2
        weight_t= np.exp(-(error_t ** 2 / (2 * sigma_t)))
        if weight_t<0.01:# it means if error_t>30
            weight_t=0
        weight=weight_t+weight_d
        return weight
                    

    def move(self,Animation,forward,backward,dtheta):
        prev_t=self.player.theta
        prev_x=self.player.hitbox.x
        prev_y=self.player.hitbox.y
        #dt=dtheta #+ self.Noise(3)
        dt=0
        dx=0
        dy=0
        
        if forward:
            dx=self.player.vel * np.cos(np.radians(self.player.theta))+self.Noise(4)
            dy=self.player.vel * np.sin(np.radians(self.player.theta))+self.Noise(4)

        elif backward:
            dx=-self.player.vel * np.cos(np.radians(self.player.theta))+self.Noise(4)
            dy=-self.player.vel * np.sin(np.radians(self.player.theta))+self.Noise(4)
        else:
            dt = dtheta + self.Noise(3)
            #dx=self.Noise(3)
            #dy=self.Noise(3)
        self.player.theta += dt
        self.player.hitbox.x+=dx
        self.player.hitbox.y+=dy
        real_dt=dt
        real_dx=dx
        real_dy=dy
        
        
        
        for wall in self.world.walls:
            if self.player.hitbox.colliderect(wall):
                if wall.collidepoint(self.player.hitbox.midtop):
                    print("up")
                    self.player.hitbox.top = wall.bottom
                    real_dy=self.player.hitbox.y-prev_y
                elif wall.collidepoint(self.player.hitbox.midbottom):
                    print("down")
                    self.player.hitbox.bottom = wall.top
                    real_dy=self.player.hitbox.y-prev_y
                elif wall.collidepoint(self.player.hitbox.midleft):
                    print("left")
                    self.player.hitbox.left = wall.right
                    real_dx=self.player.hitbox.x-prev_x
                elif wall.collidepoint(self.player.hitbox.midright):
                    print("right")
                    self.player.hitbox.right = wall.left
                    real_dx=self.player.hitbox.x-prev_x




        
        real_vel=np.sqrt((prev_x-self.player.hitbox.x)**2+(prev_y-self.player.hitbox.y)**2)
        #particle movements and collision check


        for i in range(self.num_of_particles):
            particles[i].theta+=real_dt +self.Noise(3)
            particles[i].x+=real_vel * np.cos(np.radians(particles[i].theta))+self.Noise(4)
            particles[i].y+=real_vel * np.sin(np.radians(particles[i].theta))+self.Noise(4)
            for wall in self.world.walls:
                if particles[i].hitbox.colliderect(wall):
                    particles[i].colide=True
        #player dist to door
        self.player.dist_to_door,self.player.angle_to_door=self.distance_to_nearest_door(self.player.hitbox.centerx,self.player.hitbox.centery)

        #particles dist to door
        for par in particles:
            par.dist_to_door,par.angle_to_door=self.distance_to_nearest_door(par.hitbox.centerx,par.hitbox.centery)
        #set weight for each particle
        sum_weights=0
        acc_weights=[]
        all_weights=[]
        col=[]
        for par in particles:
            if par.colide:
                par.weight=0
            else:
                par.weight=self.weight_calc(self.player.dist_to_door,par.dist_to_door,self.player.angle_to_door,par.angle_to_door)
            sum_weights+=par.weight
            all_weights.append(par.weight)
            acc_weights.append(sum_weights)
            col.append(par.colide)

        if sum_weights==0:
            Animation.redraw()
            for par in range(self.num_of_particles):
                check=True
                while check:
                    posx=np.random.randint(0,win_x)
                    posy=np.random.randint(0,win_y)
                    theta=np.random.uniform(0,360)
                    Particle([posx,posy,theta])
                    colide=False
                    for wall in self.world.walls:
                        if particles[-1].hitbox.colliderect(wall):
                            particles.pop()
                            colide=True
                            break
                    if not colide:
                        check=False
        else:
            normal_all_weights=all_weights/sum_weights
            normal_acc_weights=acc_weights/sum_weights
            chosen_particles_indexes=self.stochastic_universal_sampling(self.num_of_particles,10,normal_acc_weights)
    
            #finding the top-left for estimation object
            pose_x_particles=[]
            pose_y_particles=[]
            angle_of_particles=[]
            for par in particles:
                pose_x_particles.append(par.hitbox.x)
                pose_y_particles.append(par.hitbox.y)
                angle_of_particles.append(par.theta)
            pose_x_estimate=np.average(pose_x_particles,weights=normal_all_weights)
            pose_y_estimate=np.average(pose_y_particles,weights=normal_all_weights)
            theta_estimate=np.average(angle_of_particles,weights=normal_all_weights)
            self.estimation= Estimation([pose_x_estimate,pose_y_estimate,theta_estimate])
            Animation.redraw()


            for index in chosen_particles_indexes:
                posx=particles[index].x +self.Noise(5)
                posy=particles[index].y +self.Noise(5)
                theta=particles[index].theta +self.Noise(3)
                Particle([posx,posy,theta])

        for i in range(self.num_of_particles):
            particles.pop(0)


            
            



class Animation(object):
    def __init__(self):
        self.run = True
        self.amin = Mase()
        pygame.init()
        self.win = pygame.display.set_mode((win_x, win_y))
        pygame.display.set_caption("Ball chasing")
        #self.clock = pygame.time.Clock()

    def redraw(self):
        self.win.fill((0, 0, 0))
        self.amin.world.draw(self.win)
        for par in particles:
            par.draw(self.win)
        self.amin.player.draw(self.win)
        self.amin.estimation.draw(self.win)
        pygame.display.update()


    def animate(self):#, state_vector, action_vector, rate):
        run=True
        initial=True
        while run:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    run =False
            if initial:
                self.redraw()
                initial=False

            forward=False
            backward=False
            dthata=0
            keys=pygame.key.get_pressed()
            if keys[pygame.K_LEFT]:
                dthata=-30
            elif keys[pygame.K_RIGHT]:
                dthata=30
            elif keys[pygame.K_UP]:
                forward=True
            elif keys[pygame.K_DOWN]:
                backward=True
            if forward or backward or dthata != 0:
                self.amin.move(self,forward,backward,dthata)
            pygame.time.wait(1)
            
        pygame.quit()

if __name__ == '__main__':
    animation=Animation()
    animation.animate()
