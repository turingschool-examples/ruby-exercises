gem 'minitest', '~> 5.2'
require 'minitest/autorun'

require_relative 'teeth'

class TeethTest < Minitest::Test
  def test_teeth_are_not_clean
    teeth = Teeth.new
    refute teeth.clean?, "The teeth should NOT be clean."
  end

  def test_teeth_are_clean_after_brushing_them
    teeth = Teeth.new
    teeth.brush
    assert teeth.clean?, "The teeth should now be clean."
  end
end
