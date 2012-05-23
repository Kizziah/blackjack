class Blackjack 

def initialize deal

@deal1 = deal1
@deal2 = deal2
@deal3 = deal3
@deal4 = deal4
@deal5 = deal5
@deal6 = deal6 
@deal7 = deal7
@deal8 = deal8 

end

def deal
  @deal1 = 1 + rand(12)
  @deal2 = 1 + rand(12)
  puts 'players hand is ' +  @deal1 +  ' and ' +  @deal2 
  
  @deal3 = 1 + rand(12)
  @deal4 = 1 + rand(12)
puts 'dealer shows ' + @deal3 
dealer = @deal3 + @deal4 

  
  hand = @deal1 + @deal2 
  reply = gets.chomp
   if reply == 'hit'
  @deal3 = 1 + rand(12)
  bust = hand + @deal3 
if bust >= 21
  puts ' BUST please play again'
end
if reply == 'stand'
  sdealer = dealer + (1 + rand(12))
end
if sdealer >= 22
  puts 'Congrats your a winner'
end
if sdealer >= bust
  puts 'Dealer win please play again'
elsif puts 'Congrats your a winner'

end
end

end
end

puts Blackjack.deal