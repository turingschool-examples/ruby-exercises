gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'baby'

class BabyTest < Minitest::Test
  def test_babies_are_tired
    baby = Baby.new
    assert baby.tired?, "The baby is tired."
  end

  def test_not_so_tired_after_a_nap
    skip
    baby = Baby.new
    baby.nap
    refute baby.tired?, "Naps help combat drowsiness."
  end

end
