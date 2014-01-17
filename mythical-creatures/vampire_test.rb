gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'vampire'

class VampireTest < Minitest::Test
  def test_it_has_a_name
    vampire = Vampire.new("Dracula")
    assert_equal "Dracula", vampire.name
  end

  def test_it_is_named_something_else
    skip
    vampire = Vampire.new("Vladimir")
    assert_equal "Vladimir", vampire.name
  end

  def test_it_keeps_a_pet_bat_by_default
    skip
    vampire = Vampire.new("Ruthven")
    assert_equal "bat", vampire.pet
  end

  def test_it_can_have_other_pets
    skip
    vampire = Vampire.new("Varney", "fox")
    assert_equal "fox", vampire.pet
  end

  def test_it_is_thirsty_by_default
    skip
    vampire = Vampire.new("Count von Count")
    assert vampire.thirsty?
  end

  def test_it_is_not_thirsty_after_drinking
    skip
    vampire = Vampire.new("Elizabeth Bathory")
    vampire.drink
    refute vampire.thirsty?
  end
end
