gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/candy'

class CandyTest < Minitest::Test
  def test_candy_type
    candy = Candy.new("Skittles")
    assert_equal "Skittles", candy.type
  end

  def test_other_type_of_candy
    skip
    candy = Candy.new("Mars")
    assert_equal "Mars", candy.type
  end
end

