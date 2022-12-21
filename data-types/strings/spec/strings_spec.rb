RSpec.describe 'Strings' do
  it 'test 1' do
    name = "alice"
    # In place of the line below, call a method on the name variable
    # defined above to acheive the expected output.
    # actual = name._____
    # expected = "Alice"

    expect(name.capitalize).to eq("Alice")
  end

  it 'test 2' do
    name = "aLiCe"
    # In place of the line below, call a method to achieve the expected output.
    # actual = name._____
    # expected = "ALICE"

    expect(name.upcase).to eq("ALICE")
  end

  it 'test 3' do
    name = "AlIcE"
    # In place of the line below, call a method to achieve the expected output.
    # actual = name._____
    # expected = "alice"

    expect(name.downcase).to eq("alice")
  end

  it 'test 4' do
    rhyme = "peter piper picked a peck of picked peppers"
    # In place of the line below, call a method to achieve the expected output.
    # actual = rhyme._____
    # expected = "sreppep dekcip fo kcep a dekcip repip retep"

    expect(rhyme.reverse).to eq("sreppep dekcip fo kcep a dekcip repip retep")
  end

  it 'test 5' do
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    # actual = word.______
    # expected = "kicking"

    expect(word.replace("kicking")).to eq("kicking")
    expect(word.gsub(/t/, "k")).to eq("kicking")
  end

  it 'test 6' do
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    # actual = word.______
    # expected = "clocking"

    expect(word.gsub(/ti/, "clo")).to eq("clocking")
    expect(word.gsub(/i/, "*")).to eq("t*ck*ng")
  end

  it 'test 7' do
    words = "five sleepy kittens"
    # In place of the line below, call a method to achieve the expected output.
    # actual = words.______
    # expected = "fiv* sl**py kitt*ns"

    expect(words.gsub(/e/, "*")).to eq("fiv* sl**py kitt*ns")
  end

  it 'test 8' do
    greeting = "Hello!!"
    # In place of the line below, call a method to achieve the expected output.
    # actual = greeting._____
    # expected = "Hello!"

    expect(greeting.chop).to eq("Hello!")
  end

  it 'test 9' do
    greeting = "Hello!!\n"
    # In place of the line below, call a method to achieve the expected output.
    # actual = greeting._____
    # expected = "Hello!!"

    expect(greeting.chomp).to eq("Hello!!")
  end

  it 'test 10' do
    greeting = "Hello!!\n\n"
    # In place of the line below, call a method to achieve the expected output.
    # actual = greeting._____
    # expected = "Hello!!\n"

    expect(greeting.chomp).to eq("Hello!!\n")
    expect(greeting.chomp.chomp).to eq("Hello!!")
  end

  it 'test 11' do
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    # actual = rhyme._____
    # expected = "ny, mny, miny, mo"

    expect(rhyme.delete("e")).to eq("ny, mny, miny, mo")
  end

  it 'test 12' do
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    # actual = rhyme._____
    # expected = "ny, mny, mny, m"

    expect(rhyme.delete("eio")).to eq("ny, mny, mny, m")
    expect(rhyme.delete("oei")).to eq("ny, mny, mny, m")
  end

  it 'test 13' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of characters in the string
    # actual = greeting._____
    # expected = 12

    expect(greeting.length).to eq(12)
  end

  it 'test 14' do
    greeting = "Hello World!\n"
    # In place of the line below, call a method to get the number of characters in the string
    # actual = greeting._____
    # expected = 13

    expect(greeting.length).to eq(13)
  end

  it 'test 15' do
    greeting = "Hello       World!"
    # In place of the line below, call a method to get the number of characters in the string
    # actual = greeting._____
    # expected = 18

    expect(greeting.length).to eq(18)
  end

  it 'test 16' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string
    # actual = greeting._____
    # expected = 2

    expect(greeting.count("o")).to eq(2)
  end

  it 'test 17' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string
    # actual = greeting._____
    # expected = 3

    expect(greeting.count("aeiou")).to eq(3)
  end

  it 'test 18' do
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'
    # actual = greeting._____
    # expected = true

    expect(greeting.include?("llo")).to eq(true)
  end

  it 'test 19' do
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'
    # actual = greeting._____
    # expected = false

    expect(greeting.include?("lol")).to eq(false)
  end

  it 'test 20' do
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    # In place of the line below, use string manipulation to combine the
    #greeting and name variables to acheive the expected outcome
    # actual = _________
    # expected = "Hello World, my name is Harry Potter"

    expect("Hello World, my name is #{name}").to eq("Hello World, my name is Harry Potter")
  end

  it 'test 21' do
    # See if you can use another method than the last test to achieve the same goal:
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    # actual = ________
    # expected = "Hello World, my name is Harry Potter"
    # .join(' ')

    expect(greeting.concat(" ", name)).to eq("Hello World, my name is Harry Potter")
  end

  it 'test 22' do
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    # actual = ________
    # expected = "Hello World, my name is Harry Potter"

    expect(greeting + " " + name).to eq("Hello World, my name is Harry Potter")
  end

  it 'test 23' do
    phrase = "  \n\t to the moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    # actual = ________
    # expected = "to the moon"

    expect(phrase.strip).to eq("to the moon")
  end
end
