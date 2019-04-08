require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  attr_reader :game

  def setup
    @game = Game.new("rock", "scissor" )
  end

  def test_play_game()
    assert_equal("Rock wins", @game.play_game())
  end

end
