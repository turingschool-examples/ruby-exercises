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

  def test_add_room_to_house
    room_1 = Room.new(:bedroom, 10, 13)
    assert_equal [room_1], @house.add_room(room_1) #working but feels wrong
  end

  def test_add_room_to_house
    room_2 = Room.new(:bedroom, 11, 15)
    assert_equal [room_2], @house.add_room(room_2) #working but feels wrong
  end

  def test_add_room_to_house
    room_3 = Room.new(:living_room, 25, 15)
    assert_equal [room_3], @house.add_room(room_3) #working but feels wrong
  end

  def test_add_room_to_house
    room_4 = Room.new(:basement, 30, 41)
    assert_equal [room_4], @house.add_room(room_4) #working but feels wrong
  end

  def test_it_has_rooms
  room_1 = Room.new(:bedroom, 10, 13)
  room_2 = Room.new(:bedroom, 11, 15)
  room_3 = Room.new(:living_room, 25, 15)
  room_4 = Room.new(:basement, 30, 41)

 #not done, ran out of time
    assert_equal [room_1, room_2, room_3, room_4], @house.rooms
  end

end
