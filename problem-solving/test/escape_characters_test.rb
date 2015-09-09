require_relative "test_helper"
require "./lib/escape_characters"

class EscapeCharactersTest < Minitest::Test

  def test_it_can_add_quotation_marks
    ec = EscapeCharacters.new

    result = ec.quote("These aren't the droids you're looking for.")
    expected = "\"These aren't the droids you're looking for.\""

    assert_equal expected, result
  end

  def test_it_can_add_quotation_marks_to_something_else
    ec = EscapeCharacters.new

    result = ec.quote("By Horace's Beard!")
    expected = "\"By Horace's Beard!\""

    assert_equal expected, result
  end
end
