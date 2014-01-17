gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'yak'

class YakTest < Minitest::Test
  def test_yak_is_hairy
    yak = Yak.new
    assert yak.hairy?, "The yak is hairy."
  end

  def test_shave_the_yak
    skip
    yak = Yak.new
    yak.shave
    refute yak.hairy?, "The shaven yak is no longer hairy."
  end

end
