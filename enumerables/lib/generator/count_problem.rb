class CountProblem
  def self.test_suites
    exercise = Exercise.new(:count)

    exercise << Problem.new(
      "count_count_words_with_e",
      {"words" => %w(thing phone bark belt shoe bath)},
      {"tally" => 3},
      "word.include?('e')"
    ).example!

    exercise << Problem.new(
      "count_numbers_greater_than_17",
      {"numbers" => [9, 18, 12, 17, 1, 3, 99]},
      {"tally" => 2},
      "number > 17"
    ).loop!

    exercise << Problem.new(
      "count_words_that_are_uppercase",
      {"words" => %w(trousers SOCKS sweater Cap SHOE TIE)},
      {"tally" => 3},
      "word.upcase == word"
    ).assignment!

    exercise << Problem.new(
      "count_words_ending_in_ing",
      {"words" => %w(thought brake shin juice trash)},
      {"tally" => 0},
      "word.end_with?('?')"
    )

    exercise << Problem.new(
      "count_even_numbers",
      {"numbers" => [9, 2, 1, 3, 18, 39, 71, 4, 6]},
      {"tally" => 4},
      "number.even?"
    )

    exercise << Problem.new(
      "count_multiples_of_5",
      {"numbers" => [2, 5, 19, 25, 35, 67]},
      {"tally" => 3},
      "number % 5 == 0"
    )

    exercise << Problem.new(
      "count_round_prices",
      {"prices" => [1.00, 3.90, 5.99, 18.50, 20.00]},
      {"tally" => 2},
      "(price - price.floor) == 0"
    )

    exercise << Problem.new(
      "count_four_letter_words",
      {"words" => %w(bake bark corn apple wart bird umbrella fart)},
      {"tally" => 6},
      "word.length == 4"
    )

    exercise.test_suites
  end
end
