require 'minitest/autorun'
require 'minitest/pride'

class CollectionsTest < Minitest::Test

  def test_initalize
    # In the line below, create and array with the numbers 1 - 5
    nums = ______
    assert_equal 5, nums.length
    assert
  end

  def test_access
    nums = [1,2,3]
    # In the line below, call a method on the nums variable
    # defined above to achieve the expected output.
    actual = nums.______
    expected = 3
    assert_equal expected, actual

    # Now try to achieve the same result by calling
    # a different method on the nums variable
    nums = [1,2,3]
    actual = nums
    expected = 3
    assert_equal expected, actual

    # Now try to find a third method to call on nums that will make the test pass
    nums = [1,2,3]
    actual = nums
    expected = 3
    assert_equal expected, actual
  end


end
