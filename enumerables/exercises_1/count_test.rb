gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class CountTest < Minitest::Test

  def test_count_count_words_with_e
    words = ["thing", "phone", "bark", "belt", "shoe", "bath"]
    tally = words.count do |word|
      word.include?('e')
    end
    assert_equal 3, tally
  end

  def test_count_numbers_greater_than_17
    numbers = [9, 18, 12, 17, 1, 3, 99]
    tally = numbers.count do |number|
      # Your code goes here
    end
    assert_equal 2, tally
  end

  def test_count_words_that_are_uppercase
    skip
    words = ["trousers", "SOCKS", "sweater", "Cap", "SHOE", "TIE"]
    # Your code goes here
    assert_equal 3, tally
  end

  def test_count_words_ending_in_ing
    skip
    words = ["thought", "brake", "shin", "juice", "trash"]
    # Your code goes here
    assert_equal 0, tally
  end

  def test_count_even_numbers
    skip
    numbers = [9, 2, 1, 3, 18, 39, 71, 4, 6]
    # Your code goes here
    assert_equal 4, tally
  end

  def test_count_multiples_of_5
    skip
    numbers = [2, 5, 19, 25, 35, 67]
    # Your code goes here
    assert_equal 3, tally
  end

  def test_count_round_prices
    skip
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    # Your code goes here
    assert_equal 2, tally
  end

  def test_count_four_letter_words
    skip
    words = ["bake", "bark", "corn", "apple", "wart", "bird", "umbrella", "fart"]
    # Your code goes here
    assert_equal 6, tally
  end

end