
#Our board:

# Class Ttt_board
#   attr_accessor :board, :symbol

#   def initialize(board,symbol)
#     @board = board
#     @symbol = symbol
#   end
# end

board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  def main_board(board)
    puts "  #{board[0]}   | #{board[1]} | #{board[2]}"
    puts "----------------"
    puts "  #{board[3]}   | #{board[4]} | #{board[5]}"
    puts "----------------"
    puts "  #{board[6]}   | #{board[7]} | #{board[8]}"
  end
# end

main_board(board)

