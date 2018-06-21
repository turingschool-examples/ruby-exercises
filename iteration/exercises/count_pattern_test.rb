require 'minitest/autorun'
require 'minitest/pride'

class CountPatternTest < Minitest::Test

  def test_1
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = 0
    ages.each do |age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    assert_equal 2, younger_than_thirty
  end

  def test_2
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = 0
    ages.each do |name, age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    assert_equal 2, younger_than_thirty
  end

  def test_3
    skip
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = 0
    ages.each do |age|
      # Your Code Here
    end

    assert_equal 0, older_than_fifty
  end

  def test_4
    skip
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = 0
    ages.each do |name, age|
      # Your Code Here
    end

    assert_equal 0, older_than_fifty
  end

  def test_5
    skip
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = 0
    # Your Code Here

    assert_equal 3, multiple_of_three
  end

  def test_6
    skip
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = 0
    # Your Code Here

    assert_equal 3, multiple_of_three
  end

  def test_7
    skip
    family = ["alice", "bob", "charlie", "david", "eve"]
    # Your Code Here

    assert_equal 2, names_with_three_letters
  end

  def test_8
    skip
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    # Your Code Here

    assert_equal 2, names_with_three_letters
  end

  def test_9
    skip
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    # Your code goes here

    assert_equal 2, whole_numbers
  end

  def test_10
    skip
    prices = {
      "shoes" => 1.0,
      "backpack" => 3.9,
      "books" => 5.99,
      "posters" => 18.5,
      "food" => 20.0
    }
    # Your Code Here

    assert_equal 2, whole_numbers
  end
end
