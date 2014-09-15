gem 'minitest', '~> 5.2'
require 'minitest/autorun'
# require 'minitest/pride'
require_relative '../lib/candy'

class CandyTest < Minitest::Test
  def test_candy_type
    candy = Candy.new("Skittles")
    assert_equal "Skittles", candy.type
  end

  def test_other_type_of_candy
    candy = Candy.new("Mars")
    assert_equal "Mars", candy.type
  end

  def test_amount_of_sugar_is_100_by_default
    candy = Candy.new("Circus Peanuts")
    assert_equal 100, candy.sugar
  end

  def test_amount_of_sugar_is_configurable
    candy = Candy.new("Pop Rocks", 78)
    assert_equal 78, candy.sugar
  end
end

