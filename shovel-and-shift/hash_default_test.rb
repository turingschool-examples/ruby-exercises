gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class HashDefaultTest < Minitest::Test
  def test_sometimes_syntax_error
    # These all work.
    assert_equal({}, {})
    assert_equal({}, Hash.new)
    expected = {}
    assert_equal expected, {}

    # This one fails. Fix it.
    assert_equal {}, Hash.new
  end

  def test_default_array_as_argument
    skip
    lists = Hash.new([])

    assert_equal __, lists
    assert_equal __, lists[:a]
    assert_equal __, lists[:b]
    maybe lists[:a].object_id == lists[:b].object_id
  end

  def test_default_array_as_block
    skip
    lists = Hash.new { [] }

    assert_equal __, lists
    assert_equal __, lists[:a]
    assert_equal __, lists[:b]
    maybe lists[:a].object_id == lists[:b].object_id
  end

  def test_default_string_as_argument
    skip
    lists = Hash.new("")

    assert_equal __, lists
    assert_equal __, lists[:a]
    assert_equal __, lists[:b]
    maybe lists[:a].object_id == lists[:b].object_id
  end

  def test_default_string_as_block
    skip
    lists = Hash.new { "" }

    assert_equal __, lists
    assert_equal __, lists[:a]
    assert_equal __, lists[:b]
    maybe lists[:a].object_id == lists[:b].object_id
  end

  def test_default_numbers_as_argument
    skip
    lists = Hash.new(0)

    assert_equal __, lists
    assert_equal __, lists[:a]
    assert_equal __, lists[:b]
    maybe lists[:a].object_id == lists[:b].object_id
  end

  def test_default_numbers_as_block
    skip
    lists = Hash.new { 0 }

    assert_equal __, lists
    assert_equal __, lists[:a]
    assert_equal __, lists[:b]
    maybe lists[:a].object_id == lists[:b].object_id
  end

  def test_grade_school_1
    skip
    school = Hash.new([])
    assert_equal __, lists

    school['first grade'] << "Alice"
    school['first grade'] << "Bob"
    school['second grade'] << "Charlie"

    assert_equal __, school['first grade']
    assert_equal __, school['second grade']
    assert_equal __, school['thirdgrade']
    assert_equal __, lists
  end

  def test_grade_school_2
    skip
    school = Hash.new { [] }
    assert_equal __, school

    school['first grade'] << "Alice"
    school['first grade'] << "Bob"
    school['second grade'] << "Charlie"

    assert_equal __, school['first grade']
    assert_equal __, school['second grade']
    assert_equal __, school['third grade']
    assert_equal __, school
  end

  def test_grade_school_3
    skip
    school = Hash.new { |hash, key| hash[key] = [] }
    assert_equal __, school

    school['first grade'] << "Alice"
    school['first grade'] << "Bob"
    school['second grade'] << "Charlie"

    assert_equal __, school['first grade']
    assert_equal __, school['second grade']
    assert_equal __, school['third grade']
    assert_equal __, school
  end

  def test_grade_school_4
    skip
    school = Hash.new([])
    assert_equal __, school

    school['first grade'] += ["Alice"]
    school['first grade'] += ["Bob"]
    school['second grade'] += ["Charlie"]

    assert_equal __, school['first grade']
    assert_equal __, school['second grade']
    assert_equal __, school['third grade']
    assert_equal __, school
  end

  def test_word_stem_1
    skip
    words = Hash.new('de')
    assert_equal __, words

    word1 = words[1] << 'fault'
    word2 = words[2] << 'cide'
    word3 = words[3] << 'spair'
    word4 = words[4] << 'bunk'
    word5 = words[5] << 'rail'

    assert_equal __, word1
    assert_equal __, word2
    assert_equal __, word3
    assert_equal __, word4
    assert_equal __, word5

    assert_equal __, words
  end

  def test_word_stem_2
    skip
    words = Hash.new { 'de' }
    assert_equal __, words

    word1 = words[1] << 'fault'
    word2 = words[2] << 'cide'
    word3 = words[3] << 'spair'
    word4 = words[4] << 'bunk'
    word5 = words[5] << 'rail'

    assert_equal __, word1
    assert_equal __, word2
    assert_equal __, word3
    assert_equal __, word4
    assert_equal __, word5

    assert_equal __, words
  end

  def test_word_stem_3
    skip
    words = Hash.new { |hash, key| hash[key] = 'de' }
    assert_equal __, words

    word1 = words[1] << 'fault'
    word2 = words[2] << 'cide'
    word3 = words[3] << 'spair'
    word4 = words[4] << 'bunk'
    word5 = words[5] << 'rail'

    assert_equal __, word1
    assert_equal __, word2
    assert_equal __, word3
    assert_equal __, word4
    assert_equal __, word5

    assert_equal __, words
  end

  def test_word_stem_4
    skip
    words = Hash.new('de')
    assert_equal __, words

    word1 = words[1] += 'fault'
    word2 = words[2] += 'cide'
    word3 = words[3] += 'spair'
    word4 = words[4] += 'bunk'
    word5 = words[5] += 'rail'

    assert_equal __, word1
    assert_equal __, word2
    assert_equal __, word3
    assert_equal __, word4
    assert_equal __, word5

    assert_equal __, words
  end
end
