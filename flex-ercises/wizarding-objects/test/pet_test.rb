require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/pet'

class PetTest < Minitest::Test

  def test_a_pet_has_a_name_and_a_type
    pet = Pet.new("Crookshanks","Cat")

    assert_equal "Crookshanks", pet.name
    assert_equal "Cat", pet.type
  end

  def test_a_pet_has_a_different_name_and_type
    skip
    pet = Pet.new("Hedwig","Owl")

    assert_equal "Hedwig", pet.name
    assert_equal "Owl", pet.type
  end
end
