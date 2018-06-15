gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'clock'

class ClockTest < Minitest::Test
  def test_start_at_6
    clock = Clock.new
    assert_equal 6, clock.time
  end

  def test_passage_of_time
    skip
    clock = Clock.new
    clock.wait
    assert_equal 7, clock.time

    3.times { clock.wait }
    assert_equal 10, clock.time
  end

  def test_clocks_are_not_military_time
    skip
    clock = Clock.new
    8.times { clock.wait }
    assert_equal 2, clock.time
  end
end
