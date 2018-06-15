gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'leather_chair'

class LeatherChairTest < Minitest::Test

  def test_a_new_chair_is_not_faded
    chair = LeatherChair.new
    refute chair.faded?, "New chairs are NOT faded."
  end

  def test_exposing_a_chair_to_sunlight_makes_it_fade
    skip
    chair = LeatherChair.new
    chair.expose_to_sunlight
    assert chair.faded?, "Exposed chairs are faded."
  end

end
