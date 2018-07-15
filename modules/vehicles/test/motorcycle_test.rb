require 'minitest/autorun'
require 'minitest/pride'
require './lib/motorcycle'

class MotorCycleTest < Minitest::Test
  def setup
    @motorcycle = MotorCycle.new(2018, "silver")
  end

  def test_it_exists
    assert_instance_of MotorCycle, @motorcycle
  end

  def test_it_has_attributes
    assert_equal 2018, @motorcycle.year
    assert_equal "silver", @motorcycle.color
  end

  def test_paint
    @motorcycle.paint("green")
    assert_equal "green", @motorcycle.color
  end

  def test_num_wheels
    assert_equal 2, @motorcycle.num_wheels
  end

  def test_fuel_starts_at_zero
    assert_equal 0, @motorcycle.fuel
  end

  def test_it_can_refuel
    @motorcycle.refuel(4)
    assert_equal 4, @motorcycle.fuel
    @motorcycle.refuel(9)
    assert_equal 13, @motorcycle.fuel
  end

  def test_odometer_starts_at_zero
    assert_equal 0, @motorcycle.odometer
  end

  def test_it_cannot_drive_without_fuel
    @motorcycle.refuel(2)
    assert_equal "Not enough fuel", @motorcycle.drive(4)
    assert_equal 0, @motorcycle.odometer
  end

  def test_it_can_drive_when_it_has_fuel
    @motorcycle.refuel(9)
    assert_equal "Driving 9 miles", @motorcycle.drive(9)
    assert_equal 9, @motorcycle.odometer
  end

  def test_driving_reduces_fuel
    @motorcycle.refuel(9)
    @motorcycle.drive(2)
    assert_equal 7, @motorcycle.fuel
  end
end
