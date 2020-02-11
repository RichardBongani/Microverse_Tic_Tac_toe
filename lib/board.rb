require_relative "check_board.rb"

class Board
  attr_reader :board_index

  def initialize
    @board_index = [0,1,2,3,4,5,6,7,8]
  end

  def board
    puts "#{@board_index[0]}    |#{@board_index[1]}   |#{@board_index[2]}      "
    puts "-----------------"
    puts "#{@board_index[3]}    |#{@board_index[4]}   |#{@board_index[5]}      "
    puts "-----------------"
    puts "#{@board_index[6]}    |#{@board_index[7]}   |#{@board_index[8]}      "
  end

  def is_full?
    # @board_index = %w[richard] #Testing
    @board_index.all? {|element| element.is_a?(String)}
  end

  def win?
    check_winner = [[0,1,2],[3,4,5],[6,7,8],
                      [0,3,6],[2,4,7],[2,5,8],
                    [0,4,8],[2,4,6]]
    check_winner.each do |element|
      return true if element.all? {|element| element.is_a?(String)}
    end
  end

  def check(position, symbol)

end

Board.new.board
Board.new.is_full?
a = Board.new.win?
puts a
