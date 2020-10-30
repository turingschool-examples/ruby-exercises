gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class OnePatternTest < Minitest::Test

  def test_one_more
    words = ["bigger", "better", "more", "improved", "advantageous"]
    count = 0
    words.each do |word|
      count += 1 if word == 'more'
    end
    exactly_one = count == 1
    assert_equal true, exactly_one
  end

  def test_not_even_one_ring
    ornaments = ["bracelet", "anklet", "earring"]
    count = 0
    ornaments.each do |ornament|
      # Your code goes here
    end
    exactly_one_ring = count == 1
    assert_equal false, exactly_one_ring
  end

  def test_not_just_one_ring
    skip
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    count = 0
    # Your code goes here
    exactly_one_ring = count == 1
    assert_equal false, exactly_one_ring
  end

  def test_one_time
    skip
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    # Your code goes here
    exactly_one_time = count == 1
    assert_equal true, exactly_one_time
  end

  def test_one_double_digit_number
    skip
    numbers = [8, 2, 10, 333, 9, 101]
    # Your code goes here
    exactly_one_double_digit = count == 1
    assert_equal true, exactly_one_double_digit
  end

  def test_not_one_even_number
    skip
    numbers = [3, 20, 81, 10, 391, 32]
    # Your code goes here
    exactly_one_even_number = count == 1
    assert_equal false, exactly_one_even_number
  end

end