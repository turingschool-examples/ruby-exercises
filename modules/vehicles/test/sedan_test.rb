require 'minitest/autorun'
require 'minitest/pride'
require './lib/sedan'

class SedanTest < Minitest::Test
  def setup
    @sedan = Sedan.new(2007,"blue")
  end

  def test_it_exists
    assert_instance_of Sedan, @sedan
  end

  def test_it_has_attributes
    assert_equal 2007, @sedan.year
    assert_equal "blue", @sedan.color
  end

  def test_it_can_be_painted
    @sedan.paint("green")
    assert_equal "green", @sedan.color
  end

  def test_it_has_four_wheels
    assert_equal 4, @sedan.num_wheels
  end

  def test_odometer_starts_at_zero
    assert_equal 0, @sedan.odometer
  end

  def test_when_it_drives_the_odometer_is_updated
    @sedan.drive(5)
    @sedan.drive(17)
    assert_equal 22, @sedan.odometer
  end
end
