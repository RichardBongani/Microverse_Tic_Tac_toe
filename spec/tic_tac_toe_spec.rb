require_relative '../lib/tic_tac_toe.rb'

describe TicTacToe do
  let(:tictac_test) { TicTacToe.new }
  it 'returns true after checking if position is valid', positive: true do
    expect(tictac_test.valid_position?((0..8).to_a, 0)).to be(true)
  end

  it 'returns false after checking if position is valid', negative: true do
    expect(tictac_test.valid_position?([0, 1, 2, 'X', 4, 5, 6, 7, 8], 3)).to be(false)
  end

  it 'checks for X winning moves', positive: true do
    expect(tictac_test.all_equal?(%w[X X X])).to be(true)
  end

  it 'checks for loosing moves for X', negative: true do
    expect(tictac_test.all_equal?(%w[O X X])).to be(false)
  end

  it 'checks for O winning move', positive: true do
    expect(tictac_test.all_equal?(%w[O O O])).to be(true)
  end

  it 'checks for loosing moves for O', negative: true do
    expect(tictac_test.all_equal?(%w[O O X])).to be(false)
  end

  it 'checks if we have a winning move', positive: true do
    expect(tictac_test.winning_move?(%w[X X X O X O X O X])).to eq('Win')
  end

  it 'checks if it is a draw', negative: true do
    expect(tictac_test.winning_move?(%w[X O O O X X X X O])).to eq('Draw')
  end
end
