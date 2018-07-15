require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class DogTest < Minitest::Test
  def setup
    @dog = Dog.new("Samson")
  end

  def test_it_exists
    assert_instance_of Dog, @dog
  end

  def test_it_has_name
    assert_equal "Samson", @dog.name
  end

  def test_it_is_cute
    assert @dog.cute?
  end

  def test_it_can_speak
    assert_equal "Woof, my name is Samson", @dog.speak
  end

  def test_it_can_play
    assert_equal "Playing with ball", @dog.play
  end

  def test_it_can_learn_tricks
    @dog.learn_trick "sit"
    @dog.learn_trick("shake")
    assert_equal ["sit", "shake"], @dog.tricks
  end

  def test_it_can_perform_tricks
    @dog.learn_trick "sit"
    @dog.learn_trick("shake")
    assert_equal "Performing sit, shake.", @dog.perform_tricks
  end
end
