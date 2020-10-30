gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NoneTest < Minitest::Test

  def test_none_are_broken
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = things.none? do |thing|
      thing == "broken"
    end
    assert_equal true, none_broken
  end

  def test_double_negative
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = numbers.none? do |number|
      # Your code goes here
    end
    assert_equal false, not_none_negative
  end

  def test_none_are_negative
    skip
    numbers = [9, 3, 1, 8, 3, 3, 5]
    # Your code goes here
    assert_equal true, none_negative
  end

  def test_none_shall_pass
    skip
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    # Your code goes here
    assert_equal true, none_shall_pass
  end

  def test_one_or_more_shall_pass
    skip
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    # Your code goes here
    assert_equal false, none_shall_pass
  end

  def test_none_even
    skip
    numbers = [3, 9, 15, 21, 19]
    # Your code goes here
    assert_equal true, none_even
  end
end
