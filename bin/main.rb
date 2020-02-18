#!/usr/bin/env ruby
require_relative '../lib/board.rb'
board_index = [0,1,2,3,4,5,6,7,8]
def board(board_index)
  @board_index = board_index
  puts "#{@board_index[0]}    |#{@board_index[1]}   |#{@board_index[2]}      "
  puts "-----------------"
  puts "#{@board_index[3]}    |#{@board_index[4]}   |#{@board_index[5]}      "
  puts "-----------------"
  puts "#{@board_index[6]}    |#{@board_index[7]}   |#{@board_index[8]}      "
end

def players
  puts "Welcome to Tic Tac Toe"
  puts "Player one start playing. Player one use X and player two use O"
  player_info = []
  2.times do |i|
    print "Player #{i+1} name: "
    player_name = gets.chomp
    player_info << player_name
    player_info << "X" if i == 0
    player_info << "O" if i == 1
  end
  return player_info
end

# TODO send information to board
# Receive and display new board
def game_state
  board([0,1,2,3,4,5,6,7,8])
  players_info = players
  game = Board.new
  game_on = true
  while game_on
    2.times do |i|
      if i == 0
        puts "#{players_info[0]}'s turn"
        puts "Pick a position: "
        position = gets.chomp.to_i
        symbol = players_info[1]
        @board_index[position] = symbol
        board(@board_index)
      else
        puts "#{players_info[2]}'s turn"
        puts "Pick a position: "
        position = gets.chomp.to_i
        symbol = players_info[3]
        @board_index[position] = symbol
        board(@board_index)
      end
      @array, game_on = game.is_valid?(position, symbol)
    end
    board(@array)
  end
end

game_state
