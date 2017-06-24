gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class StringComparisonsTest < Minitest::Test
  def test_equality
    s1 = "abc"
    s2 = "abc"
    maybe  s1.object_id == s2.object_id
    maybe s1 == s2
  end

  def test_greater_or_less_than
    skip
    s1 = "abc"
    s2 = "xyz"
    maybe s1 < s2
    maybe s1 > s2
  end

  def test_similar_strings
    skip
    s1 = "abc"
    s2 = "abd"
    maybe s1 == s2
    maybe s1 < s2
    maybe s1 > s2
    maybe s1 <= s2
    maybe s1 >= s2
  end

  def test_compare_upper_and_lower_case
    skip
    s1 = "abc"
    s2 = "XYZ"
    maybe s1 < s2
    maybe s1 > s2
    maybe s1 <= s2
    maybe s1 >= s2
  end

  def test_compare_capitalized_with_upper_case
    skip
    s1 = "Abc"
    s2 = "ABC"
    maybe s1 < s2
    maybe s1 > s2
    maybe s1 <= s2
    maybe s1 >= s2
  end

  def test_the_name_number
    skip
    s1 = "1"
    s2 = "1.0"
    maybe s1 < s2
    maybe s1 > s2
    maybe s1 <= s2
    maybe s1 >= s2
  end

  def test_different_numbers
    skip
    s1 = "2.0"
    s2 = "10.0"
    maybe s1 < s2
    maybe s1 > s2
    maybe s1 <= s2
    maybe s1 >= s2
  end

  def test_between
    skip
    abc = "abc"
    prq = "prq"
    xyz = "xyz"
    maybe abc.between?(prq, xyz)
    maybe prq.between?(abc, xyz)
    maybe prq.between?(xyz, abc)
  end

  def test_sort_fruit
    skip
    strings = ["apple", "BANANA", "cherry", "Date"]
    assert_equal __, strings.sort
  end

  def test_sort_prices
    skip
    prices = ["9.99", "10.15", "2.75", "1.01"]
    assert_equal __, prices.sort
  end
end
