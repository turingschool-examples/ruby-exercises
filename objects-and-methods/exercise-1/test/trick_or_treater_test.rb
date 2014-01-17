gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/costume'
require_relative '../lib/bag'
require_relative '../lib/candy'
require_relative '../lib/trick_or_treater'

class TrickOrTreaterTest < Minitest::Test
  def test_wears_a_costume
    costume = Costume.new("Cowboy")
    trick_or_treater = TrickOrTreater.new(costume)
    assert_equal "Cowboy", trick_or_treater.dressed_up_as
  end

  def test_wears_a_different_costume
    skip
    costume = Costume.new("Pony")
    trick_or_treater = TrickOrTreater.new(costume)
    assert_equal "Pony", trick_or_treater.dressed_up_as
  end

  def test_has_an_empty_bag_by_default
    skip
    trick_or_treater = TrickOrTreater.new(Costume.new("Alien"))
    assert trick_or_treater.bag.empty?
  end

  def test_an_empty_bag_means_no_candy
    skip
    trick_or_treater = TrickOrTreater.new(Costume.new("Knight"))
    refute trick_or_treater.has_candy?
  end

  def test_gets_candies
    skip
    trick_or_treater = TrickOrTreater.new(Costume.new("Spaceship Mechanic"))
    trick_or_treater.bag << Candy.new("Gummy bears")
    assert trick_or_treater.has_candy?
  end

  def test_counts_candies
    skip
    trick_or_treater = TrickOrTreater.new(Costume.new("Spaceship Mechanic"))
    assert_equal 0, trick_or_treater.candy_count
    trick_or_treater.bag << Candy.new("Gummy bears")
    assert_equal 1, trick_or_treater.candy_count
  end

  def test_eats_candies
    skip
    trick_or_treater = TrickOrTreater.new(Costume.new("Baron"))
    trick_or_treater.bag << Candy.new("Gummy worms")
    trick_or_treater.bag << Candy.new("Liquorice")
    trick_or_treater.bag << Candy.new("Salty Serpents")
    assert_equal 3, trick_or_treater.candy_count
    trick_or_treater.eat
    assert_equal 2, trick_or_treater.candy_count
    trick_or_treater.eat
    assert_equal 1, trick_or_treater.candy_count
    trick_or_treater.eat
    assert_equal 0, trick_or_treater.candy_count
  end
end

