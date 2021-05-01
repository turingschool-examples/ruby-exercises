
RSpec.describe 'Arrays' do
  it 'test 0' do
    # in the line below, create a new empty array

    empty = Array.new
    expect(empty).to eq([])
  end

  it 'test 1' do
    # in the line below, create an array with the numbers 1 through 5
    nums = [1,2,3,4,5]

    expect(nums).to eq([1,2,3,4,5])
  end

  it 'test 2' do
    # in the line below, call a method on the nums variable
    # defined above to access the second element

    nums = [1,2,3]
    actual = nums[1]

    expected = 2
    expect(actual).to eq(expected)
  end

  it 'test 2-2' do
    # In the line below, call a method on the nums variable
    # defined above to access the last element
    nums = [1,2,3]
    actual = nums.last
    expected = 3
    expect(actual).to eq(expected)

    # Now try to find another way to achieve the same effect
    nums = [1,2,3]
    actual = nums[-1]
    expected = 3
    expect(actual).to eq(expected)
  end

  it 'test 3' do
    hummus = ["tahini", "chickpeas", "lemons"]
    # Call a method on the hummus variable that will
    # tell us how many elements there are in the array
    expect(hummus.count).to eq(3)
  end

  it 'test 4' do
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]
    # In the line below, add the element "Brazil" to the end of the world_cup array
    world_cup << "Brazil"
    expect(world_cup.last).to eq("Brazil")

    # Use a different method to add the element "Japan" to the end of the array
    world_cup << "Japan"
    expect(world_cup.last).to eq("Japan")
  end

  it 'test 5' do
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]
    # Call a method on the world_cup variable to remove and return
    # the last element of the array
    last_element = world_cup.pop
    expect(last_element).to eq("Portugal")
    world_cup << "Portugal"
    expect(world_cup).to eq(["Germany", "Mexico", "Iceland", "Portugal"])
  end

  it 'test 6' do
    karaoke = ["Shake it Off", "Dancing Queen", "Bohemian Rhapsody"]
    # Call a method on the karaoke variable to ask whether "Toxic"
    # is an element or not
    toxic_in_array = karaoke.include?("Toxic")
    expect(toxic_in_array).to eq(false)

    # Now call a method on the karaoke variable to ask whether "Dancing Queen"
    # is an element or not
    dancing_queen_in_array = karaoke.include?("Dancing Queen")
    expect(dancing_queen_in_array).to eq(true)
  end

  it 'test 7' do
    band = ["Guitar", "Drums", "Bass"]
    # Call a method on the band variable to add the element "Vocals"
    # to the beginning of the array

    actual = band.unshift("Vocals")
    expect(actual).to eq(["Vocals", "Guitar", "Drums", "Bass"])
    actual = band.unshift("Banana")
    expect(actual).to eq(["Banana", "Vocals", "Guitar", "Drums", "Bass"])
  end

  it 'test 8' do
    garden = ["Tulips", "Tomatoes", "Basil", "Peppers"]
    # Call a method to remove and return the first element from the garden array
    first_element = garden.shift
    expect(garden).to eq(["Tomatoes", "Basil", "Peppers"])
    expect(first_element).to eq("Tulips")
  end

  it 'test 9' do
    teams = ["Rockies", "Avalanche", "Nuggets", "Broncos", "Rapids"]
    # Call a method on the teams variable to get the second, third, and fourth teams
    some_teams = teams[1..3]
    expect(some_teams).to eq(["Avalanche", "Nuggets", "Broncos"])

    # Now use a different method on the teams variable to get the first and second teams
    some_teams = teams[0..1]
    expect(some_teams).to eq(["Rockies", "Avalanche"])
  end

  it 'test 10' do
    fourteeners = ["Pikes Peak", nil, "Mount Elbert", nil, "Mount Evans"]
    # Call a method on the fourteeners variable to remove the nils
    fourteeners = fourteeners.compact
    expect(fourteeners).to eq(["Pikes Peak", "Mount Elbert", "Mount Evans"])
  end

  it 'test 11' do
    pokemon = [["Squirtle", "Charmander", "Bulbasaur"], ["Pikachu"], "Staryu"]
    # Call a method on the pokemon variable to remove the nesting
    pokemon = pokemon.flatten
    expect(pokemon).to eq(["Squirtle", "Charmander", "Bulbasaur", "Pikachu", "Staryu"])
  end

  it 'test 12' do
    scores = [23, 56, 34, 29, 48]
    # Call a method on the scores variables that will
    # move the elements two spots to the left
    new_scores = scores.rotate(2)
    expect(new_scores).to eq([34, 29, 48, 23, 56])

    # Now call a method on the scores variables that will
    # move the elements one spot to the right
    new_scores = scores.rotate(-1)
    expect(new_scores).to eq([48, 23, 56, 34, 29])
  end

  it 'test 13' do
    vowels = ["a", "e", "y", "i", "o", "u", "y"]
    # Call a method on the vowels variable to remove "y"
    vowels.delete("y")
    expect(vowels).to eq(["a", "e", "i", "o", "u"])
  end

  it 'test 14' do
    furniture = ["couch", "bed", "table"]
    # Call a method on the furniture variable to add the element
    # "dresser" in between the elements "couch" and "bed"
    new_furniture = furniture.insert(1, "dresser")
    expect(new_furniture).to eq(["couch", "dresser", "bed", "table"])
  end

  xit 'test 15' do
    children = ["Sarah", "Owen", "Peter"]
    # Call a method on the children variable to combine them into
    # one string like this: "Sarah, Owen, Peter"
    one_string = children
    expect(one_string).to eq("Sarah, Owen, Peter")
  end

  xit 'test 16' do
    ascending = [1,2,3,4,5]
    # Call a method on the ascending variable to create an array
    # with the elements in the opposite order
    descending = ascending
    expect(descending).to eq([5,4,3,2,1])
  end

  xit 'test 17' do
    dice = [1,2,3,4,5,6]
    # Call a method on the dice variable to get a random element out
    # of the array
    roll = dice
    expect(roll <= 6).to eq(true)
    expect(roll >= 1).to eq(true)
    # Note, this assertion assumes the Ruby Version is 2.4 or higher.
    # This test will fail with expecting roll to be a FixNum if the
    # Ruby version is 2.3 or earlier
    expect(roll).to be_a(Integer)
  end

end
