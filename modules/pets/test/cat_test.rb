require 'minitest/autorun'
require 'minitest/pride'
require './lib/cat'

class CatTest < Minitest::Test
  def setup
    @cat = Cat.new("Lucy")
  end

  def test_it_exists
    assert_instance_of Cat, @cat
  end

  def test_it_has_name
    assert_equal "Lucy", @cat.name
  end

  def test_it_is_cute
    assert @cat.cute?
  end

  def test_it_can_speak
    assert_equal "Meow, my name is Lucy", @cat.speak
  end

  def test_it_can_play
    assert_equal "Playing with string", @cat.play
  end

end
