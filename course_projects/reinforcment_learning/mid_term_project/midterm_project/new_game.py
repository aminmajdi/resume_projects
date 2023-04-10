import pygame
import numpy as np
import math

pygame.init()

win_x = 800
win_y = 600
win = pygame.display.set_mode((win_x, win_y))
pygame.display.set_caption("MAGIC GAME")
font1 = pygame.font.Font('freesansbold.ttf', 20)
text1 = font1.render('REWARD', True, (255,0,0), (0,0,0))
textRect1 = text1.get_rect()
textRect1.center = (250, 30)
font2 = pygame.font.Font('freesansbold.ttf', 20)
text2 = font2.render('MAGIC', True, (255,0,0), (0,0,0))
textRect2 = text2.get_rect()
textRect2.center = (550, 30)
clock = pygame.time.Clock()
add_ball = False
first_hit = True


class player(object):
    def __init__(self):
        self.x = 350
        self.y = 580
        self.w = 100
        self.h = 10
        self.vel = 15
        self.hitbox = (self.x, self.y, self.w, self.h)
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
        self.h = 2
        self.color = color
        self.hitbox = (self.x, self.y, self.w, self.h)

    def draw(self, win):
        self.hitbox = (self.x, self.y, self.w, self.h)
        pygame.draw.rect(win, self.color, self.hitbox)


class ball_maker(object):
    def __init__(self):
        self.x = 400
        self.y = 574
        self.w = 5
        self.h = 5
        self.direction = np.random.choice([i for i in range(200, 245)])
        self.color = (255, 255, 255)
        self.vel = 10
        self.theta = 0.78 * np.random.choice([i for i in range(250,300)]) * 0.01
        self.x_vel = self.vel * math.cos(self.theta)
        self.y_vel = -self.vel * math.sin(self.theta)
        self.hitbox = (self.x, self.y, self.w, self.h)

    def draw(self, win):
        self.hitbox = (self.x, self.y, self.w, self.h)
        pygame.draw.rect(win, self.color, self.hitbox)


def redraw():
    win.fill((0, 0, 0))
    win.blit(text1, textRect1)
    win.blit(text2, textRect2)
    padd.draw(win)
    reward_button.draw(win)
    magic_button.draw(win)
    for ball in balls:
        ball.draw(win)
    pygame.display.update()


padd = player()
reward_button = button((0, 0, 255), 200, 0)
magic_button = button((0, 255, 0), 500, 0)

balls=[]
balls.append(ball_maker())
run = True
ball_counter=1
hit_fix=0
reward=0
reward_sum=0
game_over=False
while run:
    clock.tick(30)
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run = False
    if hit_fix > 0 :
        hit_fix+=1
    if hit_fix >3 :
        hit_fix=0
    for ball in balls:
        if ball.x + ball.w >= magic_button.x and ball.x <= magic_button.x + magic_button.w and hit_fix == 0:
            if ball.y + ball.h >= magic_button.y and ball.y <= magic_button.y + magic_button.h:
                hit_fix += 1
                if ball_counter == 1:
                    add_ball = True
                    ball.y = magic_button.y + magic_button.h + 1
                    ball.y_vel = -ball.y_vel
                    reward_sum += 1
                    reward = 1
                elif ball_counter == 2:
                    balls.pop(balls.index(ball))
                    ball_counter = 1
                    ball.y = magic_button.y + magic_button.h + 1
                    ball.y_vel = -ball.y_vel
                    reward_sum -= 1
                    reward=-1



        if ball.y + ball.h >= padd.y and ball.y <= padd.y + padd.h:
            if ball.x + ball.w >= padd.x and ball.x <= padd.x + padd.w // 4:
                ball.x_vel = ball.x_vel - 5
                ball.y_vel = -ball.y_vel
                ball.y = padd.y - 1
            if ball.x + ball.w >= padd.x + padd.w //4 + 1 and ball.x <= padd.x + padd.w // 2:
                ball.x_vel = ball.x_vel
                ball.y_vel = -ball.y_vel
                ball.y = padd.y - 1
            if ball.x + ball.w >= padd.x + padd.w //2 + 1 and ball.x <= padd.x + 3 * padd.w // 4:
                ball.x_vel = ball.x_vel
                ball.y_vel = -ball.y_vel
                ball.y = padd.y - 1
            if ball.x + ball.w >= padd.x + 3 * padd.w //4 + 1 and ball.x <= padd.x + padd.w:
                ball.x_vel = ball.x_vel + 5
                ball.y_vel = -ball.y_vel
                ball.y = padd.y - 1

        if ball.y + ball.h >= reward_button.y and ball.y <= reward_button.y + reward_button.h:
            if ball.x + ball.w >= reward_button.x and ball.x <= reward_button.x + reward_button.w:
                balls.pop(balls.index(ball))
                ball_counter -= 1

                reward_sum += 5
                reward=5

                if ball_counter==0:
                    game_over = True

        if 0 < ball.x < win_x - ball.w and 0 < ball.y < win_y - ball.h:
            ball.x += ball.x_vel
            ball.y += ball.y_vel
            if ball.x <= 0:
                ball.x = 1
                ball.x_vel = -ball.x_vel
            if ball.x >= win_x - ball.w:
                ball.x = win_x - ball.w - 1
                ball.x_vel = -ball.x_vel
            if ball.y <= 0:
                ball.y = 1
                ball.y_vel = -ball.y_vel
            if ball.y >= win_y - ball.h:
                balls.pop(balls.index(ball))
                ball_counter -= 1
                if ball_counter == 1 :

                    reward_sum -= 1

                if ball_counter == 0 :

                    reward_sum -= 5
                    reward=-5

                    game_over = True


    if add_ball:
        balls.append(ball_maker())
        ball_counter += 1
        add_ball = False

    keys = pygame.key.get_pressed()

    if keys[pygame.K_LEFT]:
        padd.left = True
        padd.right = False
        padd.x -= padd.vel
        action = "Left"
        if padd.x < 0:
            padd.x = 0
    elif keys[pygame.K_RIGHT]:
        padd.x += padd.vel
        padd.left = False
        padd.right = True
        action = "Right"
        if padd.x > win_x - padd.w:
            padd.x = win_x - padd.w
    else:
        padd.left = False
        padd.right = False
        action = "Stay"

    print("****************************")
    print("Action =",action)
    print("reward = ", reward)
    print("reward_sum = ", reward_sum)

    if ball_counter==1:
        print("STATE = {", "number of balls in screen =", ball_counter)
        print("\t\t"+ " ball_center = ", "[", int(balls[0].x + balls[0].w // 2), ",", int(balls[0].y + balls[0].h // 2), "]" )
        print("\t\t"+"ball's velocity = ", "[", balls[0].x_vel, ",", balls[0].y_vel, "]")
        print("\t\t" + "Paddle's location =", "[", int(padd.x + padd.w//2), ",", int(padd.y - padd.h // 2), "] }")
    elif ball_counter == 2:
        print("STATE = {", "number of balls in screen =", ball_counter)
        print("\t\t"+ " ball_center = ", "[", int(balls[0].x + balls[0].w // 2), ",", int(balls[0].y + balls[0].h // 2), "]" )
        print("\t\t" + "ball(1)'s velocity = ", "[", balls[0].x_vel, ",", balls[0].y_vel, "]")
        print("\t\t" + " ball(2)_center = ", "[", int(balls[1].x + balls[1].w // 2), ",",
              int(balls[0].y + balls[0].h // 2), "]")
        print("\t\t" + "ball(2)'s velocity = ", "[", balls[1].x_vel, ",", balls[1].y_vel, "]")
        print("\t\t" + "Paddle's location =", "[", int(padd.x + padd.w//2), ",", int(padd.y - padd.h // 2), "] }")

    if game_over:
        print("STATE =" , "Terminal")
        print("##############game over##############")
        run = False
    reward = 0
    redraw()

pygame.quit()
