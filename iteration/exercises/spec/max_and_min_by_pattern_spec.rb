RSpec.describe 'max and min by pattern' do

  it 'test 1'  do
    numbers = [1, 100, 1000, 1000000]
    greatest = numbers[0]
    # the original array <numbers> does NOT need to be sorted first 
    # cuz the method below will always find the greatest number after it's full iteration
    
    numbers.each do |number|
      if number > greatest
        greatest = number
      end
    end

    expect(greatest).to eq(1000000)
  end



  it 'test 2' do
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1000000
    }

    greatest = magnitudes[magnitudes.keys[0]]
    # The first element (index pos. 0) of the value(s) of the keys is being called on here

    magnitudes.each do |name, value|
      if value > greatest
        greatest = value
      end
    end

    expect(greatest).to eq(1000000)
  end



  it 'test 3' do
    meals = ["banana", "nuts", "salad", "steak", "cake"]
    shortest_word = meals[0]
    
    meals.each do |meal|
      if meal.length < shortest_word.length
        shortest_word = meal
      end
    end
 
    expect(shortest_word).to eq("nuts")
  end




  it 'test 4' do
    meals = {
      breakfast: "banana",
      snack: "nuts",
      lunch: "salad",
      dinner: "steak",
      dessert: "cake"
    }
    shortest_word = meals[meals.keys.first]

    # meals[meals.keys.first] =(is equal to)= meals[:breakfast] => "banana"
    # meals returns hash, keys returns array, first returns string/value
    # shortest_word = meals[meals.keys[0]] # This is the same as the line above

    meals.each do |meal, dish|
      if dish.length < shortest_word.length
        shortest_word = dish
      end
    end

    expect(shortest_word).to eq("nuts")
  end



  it 'test 4.5' do
    meals = {
      breakfast: "banana",
      snack: "nuts",
      lunch: "salad",
      dinner: "steak",
      dessert: "cake"
    }
    
    # longest_word = meals[meals.keys.last]
    # meals.each do |meal, dish|
    #   if dish.length > longest_word.length
    #     longest_word = dish
    #   end
    # end
    # expect(longest_word).to eq("banana")

    
    # words_length_array = meals.map do |meal, dish|
    #   [dish.length, dish]
    # end.sort.group_by do |dish|
    #   dish.first
    # end
    #=> {4=>[[4, "cake"], [4, "nuts"]], 5=>[[5, "salad"], [5, "steak"]], 6=>[[6, "banana"]]}

    # words_length.sort
    # words_length.sort.group_by(&:first)
    # &: is a shortcut for 


    # .map returns a modified ARRAY / .each returns the original collection (hash/array)
    words_length_array = meals.map do |meal, dish|
      [dish.length, dish]
    end.sort

    expect(words_length_array.first.last).to eq("cake")
    #=> words_length_array: {[4, "cake"], [4, "nuts"], [5, "salad"], [5, "steak"], [6, "banana"]}
    #=> words_length_array.first: [4, "cake"]
    #=> words_length_array.first.last: "cake"

    expect(words_length_array.last.last).to eq("banana")
  end




  it 'test 5' do
    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]

    stats.each do |element|
      if most_digits.to_s.delete(".").length < element.to_s.delete(".").length
        most_digits = element
      end
    end

    expect(most_digits).to eq(0.27601)
  end



  it 'test 6' do
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }

    most_digits = stats[stats.keys.first]

    stats.each do |title, number|
      # if there was only one value in the || it would default to the ARRAY of the key-value PAIR
      if most_digits.to_s.delete(".").length < number.to_s.delete(".").length
        most_digits = number
      end
    end


    expect(most_digits).to eq(0.27601)
  end




  it 'test 7' do
    ages = [39, 45, 29, 24, 50]
    oldest = ages[0]

    ages.each do |age|
      if age > oldest
        oldest = age
      end
    end

    expect(oldest).to eq(50)
  end




  xit 'test 8' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }

    # oldest = {}
    # # We must have this variable set to something so it can be redefined inside the code block
    # oldest_age = ages[ages.keys.first]

    # ages.each do |name, age|
    #   if age > oldest_age
    #     oldest_age = age
    #     oldest = {name: name.to_s, age: age}
    #     # Here we redefine that previously made empty hash
    #   end
    # end

    # expected = {name: "miguel", age: 50}
    # expect(oldest).to eq(expected)

    ## ATTEMPT TO USE .MAP ##

    oldest_age = ages[ages.keys.first]
    oldest = ages.map do |name, age|
      if age > oldest_age
        oldest_age = age
        {name: name.to_s, age: age}
      end
    end.compact
    # we use .compact cuz .map returns nil for elements that's do NOT pass the if conditional!
    expect(oldest.last).to eq(expected)
    #if you don't put .last you will get an array returned cuz .map returns an array,
    # AND the array will include multiple hashes (last line of our code block) that were created 
    # so you only want the LAST one/oldest one!
  end



  


  xit 'test 9' do
    programmers = [["katrina", "sandi", "jim", "aaron", "desi"], ["abby", "jon", "susan"]]
    # Your Code Here

    expect(fewest_programmers).to eq(["abby", "jon", "susan"])
  end




  xit 'test 10' do
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    # Your Code Here

    expect(fewest_programmers).to eq(:java)
  end
end
