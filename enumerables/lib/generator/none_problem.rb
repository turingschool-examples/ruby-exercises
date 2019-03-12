class NoneProblem
  def self.test_suites
    exercise = Exercise.new(:none)

    exercise << Problem.new(
      "none_are_broken",
      {"things" => %w(functional working works fixed good)},
      {"none_broken" => "assert"},
      'thing == "broken"'
    ).example!

    exercise << Problem.new(
      "double_negative",
      {"numbers" => [9, 3, 3, 7, 6, -5, 1]},
      {"not_none_negative" => "refute"},
      'number < 0'
    ).loop!

    exercise << Problem.new(
      "none_are_negative",
      {"numbers" => [9, 3, 1, 8, 3, 3, 5]},
      {"none_negative" => "assert"},
      'number < 0'
    ).assignment!

    exercise << Problem.new(
      "none_shall_pass",
      {"critters" => ["elf", "hobbit", "dwarf", "wizard", "human"]},
      {"none_shall_pass" => "assert"},
      'critter == "shall pass"'
    )

    exercise << Problem.new(
      "one_or_more_shall_pass",
      {"phrases" => ["go", "left", "can cross", "shall pass", "must stay", "tarried"]},
      {"none_shall_pass" => "refute"},
      "phrase == 'shall pass'"
    )

    exercise << Problem.new(
      "none_even",
      {"numbers" => [3, 9, 15, 21, 19]},
      {"none_even" => "assert"},
      "number.even?"
    )

    exercise.test_suites
  end
end

