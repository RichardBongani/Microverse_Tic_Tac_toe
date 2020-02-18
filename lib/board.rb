require_relative "check_board.rb"

class Board
  attr :board

  def initialize
    @board = [0,1,2,3,4,5,6,7,8]
  end

  def all_equal?(array)
      array.uniq.size <= 1
  end

  def is_full?(board)
    return board.all? {|element| element.is_a?(Integer)}
  end

  def is_valid?(position,symbol)
    if (@board[position]).is_a? Integer
      @board[position] = symbol
      return @board 
    else
      puts "Invalid position"
    end
  end

  def win?(a)
    if all_equal?(a[0..2]) ||
      all_equal?(a[3..5])  ||
      all_equal?(a[6..8])  #||
      d = all_equal?([].push(a[0], a[3], a[6]).to_a) ||
      d = all_equal?([].push(a[1], a[4], a[7]).to_a) ||
      d = all_equal?([].push(a[2], a[5], a[8]).to_a) ||
      d = all_equal?([].push(a[0], a[4], a[8]).to_a) ||
      d = all_equal?([].push(a[2], a[4], a[6]).to_a)
      return true
    else
      return false
    end
  end

end
