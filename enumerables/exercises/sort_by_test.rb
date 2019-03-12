gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SortByTest < Minitest::Test

  def test_sort_alphabetically
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    sorted = words.sort_by do |word|
      word.downcase
    end
    assert_equal ["Bacon", "broccoli", "candy", "Carrots", "FISH"], sorted
  end

  def test_sort_alphabetically_by_last_letter
    things = ["pill", "box", "glass", "water", "sponge"]
    sorted = things.sort_by do |thing|
      # Your code goes here
    end
    assert_equal ["sponge", "pill", "water", "glass", "box"], sorted
  end

  def test_sort_by_distance
    skip
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    # Your code goes here
    assert_equal ["1cm", "2cm", "4cm", "9cm", "30cm"], sorted
  end

  def test_sort_by_length
    skip
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    # Your code goes here
    assert_equal ["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"], sorted
  end

  def test_sort_by_proximity_to_ten
    skip
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    # Your code goes here
    assert_equal [10.01, 9.91, 11.0, 3.02, 17.9], sorted
  end

  def test_sort_by_number_of_cents
    skip
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    # Your code goes here
    assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], sorted
  end

end