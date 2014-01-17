gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'child'
require_relative 'children'

class ChildrenTest < Minitest::Test
  def test_nobody_is_the_eldest
    children = Children.new

    assert_nil children.eldest
  end

  def test_the_eldest_of_one
    skip
    children = Children.new
    children << Child.new("Sarah", 5)
    assert_equal "Sarah", children.eldest.name
  end

  def test_the_eldest_of_several
    skip
    children = Children.new
    children << Child.new("Robert", 2)
    children << Child.new("Fran", 8)
    children << Child.new("Hilbert", 4)
    assert_equal "Fran", children.eldest.name
  end
end
