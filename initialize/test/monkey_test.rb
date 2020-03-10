require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/monkey'

class MonkeyTest < Minitest::Test
  def test_it_exists
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])
    assert_instance_of Monkey, margaret
  end

  def test_it_has_a_name
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])
    assert_equal "Margaret", margaret.name
  end

  def test_it_has_a_type
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])
    assert_equal "Bonobo", margaret.type
  end

  def test_it_has_a_favorite_food
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])
    assert_equal "Bananas", margaret.favorite_food
  end
end
