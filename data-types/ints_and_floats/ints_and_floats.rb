require 'minitest/autorun'
require 'minitest/pride'

class IntsAndFloatsTests < Minitest::Test
  def test_1
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # add the lucky number and the unlucky number
    sum = lucky + unlucky
    assert_equal 20, sum
  end

  def test_2
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # subtract the unlucky from the lucky
    difference = lucky - unlucky
    assert_equal -6, difference
  end

  def test_3
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    # NOTE: this is integer division
    quotient = unlucky / lucky
    assert_equal 1, quotient
  end

  def test_4
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    quotient = unlucky.to_f / lucky
    assert_equal 1.8571428571428572, quotient
  end

  def test_5
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # find the remainder of the unlucky divided by the lucky
    remainder = unlucky % lucky
    assert_equal 6, remainder
  end

  def test_6
    lucky = 7
    # Using the variable defined above,
    # find out if the lucky number is even
    even = lucky.even?
    assert_equal false, even
  end

  def test_7
    pi = 3.14
    # Using the variable defined above,
    # round the number to the nearest whole number
    rounded = pi.round()
    assert_equal 3, rounded
  end

  def test_8
    pi = 3.14
    # Using the variable defined above,
    # round the number to one decimal place
    rounded = pi.round(1)
    assert_equal 3.1, rounded
  end



  def test_9
    pi = 3.14
    # Using the variable defined above,
    # round the number to the next highest whole number
    rounded = pi.ceil
    assert_equal 4, rounded
  end
end
