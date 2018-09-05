require 'minitest/autorun'
require 'minitest/pride'
require './lib/snail'

class SnailTest < Minitest::Test
  def test_it_exists
    snail = Snail.new
    assert_instance_of Snail, snail
  end
end
