require_relative "../lib/tic_tac_toe.rb"

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
end