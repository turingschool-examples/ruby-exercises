class OneProblem
  def self.test_suites
    exercise = Exercise.new(:one)

    exercise << Problem.new(
      "one_more",
      {"words" => %w(bigger better more improved advantageous)},
      {"exactly_one" => "assert"},
      "word == 'more'"
    ).example!

    exercise << Problem.new(
      "not_even_one_ring",
      {"ornaments" => %w(bracelet anklet earring)},
      {"exactly_one_ring" => "refute"},
      "ornament == 'ring'"
    ).loop!

    exercise << Problem.new(
      "not_just_one_ring",
      {"ornaments" => %w(bracelet ring ring anklet earring)},
      {"exactly_one_ring" => "refute"},
      "ornament == 'ring'"
    ).assignment!

    exercise << Problem.new(
      "one_time",
      {"words" => %w(morning time evening noon dusk dawn)},
      {"exactly_one_time" => "assert"},
      "word == 'time'"
    )

    exercise << Problem.new(
      "one_double_digit_number",
      {"numbers" => [8, 2, 10, 333, 9, 101]},
      {"exactly_one_double_digit" => "assert"},
      "number > 9 && number < 100"
    )

    exercise << Problem.new(
      "not_one_even_number",
      {"numbers" => [3, 20, 81, 10, 391, 32]},
      {"exactly_one_even_number" => "refute"},
      "number.even?"
    )

    exercise.test_suites
  end
end

