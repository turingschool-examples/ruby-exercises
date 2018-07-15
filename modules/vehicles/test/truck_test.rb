require 'minitest/autorun'
require 'minitest/pride'
require './lib/truck'

class TruckTest < Minitest::Test
  def setup
    @truck = Truck.new(2007,"blue")
  end

  def test_it_exists
    assert_instance_of Truck, @truck
  end

  def test_it_has_attributes
    assert_equal 2007, @truck.year
    assert_equal "blue", @truck.color
  end

  def test_num_wheels
    assert_equal 4, @truck.num_wheels
  end

  def test_cargo_starts_empty_by_default
    assert_equal [], @truck.cargo
  end

  def test_it_can_come_with_cargo
    cargo = ["Tools", "Snowboard", "Tent"]
    truck = Truck.new(2007, "blue", cargo)
    assert_equal cargo, truck.cargo
  end

  def test_load_cargo
    @truck.load_cargo("Tools")
    @truck.load_cargo("Snowboard")
    @truck.load_cargo("Tent")
    assert_equal ["Tools", "Snowboard", "Tent"], @truck.cargo
  end

  def test_fuel_starts_at_zero
    assert_equal 0, @truck.fuel
  end

  def test_it_can_refuel
    @truck.refuel(4)
    assert_equal 4, @truck.fuel
    @truck.refuel(9)
    assert_equal 13, @truck.fuel
  end

  def test_odometer_starts_at_zero
    assert_equal 0, @truck.odometer
  end

  def test_it_cannot_drive_without_fuel
    @truck.refuel(2)
    assert_equal "Not enough fuel", @truck.drive(4)
    assert_equal 0, @truck.odometer
  end

  def test_it_can_drive_when_it_has_fuel
    @truck.refuel(9)
    assert_equal "Driving 9 miles", @truck.drive(9)
    assert_equal 9, @truck.odometer
  end

  def test_driving_reduces_fuel
    @truck.refuel(9)
    @truck.drive(2)
    assert_equal 7, @truck.fuel
  end
end
