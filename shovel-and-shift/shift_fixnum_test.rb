gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class ShiftFixnumTest < Minitest::Homework
  self.be_gentle!

  def test_object_ids_of_fixnums
    i1 = 1
    i2 = 1
    maybe i1.object_id == i2.object_id

    i1 = 1
    i2 = 2
    maybe (i1 + i2).object_id == 3.object_id
  end

  def test_fixnums_in_binary
    assert_equal __, 1.to_s(2)
    assert_equal __, 2.to_s(2)
    assert_equal __, 3.to_s(2)
    assert_equal __, 4.to_s(2)
    assert_equal __, 5.to_s(2)
    assert_equal __, 6.to_s(2)
    assert_equal __, 7.to_s(2)
    assert_equal __, 8.to_s(2)
    assert_equal __, 9.to_s(2)
    assert_equal __, 10.to_s(2)
  end

  def test_shift_left_on_fixnum
    i1 = 1 << 1
    i2 = 1 << 2
    i3 = 1 << 3
    i4 = 1 << 4
    i5 = 1 << 5
    i6 = 1 << 6

    assert_equal __, i1
    assert_equal __, i2
    assert_equal __, i3
    assert_equal __, i4
    assert_equal __, i5
    assert_equal __, i6

    # Now let's look at these numbers in binary.
    assert_equal __, i1.to_s(2)
    assert_equal __, i2.to_s(2)
    assert_equal __, i3.to_s(2)
    assert_equal __, i4.to_s(2)
    assert_equal __, i5.to_s(2)
    assert_equal __, i6.to_s(2)
  end

  def test_shift_left_on_fixnum_with_negative_numbers
    i1 = 64 << -1
    i2 = 64 << -2
    i3 = 64 << -3
    i4 = 64 << -4
    i5 = 64 << -5
    i6 = 64 << -6

    assert_equal __, i1
    assert_equal __, i2
    assert_equal __, i3
    assert_equal __, i4
    assert_equal __, i5
    assert_equal __, i6
  end

  def test_shift_right_on_fixnum
    i1 = 64 >> 1
    i2 = 64 >> 2
    i3 = 64 >> 3
    i4 = 64 >> 4
    i5 = 64 >> 5
    i6 = 64 >> 6

    assert_equal __, i1
    assert_equal __, i2
    assert_equal __, i3
    assert_equal __, i4
    assert_equal __, i5
    assert_equal __, i6
  end

  def test_shift_right_on_fixnum_with_negative_numbers
    i1 = 1 >> -1
    i2 = 1 >> -2
    i3 = 1 >> -3
    i4 = 1 >> -4
    i5 = 1 >> -5
    i6 = 1 >> -6

    assert_equal __, i1
    assert_equal __, i2
    assert_equal __, i3
    assert_equal __, i4
    assert_equal __, i5
    assert_equal __, i6
  end

  def test_more_shifty_business_on_fixnum
    i1 = 7 << 1
    i2 = 7 << 2
    i3 = 7 << 3

    assert_equal __, i1
    assert_equal __, i2
    assert_equal __, i3

    assert_equal __, i1.to_s(2)
    assert_equal __, i2.to_s(2)
    assert_equal __, i3.to_s(2)

    i1 = 52 >> 1
    i2 = 52 >> 2
    i3 = 52 >> 3

    assert_equal __, i1
    assert_equal __, i2
    assert_equal __, i3

    assert_equal __, i1.to_s(2)
    assert_equal __, i2.to_s(2)
    assert_equal __, i3.to_s(2)

    i1 = 79 >> 1
    i2 = 79 >> 2
    i3 = 79 >> 3

    assert_equal __, i1
    assert_equal __, i2
    assert_equal __, i3

    assert_equal __, i1.to_s(2)
    assert_equal __, i2.to_s(2)
    assert_equal __, i3.to_s(2)
  end

  # Explain in English what `<<` and `>>` do to a number.
end
