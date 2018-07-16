require 'minitest/autorun'
require 'minitest/pride'
require './lib/motorcycle'

class MotorCycleTest < Minitest::Test
  def setup
    @motorcycle = MotorCycle.new(2007,"blue")
  end

  def test_it_exists
    assert_instance_of MotorCycle, @motorcycle
  end

  def test_it_has_attributes
    assert_equal 2007, @motorcycle.year
    assert_equal "blue", @motorcycle.color
  end

  def test_it_can_be_painted
    @motorcycle.paint("green")
    assert_equal "green", @motorcycle.color
  end

  def test_it_has_two_wheels
    assert_equal 2, @motorcycle.num_wheels
  end

  def test_odometer_starts_at_zero
    assert_equal 0, @motorcycle.odometer
  end

  def test_when_it_drives_the_odometer_is_updated
    @motorcycle.drive(5)
    @motorcycle.drive(17)
    assert_equal 22, @motorcycle.odometer
  end
end
