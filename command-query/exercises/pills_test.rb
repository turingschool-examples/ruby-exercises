gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pills'

class PillsTest < Minitest::Test
  def test_a_bottle_has_60_pills
    pills = Pills.new
    assert_equal 60, pills.count
  end

  def test_popping_a_pill
    skip
    pills = Pills.new
    pills.pop
    assert_equal 59, pills.count
  end

  def test_popping_more_than_one_pill
    skip
    pills = Pills.new
    pills.pop
    pills.pop
    pills.pop
    assert_equal 57, pills.count
  end
end
