class Question
  attr_reader :number1, :number2

  # Define the Question class with two attributes: number1 and number2

  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    # Initialize a new Question instance
    # Set number1 and number2 to random numbers between 1 and 20
  end

  def generate_question
    "What is the sum of #{@number1} and #{@number2}?"
    # Generate a question by combining the numbers in a string
  end

  def correct_answer?(answer)
    @number1 + @number2 == answer
    # Check if the provided answer is correct by comparing it to the sum of number1 and number2
  end
end
