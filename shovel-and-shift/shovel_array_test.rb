gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class ShovelArrayTest < Minitest::Homework
  self.be_gentle!

  def test_array_equality
    a1 = []
    a2 = []
    maybe a1.object_id == a2.object_id
    maybe a1 == a2
  end

  def test_shovel_into_array
    a1 = []
    a2 = a1
    a2 << "a"
    a2 << "b"
    a2 << "c"
    assert_equal __, a2
    assert_equal __, a1

    # Explain in English what `<<` does to an array.
  end

  def test_add_two_arrays
    a1 = []
    a2 = a1
    a2 = a2 + ["a"]
    a2 = a2 + ["b"]
    a2 = a2 + ["c"]
    assert_equal __, a2
    assert_equal __, a1
  end

  # How is shoveling different from adding?

  def test_shovel_on_array_inside_hash
    hash = {"letters" => [], "numbers" => []}

    hash["letters"] << "a"
    hash["letters"] << "b"
    hash["letters"] << "c"

    hash["numbers"] << 1
    hash["numbers"] << 2
    hash["numbers"] << 3

    assert_equal __, hash["letters"]
    assert_equal __, hash["numbers"]
  end
end
