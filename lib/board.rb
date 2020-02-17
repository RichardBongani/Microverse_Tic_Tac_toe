require_relative "check_board.rb"

class Board
  attr_reader :board_index

  def initialize
    @board_index = [0,1,2,3,4,5,6,7,8]
  end

  def all_equal?(array)
      array.uniq.size <= 1
  end

  def is_full?
    # @board_index = %w[richard] #Testing
    @board_index.all? {|element| element.is_a?(String)}
  end

  def is_valid?(position,symbol)
    if (@board_index[position]).is_a?(Integer)
      @board_index[position] == symbol
  end

  def win?(a)
    if all_equal?(a[0..2]) ||
      all_equal?(a[3..5])  ||
      all_equal?(a[6..8])  ||
      d = all_equal?([].push(a[0], a[3], a[6]).to_a)
      d = all_equal?([].push(a[1], a[4], a[7]).to_a)
      d = all_equal?([].push(a[2], a[5], a[8]).to_a)
      d = all_equal?([].push(a[0], a[4], a[8]).to_a)
      d = all_equal?([].push(a[2], a[4], a[6]).to_a)
          
  end

  def check(position,symbol)
    board(position)
  end

end

# Board.new.board
# Board.new.is_full?
# a = Board.new.win?
# puts a
