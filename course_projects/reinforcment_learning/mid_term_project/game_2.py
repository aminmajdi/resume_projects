import pygame
import numpy as np
import math

pygame.init()

win_x = 800
win_y = 600
win = pygame.display.set_mode((win_x, win_y))
pygame.display.set_caption("Ball chasing")
clock = pygame.time.Clock()
add_ball = False

class player(object):

    def __init__(self):
        self.distance = 50
        self.x1 = win_x - 100
        self.y1 = -(win_y - self.distance) / 2
        self.w1 = 15
        self.h1 = win_y - self.distance

        self.x2 = self.x1
        self.y2 = self.y1 + self.h1 + self.distance
        self.w2 = 15
        self.h2 = self.h1

        self.vel = 5

    def draw(self, win):
        self.hitbox1 = (self.x1, self.y1, self.w1, self.h1)
        self.hitbox2 = (self.x2, self.y2, self.w2, self.h2)
        pygame.draw.rect(win, (255, 255, 255), self.hitbox1)
        pygame.draw.rect(win, (255, 255, 255), self.hitbox2)


class ball_maker(object):
    def __init__(self):
        self.x = 400
        self.y = 280
        self.w = 5
        self.h = 5
        #self.direction = np.random.choice([i for i in range(200, 245)])
        self.color = (255, 255, 255)
        self.vel = 6
        self.theta = 0.78 * np.random.choice([i for i in range(350, 450)]) * 0.01
        self.x_vel = self.vel * math.cos(self.theta)
        self.y_vel = -self.vel * math.sin(self.theta)

    def draw(self, win):
        self.hitbox = (self.x, self.y, self.w, self.h)
        pygame.draw.rect(win, self.color, self.hitbox)


def redraw():
    win.fill((0, 0, 0))
    padd.draw(win)
    for ball in balls:
        ball.draw(win)
    pygame.display.update()


padd = player()

balls = []
balls.append(ball_maker())
run = True
reward = 0
game_over = False
hit_count = 0
while run:
    clock.tick(100)
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run = False

    for ball in balls:
        if ball.x + ball.w >= padd.x1 and ball.x <= padd.x1 + padd.w1:
            if ball.y + ball.h >= padd.y1 and ball.y <= padd.y1 + padd.h1:
                ball.y_vel = ball.y_vel
                ball.x_vel = -ball.x_vel
                ball.x = padd.x1 - 1
                reward -= 1
                hit_count +=1
        if ball.x + ball.w >= padd.x2 and ball.x <= padd.x2 + padd.w2:
            if ball.y + ball.h >= padd.y2 and ball.y <= padd.y2 + padd.h2:
                ball.y_vel = ball.y_vel
                ball.x_vel = -ball.x_vel
                ball.x = padd.x2 - 1
                reward -= 1
                hit_count += 1

        if 0 < ball.x < win_x - ball.w and 0 < ball.y < win_y - ball.h:
            ball.x += ball.x_vel
            ball.y += ball.y_vel
            if ball.y <= 0:
                ball.y = 1
                ball.y_vel = -ball.y_vel
            if ball.y >= win_y - ball.h:
                ball.y = win_y - ball.h - 1
                ball.y_vel = -ball.y_vel
            if ball.x <= 0:
                ball.x = 1
                ball.x_vel = -ball.x_vel
            if ball.x >= win_x - ball.w:
                balls.pop(balls.index(ball))
                add_ball = True
                reward += 5
    if add_ball:
        balls.append(ball_maker())
        add_ball = False
        hit_count = 0

    if hit_count == 5:
        game_over=True

    keys = pygame.key.get_pressed()

    if keys[pygame.K_UP]:
        padd.y1 -= padd.vel
        padd.y2 -= padd.vel
        action = "up"
        if padd.y1 + padd.h1 < 0:
            padd.y1 = -padd.h1
            padd.y2 = padd.y1 + padd.h1 + padd.distance
    elif keys[pygame.K_DOWN]:
        padd.y1 += padd.vel
        padd.y2 += padd.vel
        action = "down"
        if padd.y1 > win_y - padd.h1 - padd.distance:
            padd.y1 = win_y - padd.h1 - padd.distance
            padd.y2 = padd.y1 + padd.h1 + padd.distance
    else:
        action = "stay"

    if game_over:
        print("game over")
        run = False
    print("****************************")
    print("reward = ", reward)
    print("Action =",action)
    print("STATE =", "{ ball_center = ", "[", int(balls[0].x + balls[0].w // 2), ",", int(balls[0].y + balls[0].h // 2), "]" )
    print("\t\t"+"ball's velocity = ", "[", balls[0].x_vel, ",", balls[0].y_vel, "]")
    print("\t\t"+"Gap's location =", "[", int(padd.x1), ",", int(padd.y2 - padd.distance // 2), "] }")

    redraw()

pygame.quit()
