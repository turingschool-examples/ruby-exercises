class Problem
  attr_reader :name, :input_variable, :input,
    :output_variable, :output, :block, :initial_value

  def initialize(name, input, output, code, options = {})
    @name = name
    @input_variable, @input = input.to_a.first
    @output_variable, @output = output.to_a.first
    @block = code
    @initial_value = options[:initial_value]
  end

  def block_variable
    input_variable.to_s.chop
  end

  def example!
    @example = true
    self
  end

  def example?
    @example
  end

  def loop!
    @loop = true
    self
  end

  def loop?
    @loop || @example
  end

  def assignment!
    @assignment = true
    self
  end

  def assignment?
    @assignment || @loop || @example
  end

  def render(template)
    ERB.new(File.read(template)).result(binding).gsub(/^\s*$\n/, '').chomp
  end
end

