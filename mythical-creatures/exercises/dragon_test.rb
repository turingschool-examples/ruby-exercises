gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'dragon'

class DragonTest < Minitest::Test
  def test_it_has_a_name
    dragon = Dragon.new("Ramoth", :gold, "Lessa")
    assert_equal "Ramoth", dragon.name
  end

  def test_it_has_a_rider
    skip
    dragon = Dragon.new("Ramoth", :gold, "Lessa")
    assert_equal "Lessa", dragon.rider
  end

  def test_it_has_a_color
    skip
    dragon = Dragon.new("Ramoth", :gold, "Lessa")
    assert_equal :gold, dragon.color
  end

  def test_a_different_dragon
    skip
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    assert_equal "Mnementh", dragon.name
  end

  def test_a_different_dragons_rider
    skip
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    assert_equal "F'lar", dragon.rider
  end

  def test_a_different_dragons_color
    skip
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    assert_equal :bronze, dragon.color
  end

  def test_dragons_are_born_hungry
    skip
    dragon = Dragon.new("Canth", :brown, "F'nor")
    assert dragon.hungry?
  end

  def test_dragons_eat_a_lot
    skip
    dragon = Dragon.new("Canth", :brown, "F'nor")
    assert dragon.hungry?
    dragon.eat
    assert dragon.hungry?
    dragon.eat
    assert dragon.hungry?
    dragon.eat
    refute dragon.hungry?
  end
end

