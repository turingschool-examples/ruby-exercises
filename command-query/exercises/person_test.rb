gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'person'

class PersonTest < Minitest::Test
  def test_a_person_is_zero_years_old_when_they_are_born
    person = Person.new
    assert_equal 0, person.age
  end

  def test_a_person_gets_older
    skip
    person = Person.new
    person.happy_birthday
    assert_equal 1, person.age
    32.times do
      person.happy_birthday
    end
    assert_equal 33, person.age
  end
end
