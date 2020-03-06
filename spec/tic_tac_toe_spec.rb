require_relative '../bin/main.rb'
require_relative "../lib/tic_tac_toe.rb"
require_relative "../lib/player.rb"

describe TicTacToe do
  let(:tictac_test){TicTacToe.new}
  it "returns a boolean(true/false) after checking if position is valid" do
    expect(tictac_test.valid_position?([0..8],0)).to be(true).or be(false)
    expect(tictac_test.valid_position?([0..8],1)).to be(true).or be(false)
  end

  it "checks for winning moves" do
    expect(tictac_test.all_equal?(["X","X","X"])).to be(true)
    expect(tictac_test.all_equal?(["O","X","X"])).to be(false)
  end

  it "pass values to all_equal method" do
    expect(tictac_test.winning_move?(%w[X X X O X O X O X])).to eq("Win")
    expect(tictac_test.winning_move?(%w[X O O O X X X X O])).to eq("Draw")
  end
end

describe Main do
  let(:show_board){Main.new}
  it "displays the board" do
    board = @board = [0,1,2,3,4,5,6,7,8]
    expect{show_board.board_display}.to output(
    puts"\n
      #{board[0]}  |  #{board[1]} |  #{board[2]}
      ----------------
      #{board[3]}  |  #{board[4]} |  #{board[5]}
      ----------------
      #{board[6]}  |  #{board[7]} |  #{board[8]}"
    ).to_stdout
  end
end

# describe Main do
#   start_playing = Main.new
#   it "checks if the board is displaying" do
#     expect(start_playing.board_display())
#   end
# end
