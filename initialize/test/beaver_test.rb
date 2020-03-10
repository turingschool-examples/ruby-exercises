require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/beaver'

class BeaverTest < Minitest::Test
  def test_it_exists
    barry = Beaver.new("Barry")
    assert_instance_of Beaver, barry
  end

  def test_it_has_a_name
    barry = Beaver.new("Barry")
    assert_equal "Barry the Beaver", barry.name
  end

  def test_it_can_have_a_different_name
    beatrice = Beaver.new("Beatrice")
    assert_equal "Beatrice the Beaver", beatrice.name
  end

end
