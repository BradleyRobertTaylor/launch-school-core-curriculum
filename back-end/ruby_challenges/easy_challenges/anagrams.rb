# Program takes a word and a list of possible anagrams and selects the correct
# sublist that contains the anagrams of the word.

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(word_arr)
    word_arr.select do |other_word|
      anagram?(word, other_word) && word.downcase != other_word.downcase
    end
  end

  private

  def anagram?(word1, word2)
    word1.downcase.chars.sort == word2.downcase.chars.sort
  end
end