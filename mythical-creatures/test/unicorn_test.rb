gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/unicorn'

class UnicornTest < Minitest::Test

  def test_it_has_a_name
    # hint - you might need to create a new file! Re-read the README!
    unicorn = Unicorn.new("Robert")
    assert_equal "Robert", unicorn.name
  end

  def test_it_is_white_by_default
    # skip
    unicorn = Unicorn.new("Margaret")
    assert_equal "white", unicorn.color
    assert_equal true, unicorn.white?
  end

  def test_it_does_not_have_to_be_white
    # skip
    unicorn = Unicorn.new("Barbara", "purple")
    assert_equal "purple", unicorn.color
    assert_equal false, unicorn.white?
  end

  def test_unicorn_says_sparkly_stuff
    # skip
    unicorn = Unicorn.new("Johnny")
    assert_equal "**;* Wonderful! **;*", unicorn.say("Wonderful!")
    assert_equal "**;* I don't like you very much. **;*", unicorn.say("I don't like you very much.")
  end

end
