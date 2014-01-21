gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/costume'

class CostumeTest < Minitest::Test
  def test_costume_style
    costume = Costume.new("Batman")
    assert_equal "Batman", costume.style
  end

  def test_other_style_of_costume
    skip
    costume = Costume.new("Princess")
    assert_equal "Princess", costume.style
  end
end

