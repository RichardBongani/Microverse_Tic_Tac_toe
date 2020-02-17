#!/usr/bin/env ruby
require_relative '../lib/board.rb'

def board
  puts "#{@board_index[0]}    |#{@board_index[1]}   |#{@board_index[2]}      "
  puts "-----------------"
  puts "#{@board_index[3]}    |#{@board_index[4]}   |#{@board_index[5]}      "
  puts "-----------------"
  puts "#{@board_index[6]}    |#{@board_index[7]}   |#{@board_index[8]}      "
end

def players
  puts "Welcome to Tic Tac Toe"
  2.times do |i|
    print "Player #{i+1} name:"
    player_name = gets.chomp
  end
end




def game_state
  game = Board.new
  game_on = true
  while game_on
    print "Player one, pick position: "
    position = gets.chomp.to_i
    print "Player two, pick position: "
    position_two = gets.chomp.to_i
    
  end
end
