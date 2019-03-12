require 'erb'
require_relative 'enumerable_method'
require_relative 'problem'
require_relative 'exercise'
require_relative 'test_suite'
require_relative 'generator/map_problem'
require_relative 'generator/select_problem'
require_relative 'generator/reject_problem'
require_relative 'generator/any_problem'
require_relative 'generator/all_problem'
require_relative 'generator/none_problem'
require_relative 'generator/one_problem'
require_relative 'generator/group_by_problem'
require_relative 'generator/find_problem'
require_relative 'generator/count_problem'
require_relative 'generator/sort_by_problem'
require_relative 'generator/reduce_problem'
require_relative 'generator/zip_problem'

class Generator
  def self.problems
    [
      MapProblem, SelectProblem, RejectProblem, AnyProblem, AllProblem, NoneProblem, OneProblem, GroupByProblem, FindProblem, CountProblem, SortByProblem, ReduceProblem, ZipProblem
    ]
  end

  def self.generate
    generate_exercises
    generate_solutions
  end

  def self.generate_exercises
    problems.each do |problem|
      problem.test_suites.each do |suite|
        File.open("./exercises/#{suite.filename}", 'wb') do |file|
          file.write suite.render('./lib/templates/suite.erb')
        end
      end
    end
  end

  def self.generate_solutions
    problems.each do |problem|
      problem.test_suites.each do |suite|
        suite.problems.each {|p| p.example!}
        File.open("./test/solutions/#{suite.filename}", 'wb') do |file|
          file.write suite.render('./lib/templates/suite.erb')
        end
      end
    end
  end
end