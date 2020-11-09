class Question 
  attr_reader :answer, :x, :y

  def initialize
    @x = rand(1..20)
    @y = rand(1..20)

    @answer = x + y
  end

end

ok = Question.new
puts "What is #{ok.x} + #{ok.y}?"
puts ok.answer