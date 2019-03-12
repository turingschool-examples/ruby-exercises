require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "test/**/*_test.rb"
end

desc "generate exercise test suites"
task :generate do
  require './lib/generator'
  Generator.generate
end

desc "construct generator to generate exercises with"
task :meta do
  require './lib/enumerable_method'
  require './lib/problems'
  Problems.generate
end

desc "generate a new generator"
task :new, :name do |t, args|
  require './lib/problem_generator'
  ProblemGenerator.new(EnumerableMethod.new(args[:name].to_sym)).write
  puts "Remember to add :#{args[:name]} to lib/problems.rb"
end

task default: :test
