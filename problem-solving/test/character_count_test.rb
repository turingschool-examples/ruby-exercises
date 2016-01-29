require_relative "test_helper"
require "./lib/character_count"

class CharacterCountTest < Minitest::Test

  def test_it_can_count_a_small_word
    cc = CharacterCount.new

    result = cc.count("test")
    expected = 4

    assert_equal expected, result
  end

  def test_it_can_count_another_word
    cc = CharacterCount.new

    result = cc.count("pterodactyl")
    expected = 11

    assert_equal expected, result
  end

  def test_it_can_count_spaces
    cc = CharacterCount.new

    result = cc.count(" ")
    expected = 1

    assert_equal expected, result
  end

  def test_it_can_handle_sentences
    cc = CharacterCount.new

    result = cc.count("hello world")
    expected = 11

    assert_equal expected, result
  end

end
