gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'
require 'csv'

class ShovelCSVTest < Minitest::Homework
  self.be_gentle!

  def test_shovel_on_csv
    row = CSV::Row.new(["name", "age"], ["Alice", 23])

    row << ["profession", "astronomer"]
    assert_equal __, row.to_csv
    assert_equal __, row.to_hash

    row << {phone: "(123) 123-1234", salary: "USD 98,000"}
    assert_equal __, row.to_csv
    assert_equal __, row.to_hash

    # Explain in English what `<<` does to a csv row.
  end
end
