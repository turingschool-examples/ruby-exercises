require 'minitest/autorun'
require 'minitest/pride'
require './lib/kangaroo'

class KangarooTest < Minitest::Test
  def test_it_exists
    kerrie = Kangaroo.new("Kerrie", ["Kat", "Kyle"])
    assert_instance_of Kangaroo, kerrie
  end

  def test_it_has_children
    kerrie = Kangaroo.new("Kerrie", ["Kat", "Kyle"])
    assert_equal ["Kat", "Kyle"], kerrie.children
  end
end
