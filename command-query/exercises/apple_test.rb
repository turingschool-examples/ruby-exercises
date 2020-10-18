gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'apple'

class AppleTest < Minitest::Test

  def test_a_new_apple_is_not_ripe
    apple = Apple.new
    assert_equal false, apple.ripe?
  end

  def test_apple_is_not_ripe_until_3_wks

    apple = Apple.new

    2.times {apple.wait_a_week}
    assert_equal false, apple.ripe?

    1.times {apple.wait_a_week}
    assert_equal true, apple.ripe?
  end
end
