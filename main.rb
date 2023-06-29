# import other classes
require './game'
require './player'
require './question'

puts 'Welcome to Ruby Math Game! This game requires two players.'
puts "Enter Player 1's name"
player1_name = gets.chomp # Get the name of Player 1 from the user
puts "Enter Player 2's name"
player2_name = gets.chomp # Get the name of Player 2 from the user

player1 = Player.new(player1_name) # Create a new instance of Player 1 with the provided name
player2 = Player.new(player2_name) # Create a new instance of Player 2 with the provided name

game = Game.new(player1, player2) # Create a new instance of the Game class with Player 1 and Player 2
game.start_the_game # Start the game
