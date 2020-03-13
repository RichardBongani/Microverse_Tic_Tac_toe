require_relative '../lib/player.rb'
require_relative '../bin/main.rb'

describe Main do
  let(:show_board) { Main.new }
  let(:player) { Player.new }
  it 'displays the board' do
    board = @board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    expect { show_board.board_display }.to output(
      (puts "

      #{board[0]}  |  #{board[1]} |  #{board[2]}
      ----------------
      #{board[3]}  |  #{board[4]} |  #{board[5]}
      ----------------
      #{board[6]}  |  #{board[7]} |  #{board[8]}"
      )
    ).to_stdout
  end

  it 'checks if player one picked an invalid symbol' do
    expect(show_board.players_info).to be_a(Object)
  end

  it 'receives player, symbol and position to play game' do
    expect(show_board.play_game(0, 'X', 'player one')).to be_a(Object)
  end

  it 'runs a loop to play the game' do
    expect(show_board.start_playing).to be(nil)
  end
end
