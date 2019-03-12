class Exercise
  attr_reader :method, :problems

  def initialize(method)
    @method = method
    @problems = []
  end

  def <<(problem)
    @problems << problem
  end

  def test_suites
    [
      TestSuite.new(method, :each, problems),
      TestSuite.new(method, :enum, problems)
    ]
  end
end

