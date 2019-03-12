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
      number > 17
    end
    assert_equal 2, tally
  end

  def test_count_words_that_are_uppercase
    words = ["trousers", "SOCKS", "sweater", "Cap", "SHOE", "TIE"]
    tally = words.count do |word|
      word.upcase == word
    end
    assert_equal 3, tally
  end

  def test_count_words_ending_in_ing
    words = ["thought", "brake", "shin", "juice", "trash"]
    tally = words.count do |word|
      word.end_with?('?')
    end
    assert_equal 0, tally
  end

  def test_count_even_numbers
    numbers = [9, 2, 1, 3, 18, 39, 71, 4, 6]
    tally = numbers.count do |number|
      number.even?
    end
    assert_equal 4, tally
  end

  def test_count_multiples_of_5
    numbers = [2, 5, 19, 25, 35, 67]
    tally = numbers.count do |number|
      number % 5 == 0
    end
    assert_equal 3, tally
  end

  def test_count_round_prices
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    tally = prices.count do |price|
      (price - price.floor) == 0
    end
    assert_equal 2, tally
  end

  def test_count_four_letter_words
    words = ["bake", "bark", "corn", "apple", "wart", "bird", "umbrella", "fart"]
    tally = words.count do |word|
      word.length == 4
    end
    assert_equal 6, tally
  end

end