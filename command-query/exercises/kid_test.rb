gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'kid'

class KidTest < Minitest::Test
  def test_kid_has_not_eaten_sugar
    kid = Kid.new
    assert_equal 0, kid.grams_of_sugar_eaten
  end

  def test_kid_gets_5_grams_from_eating_candy
    skip
    kid = Kid.new
    kid.eat_candy
    assert_equal 5, kid.grams_of_sugar_eaten

    5.times { kid.eat_candy }
    assert_equal 30, kid.grams_of_sugar_eaten
  end

  def test_kid_is_not_hyperactive
    skip
    kid = Kid.new
    refute kid.hyperactive?
  end

  def test_kid_is_hyperactive_after_60_grams_of_sugar
    skip
    kid = Kid.new
    11.times { kid.eat_candy }
    refute kid.hyperactive?, "Not hyperactive yet..."
    kid.eat_candy
    assert kid.hyperactive?, "OK, now the kid is hyperactive."
  end
end
