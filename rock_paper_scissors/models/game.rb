class Game

  attr_accessor :player, :computer

  def initialize (player, computer)
    @player = player
    @computer = computer
  end



  def who_wins()

    if @computer == "rock" && @player == "scissors"
      return "Computer wins"
    elsif @computer == "rock" && @player == "paper"
      return "You win"
    elsif @computer == "rock" && @player == "rock"
      return "Draw"
    elsif @computer == "paper" && @player == "paper"
      return "Draw"
    elsif @computer == "paper" && @player == "scissors"
      return "You win"
    elsif @computer == "paper" && @player == "rock"
      return "Computer wins"
    elsif @computer == "scissors" && @player == "paper"
      return "Computer wins"
    elsif @computer == "scissors" && @player == "rock"
      return "You win"
    elsif @computer == "scissors" && @player == "scissors"
      return "Draw"
    end
  end


end