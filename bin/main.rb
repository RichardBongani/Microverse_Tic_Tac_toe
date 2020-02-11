#!/usr/bin/env ruby
require_relative '../lib/board.rb'
player_one = "X"
player_two = "O"



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
