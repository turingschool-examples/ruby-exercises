gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class HashTest < Minitest::Homework
  be_gentle!

  def test_empty
    assert_equal __, {}.empty?
    assert_equal __, {"a" => "apple"}.empty?
  end

  def test_access
    ages = {16 => ["Alice", "Bob"], 24 => ["Charlie", "Dave"], 37 => ["Eve"]}
    assert_equal __, ages[16]
    assert_equal __, ages[37]
  end

  def test_assignment
    stuff = {"a" => ["aardvark", "apple"], "b" => ["butcher", "ballerina"]}
    stuff["c"] = ["cook", "caramel candy"]
    assert_equal __, stuff["c"]
    stuff["b"] = "brandy"
    assert_equal __, stuff["b"]
    stuff["a"] = stuff["a"] + ["apricot"]
    assert_equal __, stuff["a"]
  end

  def test_keys
    assert_equal __, {}.keys
    assert_equal __, {1 => "one", 2 => "two"}.keys
    assert_equal __, {"a" => "apple", "banana" => "b"}.keys
  end

  def test_values
    assert_equal __, {}.values
    assert_equal __, {1 => "one", 2 => "two"}.values
    assert_equal __, {"a" => "apple", "banana" => "b"}.values
  end

  def test_include
    boolean = {}.include?("a")
    maybe boolean
    boolean = {"a" => "apple"}.include?("a")
    maybe boolean
    boolean = {"a" => "apple"}.include?("apple")
    maybe boolean
  end

  def test_member
    boolean = {}.member?("a")
    maybe boolean
    boolean = {"a" => "apple"}.member?("a")
    maybe boolean
    boolean = {"a" => "apple"}.member?("apple")
    maybe boolean
  end

  def test_invert
    h1 = {"a" => "apple", "b" => "banana"}.invert
    expected_h1 = __
    assert_equal expected_h1, h1

    h2 = {1 => "one", 2 => "two"}.invert
    expected_h2 = __
    assert_equal expected_h2, h2
  end

  def test_length
    assert_equal __, {}.length
    assert_equal __, {"a" => "apple"}.length
    assert_equal __, {"a" => "apple", "b" => "banana"}.length
  end

  def test_merge
    h1 = {}.merge({})
    h2 = {}.merge({"a" => "apple"})
    h3 = {"a" => "apple"}.merge({"b" => "banana"})
    h4 = {"a" => "apple"}.merge({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.merge({"b" => "breadfruit"})
    
    expected_h1 = __
    expected_h2 = __
    expected_h3 = __
    expected_h4 = __
    expected_h5 = __

    assert_equal expected_h1, h1
    assert_equal expected_h2, h2
    assert_equal expected_h3, h3
    assert_equal expected_h4, h4
    assert_equal expected_h5, h5
  end

  def test_update
    h1 = {}.update({})
    h2 = {}.update({"a" => "apple"})
    h3 = {"a" => "apple"}.update({"b" => "banana"})
    h4 = {"a" => "apple"}.update({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.update({"b" => "breadfruit"})
    
    expected_h1 = __
    expected_h2 = __
    expected_h3 = __
    expected_h4 = __
    expected_h5 = __

    assert_equal expected_h1, h1
    assert_equal expected_h2, h2
    assert_equal expected_h3, h3
    assert_equal expected_h4, h4
    assert_equal expected_h5, h5
  end
end
