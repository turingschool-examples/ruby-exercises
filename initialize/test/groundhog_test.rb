require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/groundhog'

class GroundhogTest < Minitest::Test
  def test_it_exists
    gabby = Groundhog.new("Gabby")
    assert_instance_of Groundhog, gabby
  end

  def test_it_has_a_name
    gabby = Groundhog.new("Gabby")
    assert_equal "Gabby", gabby.name
  end

  def test_it_can_change_names
    gabby = Groundhog.new("Gabby")
    gabby.name = "Gary"
    assert_equal "Gary", gabby.name
  end
end
