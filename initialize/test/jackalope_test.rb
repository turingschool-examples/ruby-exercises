require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/jackalope'

class JackalopeTest < Minitest::Test
  def test_it_exists
    jorge = Jackalope.new("Jorge")
    assert_instance_of Jackalope, jorge
  end

  def test_it_has_a_name
    jorge = Jackalope.new("Jorge")
    assert_equal "Jorge", jorge.name
  end

  def test_it_starts_with_an_array_of_etymology
    jorge = Jackalope.new("Jorge")
    assert_equal ["Jackrabbit", "Antelope"], jorge.etymology
  end
end
