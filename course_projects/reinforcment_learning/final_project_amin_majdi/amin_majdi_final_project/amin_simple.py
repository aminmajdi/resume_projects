import pygame
import numpy as np
import math

pygame.init()

win_x = 800
win_y = 600
#win = pygame.display.set_mode((win_x, win_y))

#clock = pygame.time.Clock()



class player(object):
    def __init__(self):
        self.x = None#350
        self.y = 587
        self.w = 100
        self.h = 12
        self.vel = 10
        #self.hitbox = (self.x, self.y, self.w, self.h)
        self.left = False
        self.right = False
        self.standing = True

    def draw(self, win):
        self.hitbox = (self.x, self.y, self.w, self.h)
        pygame.draw.rect(win, (255, 255, 255), self.hitbox)


class button(object, ):
    def __init__(self, color, x, y):
        self.x = x
        self.y = y
        self.w = 100
        self.h = 6
        self.color = color
        self.hitbox = (self.x, self.y, self.w, self.h)

    def draw(self, win):
        self.hitbox = (self.x, self.y, self.w, self.h)
        pygame.draw.rect(win, self.color, self.hitbox)


class ball_maker(object):
    def __init__(self):
        self.x =None #400
        self.y =None #574
        self.w = 5
        self.h = 5
        #self.direction = np.random.choice([i for i in range(200, 245)])
        self.color = (255, 255, 255)
        self.vel = 4
        self.theta =None # 0.78 * np.random.choice([i for i in range(250, 300)]) * 0.01
        self.x_vel =None # self.vel * math.cos(self.theta)
        self.y_vel =None # -self.vel * math.sin(self.theta)
        self.hitbox = (self.x, self.y, self.w, self.h)

    def draw(self, win):
        self.hitbox = (self.x, self.y, self.w, self.h)
        pygame.draw.rect(win, self.color, self.hitbox)
        
        
        
class magic_multi_action_paddle(object):
    def __init__(self):
        self.padd = player()
        self.reward_button = button((0, 0, 255), 200, 0)
        self.magic_button = button((0, 255, 0), 500, 0)
        self.ball = ball_maker()
        self.reward = 0
        self.dist_reward = 0
        self.game_over = False
        self.magicball = False
        self.next_state = np.empty(0)

    def move(self, state, action):
        self.ball.x = state[0]
        self.ball.y = state[1]
        self.ball.theta = state[2]
        self.ball.x_vel = self.ball.vel * np.cos(self.ball.theta)
        self.ball.y_vel = -self.ball.vel * np.sin(self.ball.theta)
        self.padd.x = state[3]
        self.reward = 0
        self.dist_reward = 0
        if action == -1:
            self.padd.x -= self.padd.vel
            if self.padd.x < 0:
                self.padd.x = 0
        elif action == 1:
            self.padd.x += self.padd.vel
            if self.padd.x > win_x - self.padd.w:
                self.padd.x = win_x - self.padd.w
        elif action == 0:
            pass

        self.ball.x += self.ball.x_vel
        self.ball.y += self.ball.y_vel
        if self.ball.x <= 0:
            self.ball.x = 1
            self.ball.x_vel = -self.ball.x_vel
            if self.ball.theta >= 0:
                self.ball.theta = np.pi - self.ball.theta
            else:
                self.ball.theta = -np.pi - self.ball.theta

        elif self.ball.x >= win_x - self.ball.w:
            self.ball.x = win_x - self.ball.w - 1
            self.ball.x_vel = -self.ball.x_vel
            if self.ball.theta >= 0:
                self.ball.theta = np.pi - self.ball.theta
            else:
                self.ball.theta = -np.pi - self.ball.theta
        if self.ball.y <= 0:
            self.ball.y = 1
            self.ball.y_vel = -self.ball.y_vel
            self.ball.theta = -self.ball.theta
        elif self.ball.y >= win_y - self.ball.h:
            # balls.pop(balls.index(ball))
            # ball_counter -= 1
            self.game_over = True
            self.reward = -1000


        if self.ball.y + self.ball.h >= self.padd.y:
            if self.ball.y <= self.padd.y + self.padd.h:
                if self.ball.x + self.ball.w >= self.padd.x and self.ball.x <= self.padd.x + self.padd.w // 4:
                    self.ball.y = self.padd.y -self.ball.h- 1
                    self.ball.theta = -self.ball.theta + np.pi/8
                    self.reward = 1000
                elif self.ball.x + self.ball.w >=self.padd.x+self.padd.w //4+1 and self.ball.x<=self.padd.x+3*self.padd.w // 4:
                    self.ball.theta = -self.ball.theta
                    self.ball.y = self.padd.y -self.ball.h- 1
                    self.reward = 1000
                elif self.ball.x + self.ball.w >= self.padd.x +3* self.padd.w //4+1 and self.ball.x<=self.padd.x+ self.padd.w:
                    self.ball.theta = -self.ball.theta - np.pi/8
                    self.ball.y = self.padd.y -self.ball.h- 1
                    self.reward = 1000

        if self.ball.y + self.ball.h >= self.reward_button.y:  # ball_reward
            if self.ball.y <= self.reward_button.y + self.reward_button.h:
                if self.ball.x+self.ball.w >=self.reward_button.x and self.ball.x<= self.reward_button.x+ self.reward_button.w:
                    # balls.pop(balls.index(self.ball))
                    self.reward = 10000
                    self.game_over = True
        # if np.abs(self.padd.x + self.padd.w/2-(self.ball.x + self.ball.w/2))<self.padd.w:
        #    self.dist_reward=1
        # elif  np.abs(self.padd.x + self.padd.w/2-(self.ball.x + self.ball.w/2))>2*self.padd.w:
        #    self.dist_reward=-1

        #self.dist_reward = -np.abs(self.padd.x + self.padd.w / 2 - (self.ball.x + self.ball.w / 2)) * 0.001

        total_reward = self.reward #+ self.dist_reward
        self.next_state = [self.ball.x, self.ball.y, self.ball.theta, self.padd.x]
        return self.next_state, total_reward, self.game_over

class magic_play(object):
    def __init__(self):
        self.padd = player()
        self.reward_button = button((0, 0, 255), 200, 0)
        self.magic_button = button((0, 255, 0), 500, 0)
        self.ball=ball_maker()
        self.reward = 0
        self.dist_reward=0
        self.game_over = False
        self.magicball=False
        self.next_state = np.empty(0)

    def move(self, state, action):
        self.ball.x = state[0]
        self.ball.y = state[1]
        self.ball.theta = state[2]
        self.ball.x_vel = self.ball.vel * np.cos(self.ball.theta)
        self.ball.y_vel = -self.ball.vel * np.sin(self.ball.theta)
        self.padd.x = state[3]
        self.reward=0
        self.dist_reward=0
        if action == -1:
            self.padd.x -= self.padd.vel
            if self.padd.x < 0:
                self.padd.x = 0
        elif action == 1:
            self.padd.x += self.padd.vel
            if self.padd.x > win_x - self.padd.w:
                self.padd.x = win_x - self.padd.w
        elif action == 0:
            pass

        self.ball.x += self.ball.x_vel
        self.ball.y += self.ball.y_vel
        if self.ball.x <= 0:
            self.ball.x = 1
            self.ball.x_vel = -self.ball.x_vel
            if self.ball.theta >= 0:
                self.ball.theta = np.pi - self.ball.theta
            else:
                self.ball.theta = -np.pi - self.ball.theta

        elif self.ball.x >= win_x - self.ball.w:
            self.ball.x = win_x - self.ball.w - 1
            self.ball.x_vel = -self.ball.x_vel
            if self.ball.theta >= 0:
                self.ball.theta = np.pi - self.ball.theta
            else:
                self.ball.theta= -np.pi - self.ball.theta
        if self.ball.y <= 0:
            self.ball.y = 1
            self.ball.y_vel = -self.ball.y_vel
            self.ball.theta = -self.ball.theta
        elif self.ball.y >= win_y - self.ball.h:
            #balls.pop(balls.index(ball))
            #ball_counter -= 1
            self.game_over = True
            self.reward=-1000

        if self.ball.y + self.ball.h >= self.padd.y:# ball_padd
            if self.ball.y <= self.padd.y + self.padd.h:
                if self.ball.x + self.ball.w >= self.padd.x and self.ball.x <= self.padd.x + self.padd.w:
                    self.ball.x_vel = self.ball.x_vel
                    self.ball.y_vel = -self.ball.y_vel
                    self.ball.y = self.padd.y -self.ball.h- 1
                    self.reward = 1000
                    self.ball.theta = -self.ball.theta

        if self.ball.y + self.ball.h >= self.reward_button.y:#ball_reward
            if self.ball.y <= self.reward_button.y + self.reward_button.h:
                if self.ball.x+ self.ball.w>= self.reward_button.x and self.ball.x<=self.reward_button.x+ self.reward_button.w:
                    #balls.pop(balls.index(self.ball))
                    self.reward = 0
                    self.game_over = True
        #if np.abs(self.padd.x + self.padd.w/2-(self.ball.x + self.ball.w/2))<self.padd.w:
        #    self.dist_reward=1
        #elif  np.abs(self.padd.x + self.padd.w/2-(self.ball.x + self.ball.w/2))>2*self.padd.w:
        #    self.dist_reward=-1
        
        #self.dist_reward=-np.abs(self.padd.x + self.padd.w/2-(self.ball.x + self.ball.w/2))*0.01
        
        total_reward=self.reward #+self.dist_reward
        self.next_state = [self.ball.x,self.ball.y,self.ball.theta,self.padd.x]
        return self.next_state , total_reward , self.game_over


class animation(object):
    def __init__(self):
        pygame.init()
        self.play = magic_play()
        self.win = pygame.display.set_mode((win_x, win_y))
        pygame.display.set_caption("MAGIC GAME")
        self.clock = pygame.time.Clock()

    def redraw(self):
        self.win.fill((0, 0, 0))
        self.play.padd.draw(self.win)
        self.play.ball.draw(self.win)
        self.play.reward_button.draw(self.win)
        self.play.magic_button.draw(self.win)
        pygame.display.update()

    def animate(self, state_vector, action_vector, rate):
        for i in range(len(action_vector)):
            self.clock.tick(rate)
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    break
            self.play.move(state_vector[i], action_vector[i])
            self.redraw()
        pygame.quit()


