class TicTacToe
  attr_accessor :board
  def initialize(board)
    @board = board
  end

  def draw_board
    puts "\n"
    puts "#{@board[0]}  |#{@board[1]} |#{@board[2]}"
    puts '---------'
    puts "#{@board[3]}  |#{@board[4]} |#{@board[5]}"
    puts '---------'
    puts "#{@board[6]}  |#{@board[7]} |#{@board[8]}"
    puts "\n"
  end

  def valid_position?(board, position)
    board[position].is_a?(Integer) ? true : false
  end

  def all_equal?(arr)
    arr.uniq.size <= 1
  end

  # rubocop:disable Metrics/PerceivedComplexity
  # rubocop:disable Metrics/CyclomaticComplexity
  def winning_move?(board)
    a = board
    if all_equal?(board[0..2]) ||
       all_equal?(board[3..5]) ||
       all_equal?(board[6..8]) ||
       all_equal?([].push(a[0], a[3], a[6]).to_a) ||
       all_equal?([].push(a[1], a[4], a[7]).to_a) ||
       all_equal?([].push(a[2], a[5], a[8]).to_a) ||
       all_equal?([].push(a[0], a[4], a[8]).to_a) ||
       all_equal?([].push(a[2], a[4], a[6]).to_a)
      'Win'
    else
      draw = board.count { |n| n.is_a? String }
      return 'Draw' if draw >= 9
    end
  end
  # rubocop:enable Metrics/PerceivedComplexity Metrics/CyclomaticComplexity
  # rubocop:enable Metrics/CyclomaticComplexity

  def play_game(position, symbol, player)
    if valid_position?(@board, position)
      @board[position] = symbol
      result = winning_move?(@board)
      if result == 'Win'
        draw_board
        puts "#{player} won the game"
        false
      elsif result == 'Draw'
        puts "It's a draw"
        false
      end
    else
      puts "\n"
      puts 'Position is invalid, please pick position between 0-8 that is empty:'
      puts 'Try again'
    end
  end
end
