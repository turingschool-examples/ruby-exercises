require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/narwhal'

class NarwhalTest < Minitest::Test
  def test_it_exists
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})
    assert_instance_of Narwhal, nancy
  end

  def test_it_has_a_name
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})
    assert_equal "Nancy", nancy.name
  end

  def test_it_has_a_weight
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})
    assert_equal 500, nancy.weight
  end

  def test_it_can_be_cute
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})
    assert_equal true, nancy.cute?
  end

  def test_not_all_narwhals_are_the_same
    neville = Narwhal.new({cute: false, weight: 499, name: "Neville"})
    assert_equal false, neville.cute?
    assert_equal 499, neville.weight
    assert_equal "Neville", neville.name
  end
end
