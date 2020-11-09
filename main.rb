require './player.rb'
require './question.rb'
require './turn.rb'


def game_manager
  player1 = Player.new
  player2 = Player.new
  
  define_method :next_turn do
    Turn.new
    puts 
    puts "---------Turn#{Turn.count}----------"
    puts 

    turn_number = Turn.count % 2

    next_question = Question.new

    if turn_number == 0
      current_player = 2
    else 
      current_player = 1
    end
    puts "Player #{current_player}: What is #{next_question.x} + #{next_question.y}?"
    print "> "
    player_answer = $stdin.gets.chomp.to_i
    if player_answer == next_question.answer
      puts "Player #{current_player}: Thats right, #{next_question.x} + #{next_question.y} = #{next_question.answer}"
    else 
      puts "Player #{current_player}: Thats incorrect, #{next_question.x} + #{next_question.y} = #{next_question.answer}"
      if current_player == 1
        player1.lives -= 1
      else 
        player2.lives -= 1
      end
    end
  end 

  while player1.lives > 0 && player2.lives > 0
    puts
    puts "P1 lives: #{player1.lives}/3 vs P2 lives: #{player2.lives}/3"
    next_turn
  end

  if player1.lives == 0
    puts "Player 2 Wins! #{player2.lives} Lives remaining!"
  end

  if player2.lives == 0
    puts "Player 1 Wins! #{player1.lives} Lives remaining!"
  end

end
  
def start
  puts "Ready to play a game?"
  game_manager
end

start