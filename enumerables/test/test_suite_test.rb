gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enumerable_method'
require './lib/test_suite'

class TestSuiteTest < Minitest::Test
  def test_suite_with_each
    suite = TestSuite.new(:group_by, :each, [])
    assert_equal "GroupByPatternTest", suite.name
    assert_equal "group_by_pattern_test.rb", suite.filename
    assert_equal "./lib/templates/group_by/each.erb", suite.template_name
    assert_equal :group_by, suite.selector
  end

  def test_suite_with_enum
    suite = TestSuite.new(:group_by, :enum, [])
    assert_equal "GroupByTest", suite.name
    assert_equal "group_by_test.rb", suite.filename
    assert_equal "./lib/templates/group_by/enum.erb", suite.template_name
    assert_equal :group_by, suite.selector
  end

  def test_suite_for_predicate_method
    suite = TestSuite.new(:include?, :enum, [])
    assert_equal "IncludeTest", suite.name
    assert_equal "include_test.rb", suite.filename
    assert_equal "./lib/templates/include/enum.erb", suite.template_name
    assert_equal :include?, suite.selector
  end
end

