class AllProblem
  def self.test_suites
    exercise = Exercise.new(:all)

    exercise << Problem.new(
      "all_zeros",
      {"numbers" => [0, 0, 0, 0, 0, 0, 0]},
      {"all_zeros" => "assert"},
      "number.zero?"
    ).example!

    exercise << Problem.new(
      "not_all_zeros",
      {"numbers" => [0, 0, 0, 0, 1, 0, 0, 0]},
      {"all_zeros" => "refute"},
      "number.zero?"
    ).loop!

    exercise << Problem.new(
      "all_gone",
      {"words" => %w(gone gone gone gone gone gone gone)},
      {"all_gone" => "assert"},
      "word == 'gone'"
    ).assignment!

    exercise << Problem.new(
      "not_all_gone",
      {"words" => %w(gone gone gone gone gone there gone gone)},
      {"all_gone" => "refute"},
      "word == 'gone'"
    )

    exercise << Problem.new(
      "all_empty",
      {"strings" => ["", "", "", "", "", "", ""]},
      {"all_empty" => "assert"},
      "string.empty?"
    )

    exercise << Problem.new(
      "not_all_empty",
      {"strings" => ["", "", "", "full", "", "", ""]},
      {"all_empty" => "refute"},
      "string.empty?"
    )

    exercise << Problem.new(
      "not_all_uppercase",
      {"words" => ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]},
      {"all_caps" => "refute"},
      "word.upcase != word"
    )

    exercise << Problem.new(
      "all_lies",
      {"lies" => [false, false, false, false]},
      {"all_lies" => "assert"},
      "!lie" # this is generated at `unless !lie`, which is awkward
    )

    exercise << Problem.new(
      "all_multiples_of_7",
      {"numbers" => [42, 14, 35, 49, 28, 56, 21, 7]},
      {"all_multiples_of_7" => "assert"},
      "number % 7 == 0"
    )

    exercise << Problem.new(
      "not_all_3_digits_long",
      {"numbers" => [981, 831, 509, 332, 892, 8999, 110]},
      {"all_3_digits" => "refute"},
      "number.to_s.length == 3"
    )

    exercise << Problem.new(
      "all_4_letter_words",
      {"words" => %w(love hate fire bird call)},
      {"all_4_letters" => "assert"},
      "word.length == 4"
    )

    exercise.test_suites
  end
end

