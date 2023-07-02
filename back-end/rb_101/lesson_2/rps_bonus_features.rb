VALID_CHOICES = %w(rock paper scissors lizard spock)

def test_method
  prompt('test message')
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock')
end

def prompt(message)
  puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def abbreviations(abbr_choice)
  case abbr_choice.downcase
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 'sc' then 'scissors'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  end
end

prompt("Let's play RPSLS (Rock, Paper, Scissors, Lizard, Spock)")
prompt("First to 3 wins!")
puts ""

player_wins = 0
comp_wins = 0

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("'r' for rock, 'p' for paper, 'sc' for scissors,\
 'l' for lizard, and 'sp' for spock")
    choice = gets.chomp
    choice = abbreviations(choice)

    system 'clear'

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}; Computer chose #{computer_choice}")
  prompt(display_results(choice, computer_choice))

  if (display_results(choice, computer_choice)) == "You won!"
    player_wins += 1
  elsif (display_results(choice, computer_choice)) == "Computer won!"
    comp_wins += 1
  end

  prompt("The score is Player: #{player_wins}, Computer: #{comp_wins}")

  if player_wins == 3
    prompt("YOU ARE THE GRAND WINNER!")
  elsif comp_wins == 3
    prompt("Computer is the grand winner! Sorry!")
  end

  if player_wins == 3 || comp_wins == 3
    prompt("Do you want to play again?")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt("Thank you for playing. Goodbye!")
