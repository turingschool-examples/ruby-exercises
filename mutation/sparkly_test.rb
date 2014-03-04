gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'
require_relative 'sparkly'

class SparklyTest < Minitest::Test
  def test_sparklify
    sparkly = Sparkly.new("hello").to_s
    assert_equal "hello *.*:*.*", sparkly

    sparkly = Sparkly.new("beautiful").to_s
    assert_equal "beautiful *.*:*.*", sparkly
  end

  def test_sparklify_has_a_tricky_bug
    s = "hello"
    sparkly1 = Sparkly.new(s).to_s
    assert_equal "hello *.*:*.*", sparkly1

    sparkly2 = Sparkly.new(s).to_s
    assert_equal "hello *.*:*.*", sparkly2
  end

  def test_sparklify_is_kind_of_dangerous
    s = "hello"
    3.times do
      Sparkly.new(s).to_s
    end

    greeting = "#{s}, Mike"
    assert_equal "hello, Mike", greeting
  end
end
