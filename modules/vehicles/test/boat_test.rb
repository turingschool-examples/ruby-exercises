require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'

class BoatTest < Minitest::Test
  def setup
    @boat = Boat.new("Salty Dog")
  end

  def test_it_exists
    assert_instance_of Boat, @boat
  end

  def test_it_has_a_name
    assert_equal "Salty Dog", @boat.name
  end

  def test_fuel_starts_at_zero
    assert_equal 0, @boat.fuel
  end

  def test_it_can_refuel
    @boat.refuel(4)
    assert_equal 4, @boat.fuel
    @boat.refuel(9)
    assert_equal 13, @boat.fuel
  end

  def test_odometer_starts_at_zero
    assert_equal 0, @boat.odometer
  end

  def test_it_cannot_drive_without_fuel
    @boat.refuel(2)
    assert_equal "Not enough fuel", @boat.drive(4)
    assert_equal 0, @boat.odometer
  end

  def test_it_can_drive_when_it_has_fuel
    @boat.refuel(9)
    assert_equal "Driving 9 miles", @boat.drive(9)
    assert_equal 9, @boat.odometer
  end

  def test_driving_reduces_fuel
    @boat.refuel(9)
    @boat.drive(2)
    assert_equal 7, @boat.fuel
  end
end
