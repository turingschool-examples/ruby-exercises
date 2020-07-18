require 'minitest/autorun'
require 'minitest/pride'

# There's a video walk-through of this exercise available here:
# https://youtu.be/aeAkLxr5diE
# and a helpful blog post on this general topic here:
# https://josh.works/turing-backend-prep-02-first-tests-and-making-them-pass

class StringTest < Minitest::Test
  def test_1
    # skip
    name = "alice"
    # In place of the line below, call a method on the name variable
    # defined above to acheive the expected output.
    actual = name.capitalize
    expected = "Alice"

    assert_equal expected, actual
  end

  def test_2
    # skip
    name = "aLiCe"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.upcase
    expected = "ALICE"

    assert_equal expected, actual
  end

  def test_3
    # skip
    name = "AlIcE"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.downcase
    expected = "alice"

    assert_equal expected, actual
  end

  def test_4
    # skip
    rhyme = "peter piper picked a peck of picked peppers"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.reverse
    expected = "sreppep dekcip fo kcep a dekcip repip retep"

    assert_equal expected, actual
  end

  def test_5
    # skip
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.sub("t", "k")
    expected = "kicking"

    assert_equal expected, actual
  end

  def test_6
    # skip
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.sub("tic", "cloc")
    expected = "clocking"

    assert_equal expected, actual
  end

  def test_7
    # skip
    words = "five sleepy kittens"
    # In place of the line below, call a method to achieve the expected output.
    actual = words.gsub("e", "*")
    expected = "fiv* sl**py kitt*ns"

    assert_equal expected, actual
  end

  def test_8
    # skip
    greeting = "Hello!!"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chop
    expected = "Hello!"

    assert_equal expected, actual
  end

  def test_9
    # skip
    greeting = "Hello!!\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp
    expected = "Hello!!"

    assert_equal expected, actual
  end

  def test_10
    # skip
    greeting = "Hello!!\n\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chop
    expected = "Hello!!\n"

    assert_equal expected, actual
  end

  def test_11
    # skip
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.delete("e")
    expected = "ny, mny, miny, mo"

    assert_equal expected, actual
  end

  def test_12
    # skip
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.delete("aeiou")
    expected = "ny, mny, mny, m"

    assert_equal expected, actual
  end

  def test_13
    # skip
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 12

    assert_equal expected, actual
  end

  def test_14
    # skip
    greeting = "Hello World!\n"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 13

    assert_equal expected, actual
  end

  def test_15
    # skip
    greeting = "Hello       World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 18

    assert_equal expected, actual
  end

  def test_16
    # skip
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string
    actual = greeting.count("o")
    expected = 2

    assert_equal expected, actual
  end

  def test_17
    # skip
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string
    actual = greeting.count("aeiou")
    expected = 3

    assert_equal expected, actual
  end

  def test_18
    # skip
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'
    actual = greeting.include?("llo")
    expected = true

    assert_equal expected, actual
  end

  def test_19
    # skip
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'
    actual = greeting.include?("lol")
    expected = false

    assert_equal expected, actual
  end

  def test_20
    # skip
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    # In place of the line below, use string manipulation to combine the
    #greeting and name variables to acheive the expected outcome
    actual = greeting.concat(" ", name)
    expected = "Hello World, my name is Harry Potter"
  end

  def test_21
    # skip
    # See if you can use another method than the last test to achieve the same goal:
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = name.prepend(greeting, " ")
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_22
    # skip
    # Again, using a different method:
    greeting = "Hello World, my name is" #this needs to be updated
    name = "Harry Potter"
    actual = greeting + " " + name
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_23
    # skip
    # Once more, using a different method:
    greeting = "Hello World, my name is" #this needs to be updated
    name = "Harry Potter"
    actual = greeting << " " + name
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_24
    # skip
    phrase = "  \n\t to the moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    actual = phrase.strip
    expected = "to the moon"

    assert_equal expected, actual
  end
end
