require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_1
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        younger_than_thirty = age
        break
      end
    end
    assert_equal 29, younger_than_thirty
  end

  def test_2
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        younger_than_thirty = name
        break
      end
    end
    assert_equal :ladonna, younger_than_thirty
  end

  def test_3
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = nil
    ages.each do |age|
      if age > 50
        older_than_fifty = age
        break
      end
    end
    assert_nil older_than_fifty
  end

  def test_4
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = nil
    ages.each do |name, age|
      if age > 50
        older_than_fifty = age
        break
      end
    end

    assert_nil older_than_fifty
  end

  def test_5
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = nil
    ages.each do |num|
      if num % 3 == 0
        multiple_of_three = num
        break
      end
    end

    assert_equal 39, multiple_of_three
  end

  def test_6
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = nil
    ages.each do |name, age|
      if age % 3 == 0
        multiple_of_three = name
        break
      end
    end
    assert_equal :abdi, multiple_of_three
  end

  def test_7
    people = ["Willie", "Carmen Sandiego", "Bryan", "Faith", "Zac"]
    carmen = nil
    people.each do |name|
      if name == "Carmen Sandiego"
        carmen = name
        break
      end 
    end
    assert_equal "Carmen Sandiego", carmen
  end

  def test_8
    places = {
      Bangkok: "Willie",
      Santa_Fe: "Carmen Sandiego",
      Rome: "Bryan",
      Munich: "Faith",
      Mogudishu: "Zac"
    }
    where_is_carmen_sandiego = nil
    places.each do |city, name|
      if name == "Carmen Sandiego"
        where_is_carmen_sandiego = city
        break
      end
    end
    assert_equal :Santa_Fe, where_is_carmen_sandiego
  end

  def test_9
    numbers = [3, 7, 13, 11, 10, 2, 17]
    even = nil
    numbers.each do |num|
      if num % 2 == 0
        even = num
        break
      end
    end
    assert_equal 10, even
  end

  def test_10
    skip
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here

    assert_equal :books, pending
  end

  def test_11
    skip
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here

    assert_equal "backpack", starts_with_b
  end

end