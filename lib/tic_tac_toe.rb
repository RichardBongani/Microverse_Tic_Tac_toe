class TicTacToe
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
  # rubocop:enable Metrics/PerceivedComplexity
  # rubocop:enable Metrics/CyclomaticComplexity
end
