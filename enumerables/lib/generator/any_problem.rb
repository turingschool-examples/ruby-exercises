class AnyProblem
  def self.test_suites
    exercise = Exercise.new(:any)

    exercise << Problem.new(
      "has_at_least_one_zero",
      {"numbers" => [2, 0, 9, 3, 0, 1]},
      {"has_zero" => "assert"},
      "number.zero?"
    ).example!

    exercise << Problem.new(
      "does_not_have_any_zeros",
      {"numbers" => [3, 1, 3, 2, 4, 9, 8]},
      {"has_zero" => "refute"},
      "number.zero?"
    ).loop!

    exercise << Problem.new(
      "has_at_least_one_alice",
      {"names" => %w(Bill Bob Burton Alice Brandon)},
      {"has_alice" => "assert"},
      "names.include?(name)"
    ).assignment!

    exercise << Problem.new(
      "no_alices",
      {"names" => %w(Chuck Charlene Cory Chris Carl)},
      {"has_alice" => "refute"},
      'name == "Alice"'
    )

    exercise << Problem.new(
      "has_a_multi_word_phrase",
      {"phrases" => ['Sure!', 'OK.', 'I have no idea.', 'Really?' 'Whatever.']},
      {"has_multi_word_phrase" => "assert"},
      "phrase.split(' ').length > 0"
    )

    exercise << Problem.new(
      "no_monkeys",
      {"animals" => ["elephant", "hippo", "jaguar", "python"]},
      {"has_monkeys" => "refute"},
      'animal == "monkey"'
    )

    exercise << Problem.new(
      "no_multiples_of_five",
      {"numbers" => [3, 1, 3, 2, 4, 9, 8]},
      {"multiples_of_5" => "refute"},
      "number % 5 == 0"
    )

    exercise.test_suites
  end
end

