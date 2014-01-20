# encoding: utf-8
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class StringTest < Minitest::Homework
  be_gentle!

  def test_capitalize
    assert_equal __, "alice".capitalize
    assert_equal __, "alice smith".capitalize
  end

  def test_upcase
    assert_equal __, "run!".upcase
  end

  def test_downcase
    assert_equal __, "I'M OVER HERE".downcase
  end

  def test_check_if_all_caps
    maybe "abc".upcase == "abc"
    maybe "ABC".upcase == "ABC"
    maybe "Hæ?".upcase == "Hæ?"
    maybe "1, 2, 3".upcase == "1, 2, 3"
  end

  def test_if_all_lowercase
    maybe "abc".downcase == "abc"
    maybe "ABC".downcase == "ABC"
    maybe "Æsj!".downcase == "Æsj!"
    maybe "1, 2, 3".downcase == "1, 2, 3"
  end

  def test_upper_and_lower_case
    maybe "abc".downcase == "abc".upcase
    maybe "1, 2, 3".downcase == "1, 2, 3".upcase
    maybe "%$#!!1!".downcase == "%$#!!1!".upcase
  end

  def test_chop
    assert_equal __, "hello!!!".chop
    assert_equal __, "hello?!".chop
    assert_equal __, "hello.".chop
    assert_equal __, "hello".chop
  end

  def test_chomp
    assert_equal __, "go\n\n".chomp
    assert_equal __, "go\n".chomp
    assert_equal __, "go".chomp
  end

  def test_delete
    assert_equal __, "eeny, meeny, miny, moe".delete("e")
    assert_equal __, "eeny, meeny, miny, moe".delete("m")
    assert_equal __, "eeny, meeny, miny, moe".delete("n")
  end

  def test_reverse
    assert_equal __, "ZOMG SO MUCH FUN!!1!".reverse
    assert_equal __, "bubbly pies".reverse
    assert_equal __, "racecar".reverse
  end

  def test_squeeze
    assert_equal __, "Granny juggles puppies in the moonlight".squeeze
    assert_equal __, "Sunny summer days playing hoops on the roof".squeeze('o')
    assert_equal __, "You fool! You cannot choose to cook cheese with a spoon".squeeze('ne')
    assert_equal __, "Her name      was Betty Moore".squeeze(" ")
  end

  def test_strip
    assert_equal __, "   \n  \tto the    moon\n\n\t    ".strip
    assert_equal __, "   \n  \tto the    moon\n\n\t    ".rstrip
    assert_equal __, "   \n  \tto the    moon\n\n\t    ".lstrip
  end

  def test_next
    assert_equal __, "a".next
    assert_equal __, "z".next
    assert_equal __, "aa".next
    assert_equal __, "az".next
    assert_equal __, "zz".next
    assert_equal __, "aA".next
    assert_equal __, "zZ".next
  end

  def test_length
    assert_equal __, "".length
    assert_equal __, "A".length
    assert_equal __, "Ø".length
    assert_equal __, "\n".length
    assert_equal __, "AA".length
    assert_equal __, "AAA".length
    assert_equal __, "AAAA".length
    assert_equal __, "     ".length
  end

  def test_count
    assert_equal __, "sound of fury signifying nothing".count('o')
    assert_equal __, "David Cook is frankly unkind".count('aeiou')
  end

  def test_shovel
    assert_equal __, "" << ""
    assert_equal __, "a" << "b"
    assert_equal __, "hello" << "?"
    assert_equal __, "hello" << 33
  end

  def test_concat
    assert_equal __, "".concat("")
    assert_equal __, "a".concat("b")
    assert_equal __, "hello".concat("?")
    assert_equal __, "hello".concat(33)
  end

  def test_plus
    assert_equal __, "" + ""
    assert_equal __, "a" + "b"
    assert_equal __, "hello" + "?"
  end

  def test_multiply
    assert_equal __, "" * 3
    assert_equal __, "!" * 3
    assert_equal __, "ho! " * 3
  end

  def test_center
    s = "abc"
    assert_equal __, s.center(5)
    assert_equal __, s.center(6)
    assert_equal __, s.center(9)
    assert_equal __, s.center(2)
  end

  def test_ljust
    s = "abc"
    assert_equal __, s.ljust(5)
    assert_equal __, s.ljust(9)
    assert_equal __, s.ljust(2)
  end

  def test_rjust
    s = "abc"
    assert_equal __, s.rjust(5)
    assert_equal __, s.rjust(9)
    assert_equal __, s.rjust(2)
  end

  def test_empty
    maybe "".empty?
    maybe "  ".empty?
    maybe "\n".empty?
    maybe "a".empty?
  end

  def test_include
    maybe "".include?("a")
    maybe "happy".include?("p")
    maybe "happy".include?("py")
    maybe "happy".include?("hy")
  end

  def test_start_with
    maybe "".start_with?("")
    maybe "hello?".start_with?("?")
    maybe "hello".start_with?("h")
    maybe "hello".start_with?("x")
    maybe "hello".start_with?("hell")
  end

  def test_end_with
    maybe "".end_with?("")
    maybe "coffee?".end_with?("?")
    maybe "coffee".end_with?("e")
    maybe "coffee".end_with?("x")
    maybe "coffee".end_with?("fee")
  end

  def test_index
    assert_equal __, "purple".index("p")
    assert_equal __, "purple".index("u")
    assert_equal __, "purple".index("e")
    assert_equal __, "purple".index("x")
  end

  def test_square_brackets
    assert_equal __, "music"[0]
    assert_equal __, "music"[3]
    assert_equal __, "music"[-1]
    assert_equal __, "music"[-2]
    assert_equal __, "music"[0,2]
    assert_equal __, "music"[2,2]
    assert_equal __, "music"[0..2]
    assert_equal __, "music"[2..2]
    assert_equal __, "music"[0...2]
  end

  def test_square_brackets_equal
    s = "cut"
    assert_equal __, s
    s[0] = "y"
    assert_equal __, s
    s[-1] = "p"
    assert_equal __, s
    s[-1] = "k"
    assert_equal __, s
    s[1] = "a"
    assert_equal __, s
  end

  def test_interpolation
    s = "world"
    assert_equal __, "Hello, #{s}!"
  end

  def test_format_specification
    assert_equal __, "" % ""
    assert_equal __, "Be %s" % "safe"
    assert_equal __, "(%s) %s-%s" % ["800", "555", "1234"]
    assert_equal __, "(%2d)" % 45
    assert_equal __, "(%3d)" % 45
    assert_equal __, "(%5d)" % 45
    assert_equal __, "(%05d)" % 45
    assert_equal __, "%{name} is %{age} years old." % {name: "Harry", age: "38"}
    assert_equal __, "%{name} is %{age} years old." % {name: "Harry", age: "38"}
    assert_equal __, "%<years>d years and %<months>.1f months" % {years: 10, months: 3.478}
  end

  def test_tr
    assert_equal __, "would".tr('w', 'c')
    assert_equal __, "should".tr('ou', 'ei')
    assert_equal __, "write".tr('aeiou', '*')
    assert_equal __, "GATTACA".tr('GCTA', 'CGUT')
    assert_equal __, "1, 2, 3 GO!".tr('^A-Z', ' ')
    assert_equal __, "1, 2, 3 GO!".tr('^A-Z', '')
  end

  def test_sub
    assert_equal __, "kicking".sub('k', 't')
    assert_equal __, "kicking".sub('f', 't')
    assert_equal __, "kicking".sub('ki', 'to')
    assert_equal __, "kicking".sub(/[aeiou]/, '*')
  end

  def test_gsub
    assert_equal __, "kicking".gsub('k', 't')
    assert_equal __, "kicking".gsub('f', 't')
    assert_equal __, "kicking".gsub('ki', 'to')
    assert_equal __, "kicking".gsub(/[aeiou]/, '*')
  end
end
