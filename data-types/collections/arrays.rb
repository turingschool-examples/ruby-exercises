require 'minitest/autorun'
require 'minitest/pride'

class ArraysTest < Minitest::Test
  def test_0
    # In the line below, create a new empty array
    empty = Array.new
    assert_equal [], empty
  end

  def test_1
    # In the line below, create and array with the numbers 1 - 5
    nums = (1..5).to_a
    assert_equal [1,2,3,4,5], nums
  end

  def test_2
    nums = [1,2,3]
    # In the line below, call a method on the nums variable
    # defined above to access the second element
    actual = nums.at(1)
    expected = 2
    assert_equal expected, actual
  end

  def test_22
    # In the line below, call a method on the nums variable
    # defined above to access the last element
    nums = [1,2,3]
    actual = nums.last
    expected = 3
    assert_equal expected, actual

    # Now try to find another way to achieve the same effect
    nums = [1,2,3]
    actual = nums.at(-1)
    expected = 3
    assert_equal expected, actual
  end

  def test_3
    hummus = ["tahini", "chickpeas", "lemons"]
    # Call a method on the hummus variable that will
    # tell us how many elements there are in the array
    assert_equal 3, hummus.size
  end

  def test_4
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]
    # In the line below, add the element "Brazil" to the end of the world_cup array
    world_cup << "Brazil"
    assert_equal "Brazil", world_cup.last

    # Use a different method to add the element "Japan" to the end of the array
    world_cup.push("Japan")
    assert_equal "Japan", world_cup.last
  end

  def test_a
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]
    # Call a method on the world_cup variable to remove and return
    # the last element of the array
    last_element = world_cup.pop
    assert_equal "Portugal", last_element
    assert_equal ["Germany", "Mexico", "Iceland"], world_cup
  end

  def test_5
    karaoke = ["Shake it Off", "Dancing Queen", "Bohemian Rhapsody"]
    # Call a method on the karaoke variable to ask whether "Toxic"
    # is an element or not
    toxic_in_array = karaoke.include?('Toxic')
    assert_equal false, toxic_in_array

    # Now call a method on the karaoke variable to ask whether "Dancing Queen"
    # is an element or not
    dancing_queen_in_array = karaoke.include?('Dancing Queen')
    assert_equal true, dancing_queen_in_array
  end

  def test_b
    band = ["Guitar", "Drums", "Bass"]
    # Call a method on the band variable to add the element "Vocals"
    # to the beginning of the array
    band.unshift('Vocals')
    assert_equal ["Vocals", "Guitar", "Drums", "Bass"], band
  end

  def test_c
    garden = ["Tulips", "Tomatoes", "Basil", "Peppers"]
    # Call a method to remove and return the first element from the garden array
    first_element = garden.shift
    assert_equal ["Tomatoes", "Basil", "Peppers"], garden
    assert_equal "Tulips", first_element
  end

  def test_6
    skip
    teams = ["Rockies", "Avalanche", "Nuggets", "Broncos", "Rapids"]
    # Call a method on the teams variable to get the second, third, and fourth teams
    some_teams = teams
    assert_equal ["Avalanche", "Nuggets", "Broncos"], some_teams

    # Now use a different method on the teams variable to get the first and second teams
    some_teams = teams
    assert_equal ["Rockies", "Avalanche"], some_teams
  end

  def test_7
    skip
    fourteeners = ["Pikes Peak", nil, "Mount Elbert", nil, "Mount Evans"]
    # Call a method on the fourteeners variable to remove the nils
    fourteeners = fourteeners
    assert_equal ["Pikes Peak", "Mount Elbert", "Mount Evans"], fourteeners
  end

  def test_8
    skip
    pokemon = [["Squirtle", "Charmander", "Bulbasaur"], ["Pikachu"], "Staryu"]
    # Call a method on the pokemon variable to remove the nesting
    pokemon = pokemon
    assert_equal ["Squirtle", "Charmander", "Bulbasaur", "Pikachu", "Staryu"], pokemon
  end

  def test_9
    skip
    scores = [23, 56, 34, 29, 48]
    # Call a method on the scores variables that will
    # move the elements two spots to the left
    new_scores = scores
    assert_equal [34, 29, 48, 23, 56], new_scores

    # Now call a method on the scores variables that will
    # move the elements one spot to the right
    new_scores = scores
    assert_equal [48, 23, 56, 34, 29], new_scores
  end

  def test_10
    skip
    vowels = ["a", "e", "y", "i", "o", "u", "y"]
    # Call a method on the vowels variable to remove "y"

    assert_equal ["a", "e", "i", "o", "u"], vowels
  end

  def test_11
    skip
    furniture = ["couch", "bed", "table"]
    # Call a method on the furniture variable to add the element
    # "dresser" in between the elements "couch" and "bed"
    new_furniture = furniture
    assert_equal ["couch", "dresser", "bed", "table"], new_furniture
  end

  def test_12
    skip
    children = ["Sarah", "Owen", "Peter"]
    # Call a method on the children variable to combine them into
    # one string like this: "Sarah, Owen, Peter"
    one_string = children
    assert_equal "Sarah, Owen, Peter", one_string
  end

  def test_13
    skip
    ascending = [1,2,3,4,5]
    # Call a method on the ascending variable to create an array
    # with the elements in the opposite order
    descending = ascending
    assert_equal [5,4,3,2,1], descending
  end

  def test_14
    skip
    dice = [1,2,3,4,5,6]
    # Call a method on the dice variable to get a random element out
    # of the array
    roll = dice
    assert_equal true, roll <= 6
    assert_equal true, roll >= 1
    # Note, this assertion assumes the Ruby Version is 2.4 or higher.
    # This test will fail with expecting roll to be a FixNum if the
    # Ruby version is 2.3 or earlier
    assert_instance_of Integer, roll
  end

end
