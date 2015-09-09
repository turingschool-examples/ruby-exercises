require_relative "test_helper"
require "./lib/hello"

class HelloTest < Minitest::Test

  def test_it_says_hello_to_brian
    hello = Hello.new

    result = hello.greet("Brian")
    expected = "Hello, Brian, nice to meet you!"

    assert_equal expected, result
  end

  def test_it_says_hello_to_jeff
    hello = Hello.new

    result = hello.greet("Jeff")
    expected = "Hello, Jeff, nice to meet you!"

    assert_equal expected, result
  end

end
