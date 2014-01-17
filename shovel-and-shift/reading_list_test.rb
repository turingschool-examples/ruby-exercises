gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'
require_relative 'reading_list'

class ReadingListTest < Minitest::Test
  def test_basic_reading_list
    list = ReadingList.new

    assert_equal ["1984", "The Hobbit", "I, Robot"], list.books
  end

  def test_add_books
    list = ReadingList.new
    list << "Dune"
    assert_equal ["1984", "The Hobbit", "I, Robot", "Dune"], list.books
  end

  def test_different_reading_lists
    alice = ReadingList.new
    bob = ReadingList.new

    alice << "Cryptonomicon"
    assert_equal ["1984", "The Hobbit", "I, Robot", "Cryptonomicon"], alice.books

    bob << "Mindstar Rising"
    assert_equal ["1984", "The Hobbit", "I, Robot", "Mindstar Rising"], bob.books
  end
end
