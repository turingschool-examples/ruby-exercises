gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'roll_call'

class RollCallTest < Minitest::Test
  def test_no_names
    roll_call = RollCall.new
    assert_equal nil, roll_call.longest_name
  end

  def test_longest_of_one
    skip
    roll_call = RollCall.new
    roll_call << "Oda"
    assert_equal "Oda", roll_call.longest_name
  end

  def test_longest_of_several
    skip
    roll_call = RollCall.new
    roll_call << "Ann"
    roll_call << "Alexandra"
    roll_call << "Roger"
    assert_equal "Alexandra", roll_call.longest_name
  end
end
