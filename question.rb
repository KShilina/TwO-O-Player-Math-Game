class Question
  #
  # State = variables:
  # - number1 and number2 (two random numbers between 1 and 20)
  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
  end

  #
  # Methods = behavior:
  # - generate : generate a new addition question
  def generate_question
    puts "What is the sum of #{@number1} and #{@number2}?"
  end

  # - correct_answer? ( if ture (Yes! You are correct)/ if false(Seriously? No!) )
  def correct_answer?(answer)
    @number1 + @number2 == answer
  end
end

question1 = Question.new
question1.generate
