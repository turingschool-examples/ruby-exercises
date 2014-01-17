gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'teenager'

class TeenagerTest < Minitest::Test
  def test_teenager_is_sober
    teenager = Teenager.new
    refute teenager.drunk?, "Teenager is sober."
  end

  def test_teenager_has_low_tolerance
    skip
    teenager = Teenager.new
    teenager.consume_an_alcoholic_beverage
    assert teenager.drunk?, "Teenager got drunk."
  end
end
