gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'beers'

class BeersTest < Minitest::Test
  def test_inventory_starts_at_99
    beers = Beers.new
    assert_equal 99, beers.inventory
  end

  def test_inventory_decreases
    skip
    beers = Beers.new

    beers.take_one_down_and_pass_it_around
    assert_equal 98, beers.inventory

    53.times { beers.take_one_down_and_pass_it_around }
    assert_equal 45, beers.inventory
  end

  def test_restocking
    skip
    beers = Beers.new

    43.times { beers.take_one_down_and_pass_it_around }
    beers.restock
    assert_equal 99, beers.inventory

    5.times { beers.take_one_down_and_pass_it_around }
    beers.restock
    assert_equal 99, beers.inventory
  end

end
