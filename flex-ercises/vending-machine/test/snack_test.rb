require 'minitest/autorun'
require 'minitest/pride'
require './lib/snack'

class SnackTest < Minitest::Test

  def test_snack_can_be_any_snack
    snack = Snack.new("White Castle Burger", 3)
    assert_equal "White Castle Burger", snack.name
    assert_equal 3, snack.quantity
  end
end
