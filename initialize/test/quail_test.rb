require 'minitest/autorun'
require 'minitest/pride'
require './lib/quail'

class QuailTest < Minitest::Test
  def test_it_exists
    quinn = Quail.new("Quinn")
    assert_instance_of Quail, quinn
  end

  def test_it_has_a_name
    quinn = Quail.new("Quinn")
    assert_equal "Quinn", quinn.name
  end

  def test_it_will_make_sure_its_name_is_capitalized
    quinn = Quail.new("quinn")
    assert_equal "Quinn", quinn.name
  end
end
