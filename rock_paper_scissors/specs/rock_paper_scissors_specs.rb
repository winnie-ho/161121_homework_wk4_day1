require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/rock_paper_scissors'

class TestRockPaperScissors < Minitest::Test

  def setup
    @game1 = Game.new("paper", "rock")
    @game2 = Game.new("scissors", "rock")
    @game3 = Game.new("rock", "rock")

  end


  def test_computer_play
    @game1.computer_play()
    assert_equal("rock"||"paper"||"scissors", @game1.computer)
  end

  def test_who_wins__player
    assert_equal("You win", @game1.who_wins)
  end

  def test_who_wins__computer
    assert_equal("Computer wins", @game2.who_wins)
  end

  def test_who_wins__draw
    assert_equal("Draw", @game3.who_wins)
  end











end