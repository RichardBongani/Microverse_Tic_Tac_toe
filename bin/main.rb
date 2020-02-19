#!/usr/bin/env ruby

require_relative '../lib/tic_tac_toe.rb'

class Main
  def initialize
    @play = TicTacToe.new([0, 1, 2, 3, 4, 5, 6, 7, 8])
  end

  def welcome_message
    puts "\n"
    puts 'Welcome to TicTacToe!'
    puts 'Player one starts playing'
    puts 'To win you need to have three identical symbols in a row, or column or diagonal'
    puts "\n"
  end

  def players_info
    @info = []
    i = 0
    loop do
      print " Player #{i + 1} enter name:"
      name = gets.chomp.capitalize()
      @info << name
      print " #{name} pick a symbol \"X\" or \"O\" "
      symbol = gets.chomp.capitalize()
      @info << symbol
      i +=1 
      if i == 2
        break
      end
    end
  end

  def start_playing
    game_on = true
    @play.draw_board
    count = 1
    while game_on || game_on.nil?
      if count.odd?
        puts "It's #{@info[0]}'s turn"
        print 'Pick a position: '
        position = gets.chomp.to_i
        game_on = @play.play_game(position, @info[1], @info[0])
      else
        puts "It's #{@info[2]}'s turn"
        print 'Pick a position: '
        position = gets.chomp.to_i
        game_on = @play.play_game(position, @info[3], @info[2])
      end

      next if (game_on == false) || (game_on == 'Invalid')

      @play.draw_board
      count += 1
    end
  end
end

game = Main.new
game.welcome_message
game.players_info
game.start_playing
