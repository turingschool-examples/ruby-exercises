gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'floor'

class FloorTest < Minitest::Test
  def test_floors_are_dirty_by_default
    floor = Floor.new
    assert_equal true, floor.dirty?, "The floor should be dirty."
  end

  def test_washing_a_floor_cleans_it
    skip
    floor = Floor.new
    floor.wash
    assert_equal false, floor.dirty?, "The floor should be clean."
  end
end
