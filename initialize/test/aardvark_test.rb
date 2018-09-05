require 'minitest/autorun'
require 'minitest/pride'
require './lib/aardvark'

class AardvarkTest < Minitest::Test
  def test_it_exists
    art = Aardvark.new("Art")
    assert_instance_of Aardvark, art
  end

  def test_it_has_a_name
    art = Aardvark.new("Art")
    assert_equal "Art", art.name
  end
end
