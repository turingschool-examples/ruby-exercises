gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class OneTest < Minitest::Test

  def test_one_more
    words = ["bigger", "better", "more", "improved", "advantageous"]
    exactly_one = words.one? do |word|
      word == 'more'
    end
    assert_equal true, exactly_one
  end

  def test_not_even_one_ring
    ornaments = ["bracelet", "anklet", "earring"]
    exactly_one_ring = ornaments.one? do |ornament|
      # Your code goes here
    end
    assert_equal false, exactly_one_ring
  end

  def test_not_just_one_ring
    skip
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    # Your code goes here
    assert_equal false, exactly_one_ring
  end

  def test_one_time
    skip
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    # Your code goes here
    assert_equal true, exactly_one_time
  end

  def test_one_double_digit_number
    skip
    numbers = [8, 2, 10, 333, 9, 101]
    # Your code goes here
    assert_equal true, exactly_one_double_digit
  end

  def test_not_one_even_number
    skip
    numbers = [3, 20, 81, 10, 391, 32]
    # Your code goes here
    assert_equal false, exactly_one_even_number
  end
end
