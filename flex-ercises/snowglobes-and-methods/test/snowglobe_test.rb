require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/snowglobe'

class SnowglobeTest < MiniTest::Test
  def test_it_creates_an_instance_of_snowglobe
    snowglobe = Snowglobe.new({type: 'James Brown I Feel Good'})

    assert_instance_of Snowglobe, snowglobe
  end

  def test_it_creates_a_snowglobe_with_type_and_inscription
    snowglobe = Snowglobe.new({type: 'James Brown I Feel Good'})

    assert_equal 'James Brown I Feel Good', snowglobe.type
  end
end
