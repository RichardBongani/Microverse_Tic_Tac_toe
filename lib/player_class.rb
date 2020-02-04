class Player
  def initialize
    puts "Welcome to Tic Tac Toe!"
    puts "Player one starts playing"
  end

  def get_player_info
    array = []
    2.times do |i|
      puts "Enter player's #{i + 1} name: "
      player_name = gets.chomp
      array << player_name
    end
  end
end
