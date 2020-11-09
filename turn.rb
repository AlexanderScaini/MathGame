class Turn 
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.current
    if @@count % 2 == 0
      "Player 2" 
    else 
      "Player 1"
    end
  end 
end
