#!/usr/bin/env ruby
require_relative "lib/Board.rb"
require_relative "lib/check_board.rb"
# TODO: welcome message
puts 'Welcome to TicTacToe!'
puts 'Player one plays X and player two plays O. X starts playing'
# TODO: get players name
puts 'Player one enter your name: '
player_one = gets.chomp

puts 'Player two enter your name: '
player_two = gets.chomp
# Repetative loop:
game = true
while game
  # TODO: create a class for the board and add a method defition
  puts " #{board[0..2]},\n #{board[3..5]},\n #{board[6..8]}"
  # TODO: creating a method for player position
  puts "Player one #{player_one}, choose position between 0-8: "
  position_p1 = gets.chomp
  puts "You choose position #{position_p1}"
  puts "Player two #{player_two}, choose position between 0-8: "
  position_p2 = gets.chomp
  puts "You choose position #{position_p2}"
  # TODO: check if players are entering valid positions if position is invalid
end

checking(board)
