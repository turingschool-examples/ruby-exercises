gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require_relative 'phoenix'

class PhoenixTest < Minitest::Test
  def test_phoenix_exist
    assert Phoenix
  end

  def test_it_has_a_name
    phoenix = Phoenix.new("Fawkes")
    assert_equal "Fawkes", phoenix.name
  end

  def test_age
    phoenix = Phoenix.new('Fawkes')
    assert_equal 0, phoenix.age
    phoenix.age(5)
    assert_equal 5, phoenix.age
  end

  def test_is_considered_adult_at_300
    skip
    phoenix = phoenix.new('Fawkes', 300)
    refute phoenix.adult?
  end

end

