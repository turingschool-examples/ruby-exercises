gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'door'

class DoorTest < Minitest::Test
  def test_doors_are_locked
    door = Door.new
    assert_equal true, door.locked?, "The door should be locked."
  end

  def test_unlock_the_door
    skip
    door = Door.new
    door.unlock
    assert_equal false, door.locked?, "The door should now be unlocked."
  end
end
