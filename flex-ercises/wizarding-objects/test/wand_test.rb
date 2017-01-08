require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/wand'

class WandTest < Minitest::Test

  def test_a_wand_has_a_type_and_a_size_and_a_core
    skip
    wand = Wand.new("Elm", 12, "Unicorn Hair")

    assert_equal "Elm", wand.type
    assert_equal 12, wand.size
    assert_equal "Unicorn Hair", wand.core
  end

  def test_a_wand_has_different_type_size_and_core
    skip
    wand = Wand.new("Cherry", 14, "Basilisk Fang")

    assert_equal "Cherry", wand.type
    assert_equal 14, wand.size
    assert_equal "Basilisk Fang", wand.core
  end

  def test_a_wand_can_cast_a_spell
    skip
    wand = Wand.new("Cherry", 14, "Basilisk Fang")

    expected = "Casting Accio!"
    actual = wand.cast("Accio")

    assert_equal expected, actual
  end
end
