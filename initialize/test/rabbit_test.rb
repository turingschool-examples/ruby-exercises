require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rabbit'

class RabbitTest < Minitest::Test
  def test_it_exists
    ralph = Rabbit.new({name: "Ralph", num_syllables: 1})
    assert_instance_of Rabbit, ralph
  end

  def test_it_has_a_name
    ralph = Rabbit.new({name: "Ralph", num_syllables: 1})
    assert_equal "Ralph", ralph.name
  end

  def test_if_it_has_two_syllables_the_name_ends_with_rabbit
    ralph = Rabbit.new({name: "Ralph", num_syllables: 1})
    rita = Rabbit.new({name: "Rita", num_syllables: 2})
    roberto = Rabbit.new({name: "Roberto", num_syllables: 3})
    assert_equal "Ralph", ralph.name
    assert_equal "Rita Rabbit", rita.name
    assert_equal "Roberto", roberto.name
  end
end
