require 'minitest/autorun'
require 'minitest/pride'

class HashesTest < Minitest::Test

  def test_3
    # In the line below, create a hash called ages. The hash should
    # have a key of "ben" with a value of 4 and a key of "kelly" with
    # a value of 6
    ages = ____
    assert_equal 2, ages.length
    assert_equal 4, ages["ben"]
    assert_equal 6, ages["kelly"]
  end

  def test_4
    # In the line below, create a hash called ages. The hash should
    # have a key of :ben with a value of 4 and a key of :kelly with
    # a value of 6.
    ages = ____
    assert_equal 2, ages.length
    assert_equal 4, ages[:ben]
    assert_equal 6, ages[:kelly]
  end
end
