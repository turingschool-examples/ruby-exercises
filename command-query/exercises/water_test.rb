gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'water'

class WaterTest < Minitest::Test
  def test_water_is_room_temperature
    water = Water.new
    assert_equal 295, water.temperature # measured in Kelvin
  end

  def test_heating_water
    skip
    water = Water.new
    water.heat
    assert_equal 296, water.temperature

    20.times { water.heat }
    assert_equal 316, water.temperature
  end
end
