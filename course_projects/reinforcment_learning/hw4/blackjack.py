#! /usr/bin/env python
import numpy as np

'''
This function simulates a game of BlackJack according to 
Reinforcement Learning: An Introduction (Second Edition), Chapter 5, Page 93

===== STATES =====
10 states: Current sum of player in range [12,21]
10 states: Dealer's showing card in range [ace, 10]
2 states: has a usable ace or not
NUM_STATES = 10x10x2 = 200


state vector: self.state = [usable_ace_player, player_sum, dealer_card1]

===== ACTIONS =====
1 action: hits (gets a new card)
1 action: sticks (stops)
NUM_ACTIONS = 1+1 = 2

===== REWARDS =====
1 if the player wins
0 if the game is a draw
-1 if the dealer wins

===== HOW TO USE =====
Example: (note that we can pass a function as a policy)
state, reward, player_trajectory = play(target_policy_player) 
'''

class BlackJack:

    def __init__(self, initial_state=None, initial_action=None):

        self.initial_state = initial_state
        self.initial_action = initial_action 
        self.action_hit = 0
        self.action_stick = 1
        self.actions = [self.action_hit, self.action_stick]

        # Fixed policy for Dealer
        # sticks on any sum of 17 and hits otherwise
        self.policy_dealer = np.zeros(22, dtype=np.int)
        for i in range(12,17):
            self.policy_dealer[i] = self.action_hit 
        for i in range(17,22):
            self.policy_dealer[i] = self.action_stick



    def initialize_game(self):
        self.player_sum = 0
        self.dealer_sum = 0
        self.usable_ace_player = False 

        # dealer status
        self.dealer_card1 = 0
        self.dealer_card2 = 0
        self.usable_ace_dealer = False 

        self.player_trajectory = []

        # if an initial state is not given, generate one
        if self.initial_state is None:

            # draw cards as long as player's sum is less than 12
            while self.player_sum < 12:
                card = self.draw_card()
                self.player_sum += self.card_value(card)

                # if it goes bust
                if self.player_sum > 21:
                    assert self.player_sum == 22 # make sure it is not double aces
                    self.player_sum -= 10        # if it is, count one ace as 1

                else:
                    self.usable_ace_player = (1==card) # if one of the cards is ace, change the flag

            # draw two cards for the dealer
            self.dealer_card1 = self.draw_card()
            self.dealer_card2 = self.draw_card()
        
        # if initial state is given
        else:
            # extract the values 
            self.usable_ace_player, self.player_sum, self.dealer_card1 = self.initial_state 
            # draw the second card for the dealer
            self.dealer_card2 = self.draw_card()

        # make the state vector
        self.state = [self.usable_ace_player, self.player_sum, self.dealer_card1]

        # check dealer's cards
        self.dealer_sum = self.card_value(self.dealer_card1) + self.card_value(self.dealer_card2)
        # are any of them aces ?
        self.usable_ace_dealer = 1 in (self.dealer_card1, self.dealer_card2)

        # if dealer goes bust
        if self.dealer_sum > 21:
            assert self.dealer_sum == 22 # check to see if the dealer has two aces = 11+11
            self.dealer_sum -= 10        # count one ace as 1

        # make sure the initial sums are less than 21
        assert self.dealer_sum <= 21
        assert self.player_sum <= 21            



    # draw a new card 
    def draw_card(self):
        # there are 14 cards including 4 face cards
        card = np.random.randint(1,14)
        # face cards are counted as 10
        card = min(card, 10)
        return card 

    # get the value of the card, count ace as 11
    def card_value(self, card_id):
        return 11 if card_id == 1 else card_id 

    def play(self, policy_player_, initial_state=None, initial_action=None):
        if initial_state is not None:
            self.initial_state = initial_state 

        if initial_action is not None:
            self.initial_action = initial_action 

        self.initialize_game()
        # game starts!

        #player's turn
        while True:

            # get the initial action
            if self.initial_action is not None:
                action = self.initial_action 
                self.initial_action = None 
            else:
                # act according to the player's fix policy (just for the first action)
                action = policy_player_(self.player_sum, self.dealer_card1, self.usable_ace_player)

            # record the players state-action trajectory 
            self.player_trajectory.append([(self.usable_ace_player, self.player_sum, self.dealer_card1), action])

            # stop if the selected action is stick
            if action == self.action_stick:
                break 
            
            # draw a card otherwise
            card = self.draw_card()

            # keep count of aces (can only be 0 or 1)
            ace_count = int(self.usable_ace_player)
            if card == 1:
                ace_count += 1

            # update player's sum
            self.player_sum += self.card_value(card)

            # if the player has an ace, use it
            while self.player_sum > 21 and ace_count:
                self.player_sum -= 10
                ace_count -= 1 

            # if the player goes bust
            if self.player_sum > 21:
                return self.state, -1, self.player_trajectory

            # otherwise make sure the play sticks with a correct sum
            assert self.player_sum <= 21 
            self.usable_ace_player = (ace_count == 1)

        # dealer's turn 
        while True:

            # dealer always acts according to a fixed policy
            action = self.policy_dealer[self.dealer_sum]

            # stop if the action is stick
            if action == self.action_stick:
                break 

            # otherwise, draw a new card 
            new_card = self.draw_card()

            # keep count of aces 
            ace_count = int(self.usable_ace_dealer)
            if new_card == 1:
                ace_count += 1

            # update dealer's sum
            self.dealer_sum += self.card_value(new_card)

            # if the dealer has an ace, use it 
            while self.dealer_sum > 21 and ace_count:
                self.dealer_sum -= 10
                ace_count -= 1

            # if the dealer busts -> the player wins
            if self.dealer_sum > 21:
                return self.state,1 , self.player_trajectory
            self.usable_ace_dealer = (ace_count == 1)

        # make sure both sums are within range
        assert self.player_sum <= 21 and self.dealer_sum <= 21

        # compare sums
        if self.player_sum > self.dealer_sum:
            return self.state, 1, self.player_trajectory
        elif self.player_sum == self.dealer_sum:
            return self.state, 0, self.player_trajectory 
        else:
            return self.state, -1, self.player_trajectory 

