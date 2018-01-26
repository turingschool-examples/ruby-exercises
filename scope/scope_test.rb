gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'


class ScopeTest < MiniTest::Test

  def test_change_variable_in_method
    skip
    x = 1

    def change_x(x)
      x = 2
    end

    assert_equal __, x
  end

  def test_change_variable_in_loop
    skip
    x = 0
    while x < 16
      x +=1
    end
    assert_equal __, x
  end

  def test_change_different_in_method
    skip
    x = 3
    def change_x(x)
      x = 2
    end
    y = 1
    change_x(y)
    assert_equal __, y
  end

  def test_variable_scope_inside_method
    skip
    x = 1
    def change_x(x)
      assert_equal __, x
      x = 2
      assert_equal __, x
    end
    y = 3
    change_x(y)
    assert_equal __, x
    assert_equal __, y
  end

  def test_change_different_variable_inside_method
    skip
    a = 1
    def change_x(x)
      x = 2
      a = 4
      assert_equal __, a
    end

    change_x(a)
    assert_equal __, a
  end

  def test_variable_and_method_names_are_the_same
    skip
    a = 1
    b = 2
    def change_x(x)
      assert_equal __, x
      x *= 2
      a = b
      assert_equal __, a
    end

    def b
      23
    end

    change_x(b)
    assert_equal __, b
    assert_equal __, a
  end

  def test_block_variable
    skip
    [1].each do |i|
      assert_equal __, i
    end
  end

  def test_scope_inside_block
    skip
    i = 2
    [1,1,1].each do |i|
      assert_equal __, i
    end
    assert_equal __, i
  end

  def test_changing_variable_inside_block
    skip
    i = 3
    [1,2,3,4].each do |i|
      i += 1
    end
    assert_equal __, i
  end

  def test_scope_of_variables_outside_block
    skip
    x = 0
    i = 0
    [1, 2, 3, 4, 5].each do |i|
      x = i
    end

    assert_equal __, x
    assert_equal __, i
  end

  def test_scope_of_method_inside_block
    skip
    def x
      20
    end

    [1,2,3,4,5].each do |i|
      assert_equal __, x
    end
    assert_equal __, x
  end

  def test_scope_of_local_variable_and_method_inside_block
    skip
    def x
      20
    end

    [1,2,3,4,5].each do |i|
      x = 10
      assert_equal __, x
    end
    assert_equal __, x
  end

  def test_change_variable_in_block
    skip
    x = 20

    [1,2,3,4,5].each do |i|
      x = 10
      assert_equal __, x
    end

    assert_equal __, x
  end

  def test_everything_is_x
    skip
    x = 20
    def x
      10
    end
    sum = 0
    [1,2,3,4,5].each do |x|
      x = 1
      assert_equal __, x
      sum += x
    end

    assert_equal __, sum
    assert_equal __, x
  end

end

