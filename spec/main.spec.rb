require_relative "../bin/main.rb"

describe Main do
  let(:show_board) { Main.new }
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
end