# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
SUITS = %w( H D C S )
VALUES = %w( 2 3 4 5 6 7 8 9 10 Jack Queen King Ace )

def prompt(msg)
  puts '=> ' + msg
end

def deal_cards
  hand = []
  2.times { hand << VALUES.sample }
  hand
end

def total_cards(cards)
  sum = 0
  values = cards

  cards.each do |value|
    if value == 'Ace'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

prompt "Welcome to Twenty-One"

computer_hand = deal_cards

player_hand = deal_cards

prompt "Computer has #{computer_hand[0]} and uknown card"
prompt "Player has #{player_hand[0]} and #{player_hand[1]}"

prompt "(H)it or (S)tay?"
player_turn = gets.chomp

if player_turn == 'h'
  player_hand << VALUES.sample
end

p player_hand
p total_cards(player_hand)











