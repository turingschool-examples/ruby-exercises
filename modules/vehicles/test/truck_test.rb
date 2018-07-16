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

  def test_it_can_be_painted
    @truck.paint("green")
    assert_equal "green", @truck.color
  end

  def test_it_has_four_wheels
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

  def test_it_can_load_cargo
    @truck.load_cargo("Tools")
    @truck.load_cargo("Snowboard")
    @truck.load_cargo("Tent")
    assert_equal ["Tools", "Snowboard", "Tent"], @truck.cargo
  end

  def test_odometer_starts_at_zero
    assert_equal 0, @truck.odometer
  end

  def test_when_it_drives_the_odometer_is_updated
    @truck.drive(5)
    @truck.drive(17)
    assert_equal 22, @truck.odometer
  end
end
