# Using the Card class from the previous exercise, create a Deck class that contains 
# all of the standard 52 playing cards. Use the following code to start your work:

# class Deck
#   RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
#   SUITS = %w(Hearts Clubs Diamonds Spades).freeze
# end

# The Deck class should provide a #draw method to deal one card. The Deck should 
# be shuffled when it is initialized and, if it runs out of cards, it should 
# reset itself by generating a new set of 52 shuffled cards.

# deck = Deck.new
# drawn = []
# 52.times { drawn << deck.draw }
# drawn.count { |card| card.rank == 5 } == 4
# drawn.count { |card| card.suit == 'Hearts' } == 13

# drawn2 = []
# 52.times { drawn2 << deck.draw }
# drawn != drawn2 # Almost always.

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    new_deck
  end

  def draw
    new_deck if @deck.empty?
    @deck.pop
  end

  private

  def new_deck
    @deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
    @deck.shuffle!
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    face_value(rank) <=> face_value(other_card.rank)
  end

  # returns a new integer based on card rank
  def face_value(value)
    case value
    when 'Jack' then 11
    when 'Queen' then 12
    when 'King' then 13
    when 'Ace' then 14
    else value
    end
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.


