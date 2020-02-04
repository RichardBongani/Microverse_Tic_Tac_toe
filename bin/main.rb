#!/usr/bin/env ruby
require_relative "../lib/player_class.rb"

class Main < Player
end
game = Main.new
game_on = true

while game_on
  game.get_player_info
  puts "something here"
  n = gets.chomp
end
