VALID_CHOICES = %w(rock paper scissors lizard spock)
                    #0   #1    #2       #3     #4
WINNING_OPTIONS = {
                    VALID_CHOICES[0] => [VALID_CHOICES[2], VALID_CHOICES[3]],
                    VALID_CHOICES[1] => [VALID_CHOICES[0], VALID_CHOICES[4]],
                    VALID_CHOICES[2] => [VALID_CHOICES[1], VALID_CHOICES[3]],
                    VALID_CHOICES[3] => [VALID_CHOICES[4], VALID_CHOICES[1]],
                    VALID_CHOICES[4] => [VALID_CHOICES[0], VALID_CHOICES[2]]
                  }

def clear_screen
  system("clear") || system("cls")
end

def prompt(message)
  puts "=> #{message}"
end

def display_welcome
  prompt "Welcome to #{VALID_CHOICES.join(', ')}!"
end

def retrieve_player_choice
  prompt "Choose one:"
  prompt "r: #{VALID_CHOICES[0]}; p: #{VALID_CHOICES[1]};
          s: #{VALID_CHOICES[2]}; l: #{VALID_CHOICES[3]};
          $: #{VALID_CHOICES[4]}"
  answer = ""

  loop do
    answer = gets.chomp
    break if answer.start_with?('r', 'p', 's', 'l', '$')
    prompt "That's not a valid choice"
  end
  answer
end

def win?(first, second)
  WINNING_OPTIONS[first].include?(second)     # ERROR HERE
end

def convert_choices(player)
  result = case player
           when "r"
            "rock"
           when "p"
            "paper"
           when "s"
            "scissors"
           when "l"
            "lizard"
           when "$"
            "spock"
           end
  result
end

def display_choices(player, computer)
  player = convert_choices(player)
  prompt "You chose #{player}; Computer chose #{computer}"
end

def display_results(player, computer)
  player = convert_choices(player)
  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end

def play_again
  prompt "Do you want to play again?"
  answer = ''

  loop do
    answer = gets.chomp.downcase
    break if %w(y yes n no).include?(answer)
    prompt "Invalid answer. Please type Y, Yes, N, or No"
  end
  answer
end

def display_goodbye
  prompt "Thank you for playing. Goodbye!"
end

def calculate_player_score(player, computer)
  player = convert_choices(player)
  i = 0
  while win?(player, computer)
    i += 1
    break
  end
  i
end

def calculate_computer_score(player, computer)
  player = convert_choices(player)
  i = 0
  while win?(computer, player)
    i += 1
    break
  end
  i
end

def update_score(player, computer, hash_scores)
  player = convert_choices(player)
  if win?(player, computer)
    hash_scores[:player_score] += 1
  elsif win?(computer, player)
    hash_scores[:computer_score] += 1
  end
end

def display_score(player, computer)
  prompt "You have #{player} point(s), computer has #{computer} point(s)"
end

clear_screen
display_welcome

loop do
  scores = {
              player_score: 0,
              computer_score: 0,
           }

  choice = retrieve_player_choice

  computer_choice = VALID_CHOICES.sample

  display_choices(choice, computer_choice)

  display_results(choice, computer_choice)

  player_score = calculate_player_score(choice, computer_choice)

  computer_score = calculate_computer_score(choice, computer_choice)

  update_score(player_score, computer_score, scores)

  display_score(scores[:player_score], scores[:computer_score])

  #loop to store score until it hits 5

  again = play_again
  unless again.start_with?('y')
    break
  end
end

display_goodbye
