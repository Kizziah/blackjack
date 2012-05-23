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
    puts 'Dealers cards are ' + cards.to_s
  end
  # def player_numbers
  #      cards.to_i
  #    end
  #    def dealer_numbers
  #      cards.to_i
  # end


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


# def bust
#     @player_hand >= 22

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

player_hand.display



puts 'Would you like to stay or hit'

reply = ''
while reply != 'stay'
  reply = gets.chomp
  if reply == 'hit'

    player_hand.hit(blackjack.card)
    player_hand.display


  end
end
puts
puts
puts 'Dealers Turn'

dealer_hand.
  dealer_hand.hit(blackjack.card)
dealer_hand.
  dealer_hand.

if dealer_hand.display.to_i > 23
  puts 'Dealer Bust '


  # def bust
  #
