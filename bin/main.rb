#!/usr/bin/env ruby

# TODO: welcome message
puts 'Welcome to TicTacToe!'
# TODO: get players name
puts 'Player one enter your name: '
player_one = gets.chomp

puts 'Player two enter your name: '
player_two = gets.chomp

# Repetative loop:
game = true
while game
  # TODO: create a class for the board and add a method defition
  board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  puts " #{board[0..2]},\n #{board[3..5]},\n #{board[6..8]}"
  # TODO: creating a method for player position
  puts 'Player one #{player_one}, choose position between 0-8: '
  position_p1 = gets.chomp
  puts 'Player two #{player_two}, choose position between 0-8: '
  position_p2 = gets.chomp
  puts 'Player one plays X and player two plays O'
  # TODO: check if players are entering valid positions if position is invalid && board still contains empty positions, ask player for a new position
  # TODO create one method to check if player wins.
  # TODO check if it a draw
  # TODO repeat same conditions to next player
end
