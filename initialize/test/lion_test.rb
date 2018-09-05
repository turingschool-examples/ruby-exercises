require 'minitest/autorun'
require 'minitest/pride'
require './lib/lion'

class LionTest < Minitest::Test
  def test_it_exists
    lionel = Lion.new({name: "Lionel", sound: "roar"})
    assert_instance_of Lion, lionel
  end

  def test_it_has_a_name
    lionel = Lion.new({name: "Lionel", sound: "roar"})
    assert_equal "Lionel", lionel.name
  end

  def test_it_has_a_sound
    lionel = Lion.new({name: "Lionel", sound: "roar"})
    assert_equal "roar", lionel.sound
  end
end
