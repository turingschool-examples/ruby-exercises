require 'minitest/autorun'
require 'minitest/pride'
require './lib/sedan'

class SedanTest < Minitest::Test
  def setup
    @sedan = Truck.new(2007,"blue")
  end

  def test_it_exists
    assert_instance_of Truck, @sedan
  end

  def test_it_has_attributes
    assert_equal 2007, @sedan.year
    assert_equal "blue", @sedan.color
  end

  def test_paint
    @sedan.paint("green")
    assert_equal "green", @sedan.color
  end

  def test_num_wheels
    assert_equal 4, @sedan.num_wheels
  end

  def test_cargo_starts_empty_by_default
    assert_equal [], @sedan.cargo
  end

  def test_it_can_come_with_cargo
    cargo = ["Tools", "Snowboard", "Tent"]
    sedan = Truck.new(2007, "blue", cargo)
    assert_equal cargo, sedan.cargo
  end

  def test_load_cargo
    @sedan.load_cargo("Tools")
    @sedan.load_cargo("Snowboard")
    @sedan.load_cargo("Tent")
    assert_equal ["Tools", "Snowboard", "Tent"], @sedan.cargo
  end

  def test_fuel_starts_at_zero
    assert_equal 0, @sedan.fuel
  end

  def test_it_can_refuel
    @sedan.refuel(4)
    assert_equal 4, @sedan.fuel
    @sedan.refuel(9)
    assert_equal 13, @sedan.fuel
  end

  def test_odometer_starts_at_zero
    assert_equal 0, @sedan.odometer
  end

  def test_it_cannot_drive_without_fuel
    @sedan.refuel(2)
    assert_equal "Not enough fuel", @sedan.drive(4)
    assert_equal 0, @sedan.odometer
  end

  def test_it_can_drive_when_it_has_fuel
    @sedan.refuel(9)
    assert_equal "Driving 9 miles", @sedan.drive(9)
    assert_equal 9, @sedan.odometer
  end

  def test_driving_reduces_fuel
    @sedan.refuel(9)
    @sedan.drive(2)
    assert_equal 7, @sedan.fuel
  end
end
