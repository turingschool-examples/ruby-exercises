require 'minitest/autorun'
require 'minitest/pride'

class ReducePatternTest < Minitest::Test

  def test_1
    numbers = [28, 12, 38, 1, 91]
    # Iterate over the numbers array defined above,
    # to find the difference of all the numbers
    difference = 0
    numbers.each do |number|
      difference = difference - number
    end
    assert_equal -170, difference
  end

  def test_2
    bills = {
      rent: 800,
      car: 240,
      insurance: 110,
      medical: 1112
    }
    # Iterate over the bills hash defined above
    # to find the difference of all the values

    difference = 0
    bills.each do |(category, amount)|
      difference -= amount
    end
    assert_equal -2262, difference
  end

  def test_3
    skip
    numbers = [2, 3, 5, 7]
    # Iterate over the numbers array defined above
    # to find the product of all the numbers

    product = 1
    numbers.each do |number|
      # Your code goes here
    end
    assert_equal 210, product
  end

  def test_4
    skip
    scrabble_score = {
      letter_total: 23,
      word_muliplier: 3,
      bonus: 2
    }
    # Iterate over the scarbble_score hash defined above
    # to find the product of all the values

    product = 1
    scrabble_score.each do |(key, value)|
      # Your Code Here
    end
    assert_equal 138, product
  end

  def test_5
    skip
    airlines = ["Southwest", "Delta", "United", "Frontier"]
    # Iterate over the airlines array defined above to
    # create a hash with the name of the airline as the
    # key and the length of the name as the value

    number_of_letters = {}
    # Your Code Here

    expected = {
      "Southwest" => 9,
      "Delta" => 5,
      "United" => 6,
      "Frontier" => 8
    }
    assert_equal expected, number_of_letters
  end

  def test_6
    skip
    topping_calories = {
      pepperoni: 430,
      sausage: 400,
      olives: 10,
      peppers: 10,
      onions: 20
    }
    # Iterate over the topping_calories hash defined above
    # to create an array of all the toppings

    toppings = []
    # Your Code Here

    assert_equal ["pepperoni", "sausage", ""], toppings
  end

  def test_7
    skip
    elements = [["a", 1], ["b", 9], ["c", 21]]
    # Iterate over the elements array defined above
    # to find the sum of all the integers

    # Your Code Here

    assert_equal 31, sum_of_second_values

  end

  def test_8
    skip
    toppings = {
      pepperoni: {
        calories: 430,
        quantity: 5
      },
      sausage: {
        calories: 400,
        quantity: 10
      },
      olives: {
        calories: 10,
        quantity: 20
      },
      peppers: {
        calories: 10,
        quantity: 20
      },
      onions: {
        calories: 20,
        quantity: 20
      }
    }
    # Iterate over the toppings array defined above to find
    # total calories. You will need to multiply each toppings
    # calorie count by the quantity

    # Your Code Here

    assert_equal 6950, total_calories
  end

  def test_9
    skip
    grades = {
      quizzes: [8, 5, 3, 6, 5],
      tests: [23, 21, 24],
      essays: [10, 11, 10],
      final: [47]
    }
    # Iterate over the elemnts array defined above
    # to calculate the final grade. The final grade is
    # calculated by averaging each category together and
    # summing all of the averages

    # Your code goes here

    assert_equal 85.40, final_grade
  end

  def test_10
    skip
    menu = {
      empanadas: {
        flavors: ["chicken", "potato", "steak", "veggie"],
        gluten_free: false
      },
      scones: {
        flavors: ["blueberry", "vanilla"],
        gluten_free: false
      },
      parfaits: {
        flavors: ["blueberry", "strawberry", "cherry"],
        gluten_free: true
      }
    }

    # Iterate over the menu hash above to create a printable
    # version of the menu

    # Your Code Here

    expected =  "Menu:\n"\
                "- chicken, potato, steak, and veggie empanadas (non gluten free)\n"\
                "- blueberry, and vanilla scones (non gluten free)\n"\
                "- blueberry, strawberry, cherry parfaits (gluten free)\n"

    assert_equal expected, printable_menu
  end
end
