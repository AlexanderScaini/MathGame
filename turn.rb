class Turn 
  attr_accessor :count

  def initialize
    @count = 1
  end
  
end

new_turn = Turn.new
puts new_turn.count
new_turn.count += 1
puts new_turn.count
new_turn.count += 1
puts new_turn.count

