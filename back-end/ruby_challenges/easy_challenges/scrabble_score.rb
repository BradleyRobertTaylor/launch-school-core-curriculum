# Program that, given a word, computes the Scrabble score for that word.

class Scrabble
  attr_reader :word

  POINTS = {
    'aeioulnrst' => 1,
    'dg' => 2,
    'bcmp' => 3,
    'fhvwy' => 4,
    'k' => 5,
    'jx' => 8,
    'qz' => 10
  }

  def initialize(word)
    @word = word
  end

  def score
    return 0 if word == nil
    word_value = 0
    
    word.downcase.each_char do |char|
      POINTS.each do |letters, value|
        word_value += value if letters.include?(char)
      end
    end

    word_value
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end

