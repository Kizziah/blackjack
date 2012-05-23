class Hand
  def initialize(card_1, card_2)
    @cards = [card_1, card_2]
  end

  def cards
    @cards
  end

  def player_display
    puts 'Your hand is ' + cards.to_s
  end

  def dealer_display
    puts 'Dealer shows ' + cards.to_s
  end

  def hit(card)
    @cards << card
  end

end


class Blackjack

  def initialize
    @dealer_hand = Hand.new(card, card)
    @player_hand = Hand.new(card, card)
  end

  def player_hand
    @player_hand
  end

  def dealer_hand
    @dealer_hand
  end

  def card
    1 + rand(12)
  end


end

# class Results


# private
#
# def bust?(hand)
#   hand > 21
# end
#
# def player_lose?
#   @dealer_hand >=  @player_hand
# end
#
# def blackjack?
#   @player_hand == 21
# end
#
# end



puts "=============="
puts "Blackjack"
puts "=============="
puts



puts 'Good luck press enter to recieve your hand'
input = gets.chomp
blackjack = Blackjack.new

player_hand = blackjack.player_hand
dealer_hand = blackjack.dealer_hand

player_hand.player_display


puts 'Would you like to stay or hit'

reply = ''
while reply != 'stay'
  reply = gets.chomp
  if reply == 'hit'

    player_hand.hit(blackjack.card)
    player_hand.player_display

  end
end
puts
puts 'Dealers turn'
dealer_hand.dealer_display
dealer_hand.hit(blackjack.card)
dealer_hand.dealer_display

