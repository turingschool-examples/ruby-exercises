gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'money'

class MoneyTest < Minitest::Test
  def test_money_starts_at_zero
    money = Money.new
    assert_equal 0, money.amount
  end

  def test_earn_money
    skip
    money = Money.new
    money.earn(20)
    assert_equal 20, money.amount
    money.earn(13)
    assert_equal 33, money.amount
  end

  def test_spend_money
    skip
    money = Money.new
    money.earn(50)
    money.spend(12)
    assert_equal 38, money.amount
    money.spend(7)
    assert_equal 31, money.amount
  end
  
  def test_cant_spend_money_that_you_dont_have
    money = Money.new
    money.earn(75)
    money.spend(75)
    assert_equal "You can't spend what you don't have", money.spend(12)
    assert_equal 0, money.amount
  end
end
