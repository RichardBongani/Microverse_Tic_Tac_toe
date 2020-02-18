#!/usr/bin/env ruby
require_relative '../lib/tic_tac_toe.rb'

class Main
  def initialize
    @play = TicTacToe.new([0,1,2,3,4,5,6,7,8])
  end

  def welcome_message
    puts "\n"
    puts "Welcome to TicTacToe!"
    puts "Player one starts playing"
    puts "To win you need to have three identical symbols in a row"
    puts "\n"
  end

  def players_info
    @info = []
    2.times do |i|
      print "Enter player #{i + 1} name: "
      name = gets.chomp
      print "Enter player #{i + 1} symbol: "
      symbol = gets.chomp
      @info << name
      @info << symbol
      puts "\n"
    end
    p @info
  end

  def start_playing
    game_on = true
    @play.draw_board
    count = 1
    while game_on || game_on.nil?
      if count %2 != 0
        puts "It's #{@info[0]}'s turn"
        print "Pick a position: "
        position = gets.chomp.to_i
        symbol = @info[1]
        game_on = @play.play_game(position, @info[1], @info[0])
        next if game_on == false or game_on == "Invalid"
        @play.draw_board
      else
        puts "It's #{@info[2]}'s turn"
        print "Pick a position: "
        position = gets.chomp.to_i
        symbol = @info[3]
        game_on = @play.play_game(position, @info[3], @info[2])
        next if game_on == false or game_on == "Invalid"
        @play.draw_board
      end
      count += 1
    end
  end

end

game = Main.new
game.welcome_message
game.players_info
game.start_playing
