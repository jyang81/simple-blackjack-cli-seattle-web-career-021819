def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(1..11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    a = deal_card
    b = deal_card
    card_total = a + b
 
    display_card_total(card_total)
    card_total
end

def hit?(initial_round)
    prompt_user
    answer = get_user_input
    current_total = initial_round
    case answer
        when "h"
         c = deal_card
         current_total = c + initial_round
         current_total
        when "s"
         current_total
        else
         invalid_command
         prompt_user
    end
end

def invalid_command
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
    until card_total > 21
        card_total = hit?(card_total)
        display_card_total(card_total)
    end

    end_game(card_total)
end
    
