class Game
  attr_accessor :answer

  def start
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')

    cumulator = 1

    while (@player1.lives && @player2.lives) > 0 do
      @question = Question.new

      if cumulator % 2 == 0
        puts "Player 2: #{@question.ask_question}"
      else
        puts "Player 1: #{@question.ask_question}"
      end

      answer = gets.chomp

      if @question.answer(answer) == false
        if cumulator % 2 == 0
          @player2.removes_life
          puts "Player 2: Seriously? NO!"
        else
          @player1.removes_life
          puts "Player 1: Seriously? NO!"
        end

      else
        puts "Yes! You are correct"
      end

      puts "Player 1 : #{@player1.lives}/3 vs Player 2 : #{@player2.lives}/3"

      if (@player1.lives > 0) && (@player2.lives > 0)
        puts "--NEW TURN--"
        elsif cumulator % 2 == 0
          puts "Player 1 win the score of #{@player1.lives} / 3"
          break
        else 
          puts "Player 2 win the score of #{@player2.lives} / 3"
          break
        end
  
        cumulator = cumulator + 1
      end

    puts "--GAME OVER--"
  end
end
