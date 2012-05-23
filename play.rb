require 'blackjack'
require 'hand'

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
    puts player_hand.count
    if player_hand.bust?
      puts 'Player Busts Dealer wins'
      puts 'Please play again'
      exit
    end

  end
end
puts
puts 'Dealers turn'
dealer_hand.dealer_display
if dealer_hand.count <= 15
  dealer_hand.hit(blackjack.card)
end

dealer_hand.dealer_display

puts dealer_hand.count
if dealer_hand.bust?
  puts 'Dealer busts Player wins'
exit
end

 if dealer_hand.count >= player_hand.count
   puts 'Dealer Wins'
 elsif
   puts 'Player Wins'
 end
