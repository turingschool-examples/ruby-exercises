require 'minitest'
require'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
  end

  def test_it_has_a_price
    assert_equal "$400000", @house.price
  end

  def test_it_has_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_it_has_rooms
    assert_equal [], @house.rooms
  end

  # def test_add_room_to_house
  #   room_1 = Room.new(:bedroom, 10, 13)
  #   assert_equal 1, @rooms.add_room(room_1)
  # end

  def test_house_has_rooms
    assert_equal Room, @house.rooms
  end

end
