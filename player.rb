class Player
  attr_reader :name, :number_of_lives
  # Define the Player class with two attributes: name and number_of_lives

  def initialize(name)
    @name = name
    @number_of_lives = 3
    # Initialize a new Player instance with a name provided as an argument
    # Set the number_of_lives to 3 initially
  end

  def decrease_live
    @number_of_lives -= 1
    # Decrease the number_of_lives by 1 when called
  end
end


