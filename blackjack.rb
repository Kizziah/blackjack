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
