# Create an object-oriented number guessing class for numbers in 
# the range 1 to 100, with a limit of 7 guesses per game.

class Player
  attr_accessor :chances, :guess
  attr_reader :high, :low

  def initialize(low, high)
    @chances = Math.log2(high - low).to_i + 1
    @guess = nil
    @low = low
    @high = high
  end

  def get_guess
    guess = ''
    loop do
      print "Enter a number between #{low} and #{high}: "
      guess = gets.chomp.to_i
      break if (low..high).include?(guess)
      print "Invalid guess. "
    end
    @guess = guess
  end

  def chances_reset
    @chances = Math.log2(high - low).to_i + 1
  end
end

class GuessingGame
  attr_accessor :answer 
  attr_reader :player

  def initialize(low, high)
    @answer = (low..high).to_a.sample
    @player = Player.new(low, high)
  end

  def display_guesses
    puts "You have #{player.chances} guesses remaining."
  end

  def no_more_chances?
    return true if player.chances == 0
    false
  end

  def compare_guess
    if player.guess > answer
      puts "Your guess is too high."
    elsif player.guess < answer
      puts "Your guess is too low."
    else
      puts "That's the number!"
    end
  end

  def reset
    self.answer = (player.low..player.high).to_a.sample
    player.chances_reset
  end

  def win_or_lose
    if you_win?
      puts "You won!"
    elsif no_more_chances?
      puts "You have no more guesses. You lost!"
    end
  end

  def you_win?
    player.guess == answer
  end

  def play
    reset
    loop do
      display_guesses
      player.get_guess
      player.chances -= 1
      compare_guess
      puts ""
      win_or_lose
      break if no_more_chances? || you_win?
    end
  end
end

game = GuessingGame.new(1, 100)
game.play



