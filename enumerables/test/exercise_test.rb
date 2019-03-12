gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/exercise'
require './lib/problem'
require './lib/test_suite'

class ExerciseTest < Minitest::Test
  def test_names
    exercise = Exercise.new(:map)
    assert_equal :map, exercise.method
  end

  def test_exercise_starts_empty
    exercise = Exercise.new(:max)
    assert_equal [], exercise.problems
  end

  def test_add_problem
    problem = Problem.new("capitalize", {}, {}, "1 == 1")

    exercise = Exercise.new(:min)
    exercise << problem
    assert_equal [problem], exercise.problems
  end

  def test_suites
    exercise = Exercise.new(:find)
    t1, t2 = exercise.test_suites
    assert_equal "FindPatternTest", t1.name
    assert_equal "FindTest", t2.name
  end
end

