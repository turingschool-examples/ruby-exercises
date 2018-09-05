require 'minitest/autorun'
require 'minitest/pride'
require './lib/iguana'

class IguanaTest < Minitest::Test
  def test_it_exists
    iguana = Iguana.new
    assert_instance_of Iguana, iguana
  end

  def test_it_starts_with_no_colors
    iguana = Iguana.new
    assert_equal [], iguana.colors
  end

  def test_it_can_set_colors
    iguana = Iguana.new
    iguana.colors = ["Green", "Red", "White"]
    assert_equal ["Green", "Red", "White"], iguana.colors
  end
end
