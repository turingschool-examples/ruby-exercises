require 'minitest/autorun'
require 'minitest/pride'

class IntsAndFloatsTests < Minitest::Test
  def test_1
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # add the lucky number and the unlucky number
    sum = ________
    assert_equal 20, sum
  end

  def test_2
    skip
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # subtract the unlucky from the lucky
    difference = ________
    assert_equal -6, difference
  end

  def test_3
    skip
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    # NOTE: this is integer division
    quotient = ________
    assert_equal 1, quotient
  end

  def test_4
    skip
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    quotient = ________
    assert_equal 1.8571428571428572, quotient
  end

  def test_5
    skip
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # find the remainder of the unlucky divided by the lucky
    remainder = ____________
    assert_equal 6, remainder
  end

  def test_6
    skip
    lucky = 7
    # Using the variable defined above,
    # find out if the lucky number is even
    even = _________
    assert_equal false, even
  end

  def test_7
    skip
    pi = 3.14
    # Using the variable defined above,
    # round the number to the nearest whole number
    rounded = _________
    assert_equal 3, rounded
  end

  def test_8
    skip
    pi = 3.14
    # Using the variable defined above,
    # round the number to one decimal place
    rounded = _________
    assert_equal 3.1, rounded
  end



  def test_9
    skip
    pi = 3.14
    # Using the variable defined above,
    # round the number to the next highest whole number
    rounded = _________
    assert_equal 4, rounded
  end
end
