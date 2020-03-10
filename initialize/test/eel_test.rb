require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/eel'

class EelTest < Minitest::Test
  def test_it_exists
    eel = Eel.new("Earl")
    assert_instance_of Eel, eel
  end

  def test_eels_are_anonymous
    eel = Eel.new("Earl")
    assert_equal "just another eel", eel.name
  end
end
