require 'minitest'
require'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class RoomTest < Minitest::Test

  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    assert_instance_of Room, @room
  end

  def test_it_has_category
    assert_equal :bedroom, @room.category
  end

  def test_it_has_an_area
    assert_equal 130, @room.area
  end

  def test_it_is_a_new_room
    room_1 = Room.new(:bedroom, 10, 13)
    assert_equal Room, room_1.class
  end

  def test_it_is_a_new_room
    room_2 = Room.new(:bedroom, 11, 15)
    assert_equal Room, room_2.class
  end

end
