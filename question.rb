class Question
  attr_accessor :answer

  def initialize
    @answer = nil
  end

  def generate_question
    num1 = rand(1..10)
    num2 = rand(1..10)

    @answer = num1 + num2
    
    return q_string = "#{num1} + #{num2} = ?"

  end

end