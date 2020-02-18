class TicTacToe
  attr_accessor :board
  def initialize(board)
    @board = board
  end

  def draw_board
    b = @board
    print "\n
    #{b[0]}  |  #{b[1]}  |  #{b[2]}
    ---------------
    #{b[3]}  |  #{b[4]}  |  #{b[5]}
    ---------------
    #{b[6]}  |  #{b[7]}  | #{b[8]}
    \n
    "
  end

  def is_position_valid?(board, position)
    board[position].is_a?(Integer) ? true : false
  end

  def all_equal?(arr)
    arr.uniq.size <= 1
  end

  def is_winning_move?(board)
    a = board
    if all_equal?(board[0..2]) ||
       all_equal?(board[3..5]) ||
       all_equal?(board[6..8]) ||
       d = all_equal?([].push(a[0], a[3], a[6]).to_a) ||
       d = all_equal?([].push(a[1], a[4], a[7]).to_a) ||
       d = all_equal?([].push(a[2], a[5], a[8]).to_a) ||
       d = all_equal?([].push(a[0], a[4], a[8]).to_a) ||
       d = all_equal?([].push(a[2], a[4], a[6]).to_a)
       return "Win"
    else
      draw = board.count { |n| n.is_a? String }
      return "Draw" if draw >= 9
    end
  end

  def play_game(position, symbol, player)
    if is_position_valid?(@board, position)
      @board[position] = symbol
      result = is_winning_move?(@board)
      if result == "Win"
        puts "#{player} won the game"
        return false
      elsif result == "Draw"
        puts "It's a draw"
        return false
      end
    else
      puts "Invalid position. Please enter a valid position."
      game_on = "Invalid"
    end
  end
end