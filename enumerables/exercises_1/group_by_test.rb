gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class GroupByTest < Minitest::Test

  def test_group_words_by_length
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
    grouped = words.group_by do |word|
      word.length
    end
    expected = {3=>["sue", "dog", "cat"], 4=>["adam", "fort", "tops"], 5=>["alice", "steve", "sally"]}
    assert_equal expected, grouped
  end

  def test_group_numbers_by_odd_and_even
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    odd_and_even = numbers.group_by do |number|
      # Your code goes here
    end
    expected = {1=>[1, 1, 3, 5, 13, 21, 55], 0=>[2, 8, 34]}
    assert_equal expected, odd_and_even
  end

  def test_group_words_by_first_letter
    skip
    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    # Your code goes here
    expected = {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
    assert_equal expected, words_by_first_letter
  end

  def test_group_words_by_uniqueness
    skip
    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    # Your code goes here
    expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
    assert_equal expected, grouped
  end

  def test_group_by_number_of_zeros
    skip
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    # Your code goes here
    expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
    assert_equal expected, grouped
  end

  def test_group_by_order_of_magnitude
    skip
    numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
    # Your code goes here
    expected = {1=>[1, 3], 2=>[93, 21], 3=>[503, 239], 4=>[4938, 3932], 5=>[19982], 6=>[501787]}
    assert_equal expected, grouped
  end

end