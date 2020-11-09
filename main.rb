require './player.rb'
require './question.rb'
require './turn.rb'


def game_manager
  player1 = Player.new
  player2 = Player.new
  
end
  
def start
  puts "Ready to play a game?"
  game_manager
end

start