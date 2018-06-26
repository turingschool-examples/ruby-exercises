gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ReduceTest < Minitest::Test

  def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
    result = numbers.reduce(0) do |sum, number|
      sum + number
    end
    assert_equal 473, result
  end

  def test_subtract_list_of_numbers
    numbers = [28, 12, 38, 1, 91]
    result = numbers.reduce(0) do |difference, number|
      # Your code goes here
    end
    assert_equal -170, result
  end

  def test_multiply_list_of_numbers
    skip
    numbers = [2, 3, 5, 7]
    # initial value is 1
    # Your code goes here
    assert_equal 210, result
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
    skip
    keywords = ["fish", "blue"]
    # initial value is 'one fish two fish red fish blue fish'
    # Your code goes here
    assert_equal 'one FISH two FISH red FISH BLUE FISH', result
  end

  def test_divide_560_by_a_bunch_of_numbers
    skip
    numbers = [2, 2, 2, 5, 7]
    # initial value is 560
    # Your code goes here
    assert_equal 2, result
  end

  def test_subtract_smallest_values_from_100
    skip
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    # initial value is 100
    # Your code goes here
    assert_equal 88, result
  end

  def test_add_all_the_second_values_together
    skip
    elements = [["a", 1], ["b", 9], ["c", 21]]
    # initial value is 0
    # Your code goes here
    assert_equal 31, result
  end
end
