def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
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
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  get_user_input
  new_card = 
    if get_user_input == 'h'
      new_card << deal_card()
      current_total = card_total + new_card
    elsif get_user_input == 's'
    else 
      invalid_command
    end
  return current_total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    card_total += deal_card
  elsif answer == 's'
    card_total
  else
    invalid_command
    hit?(card_total)
   end
end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
