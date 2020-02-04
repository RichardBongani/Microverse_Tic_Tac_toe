require_relative "Board.rb"
# class Player

# end

#turns and positions for player 1 and player 2
def player_1
  board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  #player chooses a position from 0-8
  puts "Please pick a position between 0-8?"
  position_p1 = gets.chomp.to_i
  symbol  = "X"
  board[position_p1] = symbol
end

player_1