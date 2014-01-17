gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'
require 'date'

class ShiftDateTest < Minitest::Homework
  self.be_gentle!

  def test_shift_left_on_date
    date = Date.new(2013, 11, 2)
    assert_equal __, date.strftime('%e %b, %Y')

    date1 = date << 1
    date2 = date << 2
    date3 = date << 3
    date4 = date << 4

    assert_equal __, date1.strftime('%e %b, %Y')
    assert_equal __, date2.strftime('%e %b, %Y')
    assert_equal __, date3.strftime('%e %b, %Y')
    assert_equal __, date4.strftime('%e %b, %Y')
  end

  def test_shift_right_on_date
    date = Date.new(2013, 10, 31)
    assert_equal __, date.strftime('%e %b, %Y')

    date1 = date << 1
    date2 = date << 2
    date3 = date << 3
    date4 = date << 4

    assert_equal __, date1.strftime('%e %b, %Y')
    assert_equal __, date2.strftime('%e %b, %Y')
    assert_equal __, date3.strftime('%e %b, %Y')
    assert_equal __, date4.strftime('%e %b, %Y')

    date1 = date >> 1
    date2 = date >> 2
    date3 = date >> 3
    date4 = date >> 4

    assert_equal __, date1.strftime('%e %b, %Y')
    assert_equal __, date2.strftime('%e %b, %Y')
    assert_equal __, date3.strftime('%e %b, %Y')
    assert_equal __, date4.strftime('%e %b, %Y')
  end

  # Explain in English what `<<` and `>>` do to a date.
end
