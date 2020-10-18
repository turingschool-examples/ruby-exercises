gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'light'

class LightTest < Minitest::Test
  def test_light_is_off
    light = Light.new
    assert_equal false, light.on?
  end

  def test_turn_light_on
    skip
    light = Light.new
    light.turn_on
    assert_equal true, light.on?
  end
end
