gem 'minitest', '~> 5.2'
require 'minitest/autorun'

require_relative 'light'

class LightTest < Minitest::Test
  def test_light_is_off
    light = Light.new
    refute light.on?
  end

  def test_turn_light_on
    light = Light.new
    light.turn_on
    assert light.on?
  end
end
