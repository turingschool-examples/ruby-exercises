gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'milk_bottle'

class MilkBottleTest < Minitest::Test
  def test_milk_bottles_start_off_full
    bottle = MilkBottle.new
    assert_equal true, bottle.full?, "The bottle should be full."
  end

  def test_spill_some_milk
    skip
    bottle = MilkBottle.new
    bottle.spill
    assert_equal false, bottle.full?, "The bottle should no longer be full."
  end
end
