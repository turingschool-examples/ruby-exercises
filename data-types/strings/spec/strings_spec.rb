RSpec.describe 'Strings' do
  it 'test 1' do
    name = "alice"
    # In place of the line below, call a method on the name variable
    # defined above to acheive the expected output.
    actual = name.capitalize
    expected = "Alice"

    expect(actual).to eq(expected)
  end

  it 'test 2' do
    name = "aLiCe"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.upcase
    expected = "ALICE"

    expect(actual).to eq(expected)
  end

  it 'test 3' do
    name = "AlIcE"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.downcase
    expected = "alice"

    expect(actual).to eq(expected)
  end

  it 'test 4' do
    rhyme = "peter piper picked a peck of picked peppers"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.reverse  
    expected = "sreppep dekcip fo kcep a dekcip repip retep"

    expect(actual).to eq(expected)
  end

  it 'test 5' do
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.sub(word[0],"k")
    expected = "kicking"

    expect(actual).to eq(expected)
  end

  it 'test 6' do
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output. 
    actual = word.gsub("ti", "clo")
    expected = "clocking"

    expect(actual).to eq(expected)
  end

  it 'test 7' do
    words = "five sleepy kittens"
    # In place of the line below, call a method to achieve the expected output.
    actual = words.gsub("e", "*")
    expected = "fiv* sl**py kitt*ns"

    expect(actual).to eq(expected)
  end

  it 'test 8' do
    greeting = "Hello!!"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp("!")
    expected = "Hello!"

    expect(actual).to eq(expected)
  end

  it 'test 9' do
    greeting = "Hello!!\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp("\n")
    expected = "Hello!!"

    expect(actual).to eq(expected)
  end

  it 'test 10' do
    greeting = "Hello!!\n\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp("\n")
    expected = "Hello!!\n"

    expect(actual).to eq(expected)
  end

  it 'test 11' do
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.gsub(/e/, '')
    expected = "ny, mny, miny, mo"

    expect(actual).to eq(expected)
  end

  it 'test 12' do
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.gsub(/[oei]/, '')
    expected = "ny, mny, mny, m"

    expect(actual).to eq(expected)
  end

  it 'test 13' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 12

    expect(actual).to eq(expected)
  end

  it 'test 14' do
    greeting = "Hello World!\n"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.chomp("n").length
    expected = 13

    expect(actual).to eq(expected)
  end

  it 'test 15' do
    greeting = "Hello       World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 18

    expect(actual).to eq(expected)
  end

  it 'test 16' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string
    actual = greeting.count('o')
    expected = 2

    expect(actual).to eq(expected)
  end

  it 'test 17' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string
    actual = greeting.scan(/[aeiou]/).length
    expected = 3

    expect(actual).to eq(expected)
  end

  it 'test 18' do
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'
    actual = greeting.include?("llo")
    expected = true

    expect(actual).to eq(expected)
  end

  it 'test 19' do
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'
    actual = greeting.include?("lol")
    expected = false

    expect(actual).to eq(expected)
  end

  it 'test 20' do
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    # In place of the line below, use string manipulation to combine the
    #greeting and name variables to acheive the expected outcome
    actual = greeting + " " + name
    expected = "Hello World, my name is Harry Potter"

    expect(actual).to eq(expected)
  end

  it 'test 21' do
    # See if you can use another method than the last test to achieve the same goal:
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = greeting <<  " " << name
    expected = "Hello World, my name is Harry Potter"

    expect(actual).to eq(expected)
  end

  it 'test 22' do
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = "Hello World, my name is" + " " + name
    expected = "Hello World, my name is Harry Potter"

    expect(actual).to eq(expected)
  end

  it 'test 23' do
    phrase = "  \n\t to the moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    actual = phrase.gsub(/[\n\t\n\n\t]/,'').strip 
    expected = "to the moon"

    expect(actual).to eq(expected)
  end
end
    