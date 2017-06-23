# encoding: utf-8
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class FixnumTest < Minitest::Test
  def test_add
    assert_equal __, 6.send(:+, 3)
    assert_equal __, (7.+ 2)
    assert_equal __, (8 + 5)
  end

  def test_subtract
    skip
    assert_equal __, 2.send(:-, 1)
    assert_equal __, (5.- 8)
    assert_equal __, (10 - 3)
  end

  def test_divide
    skip
    assert_equal __, 9.send(:/, 3)
    assert_equal __, (12./ 3)
    assert_equal __, (18 / 6)
    assert_equal __, (18 / 7)
    assert_equal __, (18.0 / 7)
    assert_equal __, (18 / 7.0)
  end

  def test_multiply
    skip
    assert_equal __, 3.send(:*, 5)
    assert_equal __, (8.* 4)
    assert_equal __, (2 * 7)
  end

  def test_power
    skip
    assert_equal __, 2.send(:**, 3)
    assert_equal __, (3.** 4)
    assert_equal __, (1 ** 18)
  end

  def test_modulo
    skip
    assert_equal __, 8.send(:%, 2)
    assert_equal __, (8.% 3)
    assert_equal __, (8 % 5)
  end

  def test_succ
    skip
    assert_equal __, 1.succ
    assert_equal __, 17.succ
    assert_equal __, 30.succ
  end

  def test_pred
    skip
    assert_equal __, 99.pred
    assert_equal __, 13.pred
    assert_equal __, 8.pred
  end

  def test_even
    skip
    maybe 7.even?
    maybe 6.even?
    maybe 0.even?
  end

  def test_odd
    skip
    maybe 4.odd?
    maybe 9.odd?
    maybe 13.odd?
  end

  def test_zero
    skip
    maybe 0.zero?
    maybe 1.zero?
  end
end
