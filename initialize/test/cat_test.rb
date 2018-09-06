require 'minitest/autorun'
require 'minitest/pride'
require './lib/cat'

class CatTest < Minitest::Test
  def test_it_exists
    boots = Cat.new("Boots")
    assert_instance_of Cat, boots
  end

  def test_it_has_a_name
    boots = Cat.new("Boots")
    assert_equal "Boots", boots.name
  end

  def test_it_has_a_sound
    boots = Cat.new("Boots")
    assert_equal "meow", boots.sound
  end
end
