# import other classes
require './player'
require './question'

# The main logic goes here
class Game
  def initialize(player1, player2)
    @players = [player1, player2] # Store the players in an array
    @player_index = 0 # Keep track of the current player's index
    @current_player = @players[@player_index] # Set the current player
  end

  def start_the_game
    loop do
      puts '--- NEW TURN ---'
      question = ask_question # Generate a new question

      puts "#{@current_player.name}, question for you: #{question.generate_question}"
      answer = gets.chomp.to_i # Get the answer from the current player

      if question.correct_answer?(answer)
        puts 'Yes, you are correct!'
      else
        puts 'Seriously, No!'
        @current_player.decrease_live # Decrease the current player's lives
      end

      display_score # Display the current score of all players

      break if game_over? # Check if the game is over

      switch_player # Switch to the next player
    end

    announce_winner # Announce the winner at the end of the game
  end

  def ask_question
    Question.new # Generate a new question object
  end

  def display_score
    player_info = ''
    @players.each_with_index do |player, index|
      player_info += if index == @players.length - 1
                       "#{player.name}: #{player.number_of_lives}/3 "
                     else
                       "#{player.name}: #{player.number_of_lives}/3 VS "
                     end
    end
    puts player_info # Display the score of each player
  end

  def game_over?
    @players.any? { |player| player.number_of_lives <= 0 } # Check if any player has no lives remaining
  end

  def switch_player
    @player_index = (@player_index + 1) % @players.length # Update the player index
    @current_player = @players[@player_index] # Set the current player to the next player
  end

  def announce_winner
    winner = @players.find { |player| player.number_of_lives > 0 } # Find the player with remaining lives

    puts 'Game Over!'
    puts "#{winner.name} wins with a score of #{winner.number_of_lives}/3." # Display the winner's name and score
  end
end
