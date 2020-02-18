#!/usr/bin/env ruby
# require_relative '../lib/board.rb'
# board_index = [0,1,2,3,4,5,6,7,8]
# def board(board)
#   @board = board
#   puts "\n"
#   puts "#{@board[0]}    |#{@board[1]}   |#{@board[2]}      "
#   puts "-----------------"
#   puts "#{@board[3]}    |#{@board[4]}   |#{@board[5]}      "
#   puts "-----------------"
#   puts "#{@board[6]}    |#{@board[7]}   |#{@board[8]}      "
# end
#
# def players
#   puts "Welcome to Tic Tac Toe"
#   puts "Player one start playing. Player one use X and player two use O"
#   player_info = []
#   2.times do |i|
#     print "Player #{i+1} name: "
#     player_name = gets.chomp
#     player_info << player_name
#     player_info << "X" if i == 0
#     player_info << "O" if i == 1
#   end
#   return player_info
# end
#
# # TODO send information to board
# # Receive and display new board
# def game_state
#   board([0,1,2,3,4,5,6,7,8])
#   players_info = players
#   game = Board.new
#   game_on = true
#   while game_on
#     2.times do |i|
#       if i == 0
#         puts "#{players_info[0]}'s turn"
#         puts "Pick a position: "
#         position = gets.chomp.to_i
#         symbol = players_info[1]
#         @board[position] = symbol
#         board(@board)
#       else
#         puts "#{players_info[2]}'s turn"
#         puts "Pick a position: "
#         position = gets.chomp.to_i
#         symbol = players_info[3]
#         @board[position] = symbol
#         board(@board)
#       end
#       @array = game.is_valid?(position, symbol)
#     end
#     board(@array)
#   end
# end
#
# game_state
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
