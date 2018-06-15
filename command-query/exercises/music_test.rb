gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'music'

class MusicTest < Minitest::Test
  def test_music_is_not_loud
    music = Music.new
    refute music.loud?
  end

  def test_music_is_loud_after_turning_up_the_volume
    skip
    music = Music.new
    music.turn_up
    assert music.loud?
  end
end
