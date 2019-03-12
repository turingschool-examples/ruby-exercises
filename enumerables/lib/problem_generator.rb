require 'erb'
require 'delegate'
require './lib/enumerable_method'

class ProblemGenerator < SimpleDelegator
  def to_s
    ERB.new(File.read(template)).result(binding).chomp
  end

  def template
    "./lib/templates/problem.erb"
  end

  def write
    File.open("./lib/generator/#{name}_problem.rb", 'wb') do |file|
      file.write to_s
    end
    system("cp -r ./lib/templates/method ./lib/templates/#{name}")
  end
end

