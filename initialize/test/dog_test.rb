require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class DogTest < Minitest::Test
  def test_it_exists
    doug = Dog.new("Doug", "Golden Retriever")
    assert_instance_of Dog, doug
  end

  def test_it_has_a_greeting
    doug = Dog.new("Doug", "Golden Retriever")
    assert_equal "Woof, I'm Doug the Golden Retriever!", doug.greeting
  end

  def test_it_can_have_a_different_greeting
    dolly = Dog.new("Dolly", "Lab")
    assert_equal "Woof, I'm Dolly the Lab!", dolly.greeting
  end
end
