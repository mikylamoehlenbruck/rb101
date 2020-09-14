require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')
LANGUAGE = 'en'

VALID_CHOICES = %w(rock paper scissors lizard spock)

ABBREVIATIONS = %w(r p s l $)

WINNING_OPTIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper' 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['rock', 'scissors']
}

def clear_screen
  system("clear") || system("cls")
end

def prompt(message)
  puts "=> #{message}"
end

def display_welcome
  prompt(MESSAGES['welcome'] + "#{VALID_CHOICES.join(', ')}!")
end

def display_target_points
  prompt(MESSAGES['target_points'])
end

def retrieve_player_choice
  prompt(MESSAGES['choose_one'])
  prompt(MESSAGES['choices'])
  answer = ""

  loop do
    answer = gets.chomp
    break if answer.start_with?('r', 'p', 's', 'l', '$')
    prompt(MESSAGES['invalid_entry'])
    prompt(MESSAGES['please_enter'])
  end
  answer
end

def win?(first, second)
  WINNING_OPTIONS[first].include?(second)
end

def convert_choices(player)
  result = case player
           when "r" then "rock"
           when "p" then "paper"
           when "s" then "scissors"
           when "l" then "lizard"
           when "$" then "spock"
           end
  result
end

def display_choices(player, computer)
  print(MESSAGES['player_choice'] + "#{player}; ")
  puts(MESSAGES['computer_choice'] + " #{computer}")
end

def calculate_winner(first_player, second_player)
  first_player
  if win?(first_player, second_player)
    first_player = 1
  else
    first_player = 0
  end
  first_player
end

def display_results(player, computer)
  if player > computer
    prompt(MESSAGES['player_win'])
  elsif computer > player
    prompt(MESSAGES['computer_win'])
  else
    prompt(MESSAGES['tie'])
  end
end

def update_score(player, computer, hash_scores)
  if player > computer
    hash_scores[:player_score] += 1
  elsif computer > player
    hash_scores[:computer_score] += 1
  end
end

def display_score(hash_scores)
  print "You have #{hash_scores[:player_score]} point(s), "
  puts "Computer has #{hash_scores[:computer_score]} point(s)"
end

def pause_and_clear
  sleep 2.0
  clear_screen
end

def game_over?(hash_scores)
  hash_scores[:player_score] == 5 || hash_scores[:computer_score] == 5
end

def display_winner(hash_scores)
  if hash_scores[:player_score] == 5
    prompt(MESSAGES['game_player'] + "#{VALID_CHOICES.join(', ')}!")
  else
    prompt(MESSAGES['game_computer'] + "#{VALID_CHOICES.join(', ')}!")
  end
end

def play_again
  prompt(MESSAGES['play_again'])
  answer = ''

  loop do
    answer = gets.chomp.downcase
    break if %w(y yes n no).include?(answer)
    prompt(MESSAGES['invalid_answer'])
  end
  answer
end

def reset_scores(hash_scores)
  hash_scores[:player_score] = 0
  hash_scores[:computer_score] = 0
end

def display_goodbye
  prompt(MESSAGES['thank_you'])
end

clear_screen
display_welcome
display_target_points
scores = {
  player_score: 0,
  computer_score: 0
}

loop do
  player_choice = ''
  computer_choice = ''

  loop do
    choice = retrieve_player_choice
    computer_choice = VALID_CHOICES.sample
    player_choice = convert_choices(choice)

    display_choices(player_choice, computer_choice)

    player_score = calculate_winner(player_choice, computer_choice)
    computer_score = calculate_winner(computer_choice, player_choice)

    display_results(player_score, computer_score)

    update_score(player_score, computer_score, scores)

    display_score(scores)
    pause_and_clear

    break if game_over?(scores)
  end

  display_winner(scores)

  again = play_again
  unless again.start_with?('y')
    break
  end

  reset_scores(scores)
  clear_screen
end

display_goodbye
