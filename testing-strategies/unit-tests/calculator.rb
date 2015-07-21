class Calculator
  attr_reader :a,
              :operator,
              :b

  def initialize(a, operator, b)
    @a        = a.to_i
    @operator = operator.to_sym
    @b        = b.to_i
  end

  def calculate
    if operator == :+
      addition(a,b)
    elsif operator == :-
      subtraction(a,b)
    elsif operator == :*
      multiplication(a,b)
    elsif operator == :/
      division == :/
    elsif operator == :**
      exponent(a,b)
    end
  end

  def addition(first, second)
    first_addend + second_addend
  end

  def subtraction(first, second)
    first - second
  end

  def multiplication(first, second)
    first * second
  end

  def division(first, second)
    first / second
  end

  def exponent(first, second)
    first ** second
  end

end

calc = Calculator.new(ARGV[0], ARGV[1], ARGV[2])
puts calc.calculate
