gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class NumberComparisonsTest < Minitest::Test
  def test_two_ints
    n1 = 1
    n2 = 1
    maybe n1.object_id == n2.object_id
    maybe n1 == n2
    maybe n1 <= n2
    maybe n1 >= n2
    assert_equal __, n1 <=> n2
  end

  def test_float_and_int
    skip
    n1 = 1
    n2 = 1.0
    maybe n1.object_id == n2.object_id
    maybe n1 == n2
    maybe n1 <= n2
    maybe n1 >= n2
    assert_equal __, n1 <=> n2
    assert_equal __, n2 <=> n1
  end

  def test_two_different_ints
    skip
    n1 = 1
    n2 = 2
    maybe n1.object_id == n2.object_id
    maybe n1 < n2
    maybe n1 > n2
    maybe n1 <= n2
    maybe n1 >= n2
    assert_equal __, n1 <=> n2
    assert_equal __, n2 <=> n1
  end

  def test_between
    skip
    one = 1
    five = 5
    ten = 10
    maybe five.between?(one, ten)
    maybe five.between?(ten, one)
    maybe one.between?(five, ten)
  end

  def test_sort
    skip
    numbers = [9.99, 10.15, 2.75, 1.01]
    assert_equal __, numbers.sort
  end
end
