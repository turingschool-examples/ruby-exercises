require 'erb'

class Problems

  def self.generate
    new.generate
  end

  def selectors
    [
      :map,
      :select,
      :reject,
      :any?,
      :all?,
      :none?,
      :one?,
      :group_by,
      :find,
      :count,
      :sort_by,
      :reduce,
      :zip
    ]
  end

  def enums
    selectors.map {|selector| EnumerableMethod.new(selector)}
  end

  def generate
    File.open("./lib/generator.rb", 'wb') do |file|
      file.write to_s
    end
  end

  def to_s
    ERB.new(File.read(template)).result(binding).chomp
  end

  def template
    "./lib/templates/generator.erb"
  end

end
