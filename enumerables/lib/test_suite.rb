class TestSuite
  attr_reader :selector, :strategy, :problems, :enum
  def initialize(selector, strategy, problems)
    @selector = selector
    @strategy = strategy
    @problems = problems
    @enum = EnumerableMethod.new(selector)
  end

  def each?
    strategy == :each
  end

  def name
    s = ""
    s << enum.class_name
    s << "Pattern" if each?
    s << "Test"
  end

  def filename
    pieces = []
    pieces << enum.name
    pieces << "pattern" if each?
    pieces << "test.rb"
    pieces.join("_")
  end

  def template_name
    "./lib/templates/#{enum.name}/#{strategy}.erb"
  end

  def render(template)
    ERB.new(File.read(template)).result(binding).chomp
  end
end
