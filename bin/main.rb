#!/usr/bin/env ruby

require_relative '../lib/tic_tac_toe.rb'
require_relative '../lib/player.rb'

class Main
  attr_reader :board
  def initialize
    @play = TicTacToe.new
    @board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  end

  def board_display
    board = @board
    puts "

          #{board[0]}  |  #{board[1]} |  #{board[2]}
          ----------------
          #{board[3]}  |  #{board[4]} |  #{board[5]}
          ----------------
          #{board[6]}  |  #{board[7]} |  #{board[8]}"
  end

  def welcome_message
    puts "\n"
    puts 'Welcome to TicTacToe!'
    puts 'Player one starts playing'
    puts 'To win you need to have three identical symbols in a row, or column or diagonal'
    puts "\n"
  end

  def players_info
    loop do
      print 'Player 1 choose a symbol "X" or "O" '
      ARGV.clear
      @symbol = gets.chomp.capitalize
      break if @symbol == 'X' || @symbol == 'O'

      puts "\nPlayer 1 choose a valid symbol:"
    end
    @player_one = Player.new(@symbol)
    symbol = @symbol == 'X' ? 'O' : 'X'
    @player_two = Player.new(symbol)
  end

  def play_game(position, symbol, player)
    if @play.valid_position?(@board, position)
      @board[position] = symbol
      result = @play.winning_move?(@board)
      if result == 'Win'
        puts "#{player} won the game"
        false
      elsif result == 'Draw'
        puts "It's a draw"
        false
      end
    else
      puts "\n"
      puts 'Position is invalid, please pick a position between 0-8 that is empty:'
      puts 'Try again'
      'Invalid'
    end
  end

  def start_playing
    game_on = true
    board_display
    count = 1
    while game_on || game_on.nil?
      if count.odd?
        puts "It's Player 1's turn"
        print 'Pick a position between 0-8: '
        position = gets.chomp.to_i
        game_on = play_game(position, 'X', 'Player 1')
      else
        puts "It's Player 2's turn"
        print 'Pick a position between 0-8: '
        position = gets.chomp.to_i
        game_on = play_game(position, 'O', 'Player 2')
      end
      next if (game_on == false) || (game_on == 'Invalid')

      count += 1
      board_display
    end
  end
end

# test = Main.new
# test.welcome_message
# test.players_info
# test.start_playing
