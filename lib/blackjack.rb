def welcome
  puts "Welcome to the Blackjack Table"
    end

def deal_card
  rand(1...11)
    end

def display_card_total(total)
  puts "Your cards add up to #{total}"
    end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
    end

def get_user_input
  gets.chomp
    end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
    end

def initial_round
  sum = 0
    sum = deal_card + deal_card
      display_card_total(sum)
        return sum
          end


def hit? (current_total)
  prompt_user
    input = get_user_input

  if input == "h"
    current_total += deal_card

  elsif input == 's'
    current_total

  else
    invalid_command
    prompt_user
    input = get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
total = initial_round


until total > 21
total = hit?(initial_round)
display_card_total(initial_round)
end
  end_game(total)
end
    