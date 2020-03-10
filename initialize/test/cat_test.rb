require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cat'

class CatTest < Minitest::Test
  def test_it_exists
    carlos = Cat.new("Carlos")
    assert_instance_of Cat, carlos
  end

  def test_it_has_a_name
    carlos = Cat.new("Carlos")
    assert_equal "Carlos", carlos.name
  end

  def test_it_has_a_sound
    carlos = Cat.new("Carlos")
    assert_equal "meow", carlos.sound
  end
end
