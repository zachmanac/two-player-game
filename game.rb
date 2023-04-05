class Game
  attr_accessor :player1, :player2, :current_player, :scoreboard

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @scoreboard = Scoreboard.new(player1, player2)
  end

  def start_game
    puts "Player 1: #{player1.name} vs Player 2: #{player2.name}"

    while true
    ask_question

    check_lives
    
    if current_player.lives == 0
      break
    end

    next_turn
    
    scoreboard.scoreboard

    end
  end
  
  
  def ask_question
    question = Question.new
    puts "#{current_player.name}: What is #{question.generate_question}"
    answer = gets.chomp.to_i

    if answer == question.answer
      current_player.update_score
      puts "Correct #{current_player.name}!"
    else
      current_player.update_lives
      puts "Wrong #{current_player.name}!"
    end
  end

  def check_lives
    if current_player.lives == 0
      end_game
    end
  end

  def next_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
    puts "-------  NEXT TURN  -------"
  end

  def end_game
    if @current_player == @player1
      winner = @player2
    else
      winner = @player1
    end
    puts "#{winner.name} is the winner with a score of #{winner.score}/3!\n----- GAME OVER -----\n"
  end

end