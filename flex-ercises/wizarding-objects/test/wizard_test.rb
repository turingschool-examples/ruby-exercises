require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/wand'
require './lib/wizard'
require './lib/pet'

class WizardTest < Minitest::Test

  def test_a_wizard_has_a_name
    skip
    wizard = Wizard.new("Hermione")

    assert_equal "Hermione", wizard.name
  end

  def test_a_wizard_can_have_a_different_name
    skip
    wizard = Wizard.new("Ron")

    assert_equal "Ron", wizard.name
  end

  def test_you_can_give_a_wizard_a_pet
    skip
    wizard = Wizard.new("Hermione")
    pet = Pet.new("Crookshanks", "Cat")

    wizard.give_pet(pet)

    assert_equal 1, wizard.pets_count
    assert_equal pet, wizard.pets.first
  end

  def test_you_can_give_a_wizard_many_pets
    skip
    wizard = Wizard.new("Hermione")
    pet = Pet.new("Crookshanks", "Cat")
    pet_2 = Pet.new("Hedwig", "Owl")

    wizard.give_pet(pet)
    wizard.give_pet(pet_2)

    assert_equal 2, wizard.pets_count
    assert_equal pet, wizard.pets.first
    assert_equal pet_2, wizard.pets.last
  end

  def test_a_wizard_can_list_pets
    skip
    wizard = Wizard.new("Hermione")
    pet = Pet.new("Crookshanks", "Cat")
    pet_2 = Pet.new("Hedwig", "Owl")

    wizard.give_pet(pet)
    wizard.give_pet(pet_2)

    expected = "Crookshanks, a Cat, Hedwig, an Owl."
    actual = wizard.pet_list

    assert_equal expected, actual
  end

  def test_a_wizard_can_have_a_wand
    skip
    wizard = Wizard.new("Harry")
    wand = Wand.new("Cherry",12,"Unicorn Hair")

    wizard.give_wand(wand)

    assert_equal wand, wizard.wand
  end

  def test_a_wizard_can_cast_a_spell
    skip
    wizard = Wizard.new("Ginny")
    wand = Wand.new("Cherry",12,"Unicorn Hair")

    wizard.give_wand(wand)

    actual = wizard.cast_spell("Expecto Patronum")
    expected = "Casting Expecto Patronum!"
  end
end
