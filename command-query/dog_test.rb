gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'dog'

class DogTest < Minitest::Test
  def test_dog_is_hungry
    dog = Dog.new
    assert dog.hungry?, "Dog should be hungry."
  end

  def test_dog_eats
    skip
    dog = Dog.new
    dog.eat
    refute dog.hungry?, "Dog ate. Not hungry."
  end
end
