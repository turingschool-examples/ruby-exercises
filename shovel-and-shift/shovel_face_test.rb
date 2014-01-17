gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'
require_relative 'face'

class ShovelFaceTest < Minitest::Homework
  def test_shovel_on_face
    face = Face.new
    face << "apple"
    face << "bread"
    face << "chicken"
    assert_equal face.foods_eaten

    # Go look at the Face class.
    # How do you define `<<`?
  end
end
