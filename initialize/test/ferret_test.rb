require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/ferret'

class FerretTest < Minitest::Test
  def test_it_exists
    ferret = Ferret.new
    assert_instance_of Ferret, ferret
  end

  def test_it_has_no_name
    ferret = Ferret.new
    assert_equal "a ferret has no name", ferret.name
  end

  def test_it_can_be_given_a_name
    felix = Ferret.new
    felix.give_name("Felix")
    assert_equal "a ferret's name is Felix", felix.name
  end
end
