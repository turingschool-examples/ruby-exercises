require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/parrot'

class ParrotTest < Minitest::Test
  def test_it_exists
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})
    assert_instance_of Parrot, perry
  end

  def test_it_has_a_name
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})
    assert_equal "Perry", perry.name
  end

  def test_it_has_a_sound
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})
    assert_equal "Squawk!", perry.sound
  end

  def test_it_knows_words
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})
    assert_equal ["Sugar", "Flashy", "Giant", "Whisper"], perry.known_words
  end
end
