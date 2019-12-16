require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "empty form" do
    game = Game.new
    game.save
    refute game.valid?
  end

end
