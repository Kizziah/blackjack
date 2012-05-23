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

  def count
    count = 0
    @cards.each do |card|
      count = count + card # count += card
    end
    count
  end

  def bust?
    count >= 21
  end

end
