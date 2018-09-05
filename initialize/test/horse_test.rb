require 'minitest/autorun'
require 'minitest/pride'
require './lib/horse'

class HorseTest < Minitest::Test
  def test_it_exists
    harry = Horse.new("Harry")
    assert_instance_of Horse, harry
  end

  def test_it_has_a_name
    harry = Horse.new("Harry")
    assert_equal "Harry", harry.name
  end

  def test_diet_starts_empty
    harry = Horse.new("Harry")
    assert_equal [], harry.diet
  end

  def test_it_can_add_to_diet
    harry = Horse.new("Harry")
    harry.add_to_diet("Hay")
    harry.add_to_diet("Sugar Cubes")
    assert_equal ["Hay", "Sugar Cubes"], harry.diet
  end
end
