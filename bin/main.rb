#!/usr/bin/env ruby

# TODO welcome message
puts "Welcome to TicTacToe!"
# TODO get players name
puts "Player one enter your name: "
player_one = gets.chomp
puts "Player two enter your name: "
player_two = gets.chomp
# TODO assign players their respective symbols
puts "Player one plays X and player two plays O"
# TODO create the board
board = [0,1,2,3,4,5,6,7,8]
puts " #{board[0..2]},\n #{board[3..5]},\n #{board[6..9]}"
# TODO Tell which player turn it is and ask player to choose position
puts "Player one, choose position between 1-9: "
position_p1 = gets.chomp
puts "Player two, choose position between 1-9: "
position_p2 = gets.chomp
# TODO check if it is a valid position
# if position is valid, number = player_symbol. Else check if board has empty positions.
# TODO if board has empty positions ask player to choose a valid position
# TODO check if it is a winning move or a draw.
# Else if we still having empty positions
# Ask new position to the player. If we don't check if it's a draw
# TODO if pass check repeat loop starting from show board with the new positions
# TODO if didn't pass the check show message: "You win" or "You lose"
