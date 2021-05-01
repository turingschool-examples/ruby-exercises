RSpec.describe 'Hashes' do
  it 'test 1' do
    # In the line below, create a new empty hash called empty
    empty = Hash.new
    expect(empty).to eq({})
  end

  it 'test 2' do
    # In the line below, create an empty hash with a default value 0
    empty = Hash.new(0)
    expect(empty[:not_found]).to eq(0)
  end

  it 'test 3' do
    # In the line below, create a hash called ages. The hash should
    # have a key of "ben" with a value of 4 and a key of "kelly" with
    # a value of 6
    ages = {"ben" => 4, "kelly" => 6}
    expect(ages.length).to eq(2)
    expect(ages["ben"]).to eq(4)
    expect(ages["kelly"]).to eq(6)
  end

  it 'test 4' do
    # In the line below, create a hash called ages. The hash should
    # have a key of :ben with a value of 4 and a key of :kelly with
    # a value of 6.
    ages = {ben: 4, kelly: 6}
    expect(ages.length).to eq(2)
    expect(ages[:ben]).to eq(4)
    expect(ages[:kelly]).to eq(6)

           # There are two different syntaxes for doing this. Use the other way to
           # achieve the same result
           # ages = ______
           # assert_equal 2, ages.length
           # assert_equal 4, ages[:ben]
           # assert_equal 6, ages[:kelly]
  end

  it 'test 5' do
    # In the line below, create a new hash with
    # default values of zero
    # create a "tomatoes" key and a :carrots key
    ingredients = Hash.new(0)
    ingredients["tomatoes"] = 0
    ingredients[:carrots] = 0

    expect(ingredients["tomatoes"]).to eq(0)
    expect(ingredients[:carrots]).to eq(0)
  end

  it 'test 6' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    grapes = books["John Steinbeck"]
    expect(grapes).to eq("Grapes of Wrath")
  end

  it 'test 7' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # add a new key of "Ernest Hemmingway"
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    books["Ernest Hemmingway"] = "For Whom the Bell Tolls"
    expected = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird",
      "Ernest Hemmingway" => "For Whom the Bell Tolls"
    }
    expect(books).to eq(expected)
  end

  it 'test 8' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # change the value associated with
    # "John Steinbeck" to "Of Mice and Men"
    books["John Steinbeck"] = "Of Mice and Men"
    expected = {
      "John Steinbeck" => "Of Mice and Men",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    expect(books).to eq(expected)
  end

  it 'test 9' do
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # delete the key "Harper Lee"
    books.delete("Harper Lee")
    expected = {
      "John Steinbeck" => "Grapes of Wrath"
    }
    expect(books).to eq(expected)
  end

  it 'test 10' do
    books_hash = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # access the value "Grapes of Wrath"  in the line below
    books = books_hash[:John_Steinbeck]
    expected = "Grapes of Wrath"
    expect(books).to eq(expected)
  end

  it 'test 11' do
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # add a new key of :Ernest_Hemmingway
    # with a value of "For Whom the Bell Tolls"
    # in the line below
    books[:Ernest_Hemmingway] = "For Whom the Bell Tolls"
    expected = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird",
      Ernest_Hemmingway: "For Whom the Bell Tolls"
    }
    expect(books).to eq(expected)
  end

  it 'test 12' do
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # change the value associated with
    # :John_Steinbeck to "Of Mice and Men"
    books[:John_Steinbeck] = "Of Mice and Men"
    expected =  {
      John_Steinbeck: "Of Mice and Men",
      Harper_Lee: "To Kill a Mockingbird"
    }
    expect(books).to eq(expected)
  end

  it 'test 13' do
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    # Using the books hash defined above,
    # delete the key :Harper_Lee
    books.delete(:Harper_Lee)
    expected = {
      John_Steinbeck: "Grapes of Wrath"
    }
    expect(books).to eq(expected)
  end

  it 'test 14' do
    ages = {
      "Jimmy" => 4,
      "Julio" => 8,
      "Juliet" => 9
    }
    # Using the ages hash defined above
    # increment Julio's age by one
    ages["Julio"] += 1
    expect(ages["Julio"]).to eq(9)
  end

  it 'test 15' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # get an array of all the names
    names = ages.keys
    expect(names).to eq([:Jimmy, :Julio, :Juliet])
  end

  it 'test 16' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # get an array of all the ages
    age_list = ages.values
    expect(age_list).to eq([4, 8, 9])
  end

  it 'test 17' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Using the ages hash defined above
    # find the number of key/value pairs
    num_pairs = ages.count
    expect(num_pairs).to eq(3)
  end

  it 'test 18' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Call a method on the ages hash defined above
    # to figure out if :Jimmy is a key
    jimmy_in_hash = ages.keys.include?(:Jimmy)
    expect(jimmy_in_hash).to eq(true)

    # Now figure out if :Jackie is in the hash
    jackie_in_hash = ages.keys.include?(:Jackie)
    expect(jackie_in_hash).to eq(false)
  end

  it 'test 19' do
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    # Call a method on the ages hash defined above
    # to make the keys the values and vice versa
    opposite = ages.invert
    expected = {
      4 => :Jimmy,
      8 => :Julio,
      9 => :Juliet
    }
    expect(opposite).to eq(expected)
  end
end
