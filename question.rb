class Question 
  attr_reader :answer
  def initialize
    x = rand(1..20)
    y = rand(1..20)

    @answer = x + y
  end
end

ok = Question.new
puts ok.answer