class FindProblem
  def self.test_suites
    exercise = Exercise.new(:find)

    exercise << Problem.new(
      "find_first_seven_letter_word",
      {"words" => %w(capricious berry unicorn bag apple festering pretzel pencil)},
      {"found" => '"unicorn"'},
      "word.length == 7"
    ).example!

    exercise << Problem.new(
      "no_waldo",
      {"words" => %w(scarf sandcastle flag pretzel crow key)},
      {"found" => "nil"},
      "word == 'waldo'"
    ).loop!

    exercise << Problem.new(
      "find_waldo",
      {"words" => %w(noise dog fair house waldo bucket fish)},
      {"found" => '"waldo"'},
      'word == "waldo"'
    ).assignment!

    exercise << Problem.new(
      "cannot_find_3_letter_words",
      {"words" => %w(piglet porridge bear blueberry)},
      {"found" => "nil"},
      "word.length == 3"
    )

    exercise << Problem.new(
      "find_13",
      {"numbers" => [2, 13, 19, 8, 3, 27]},
      {"found" => 13},
      "number == 13"
    )

    exercise << Problem.new(
      "find_first_even_number",
      {"numbers" => [3, 7, 13, 11, 10, 2, 17]},
      {"found" => 10},
      "number.even?"
    )

    exercise << Problem.new(
      "find_first_multiple_of_3",
      {"numbers" => [2, 8, 9, 27, 24, 5]},
      {"found" => 9},
      "number % 3 == 0"
    )

    exercise << Problem.new(
      "find_first_word_starting_with_q",
      {"words" => %w(weirdo quill fast quaint quitter koala)},
      {"found" => '"quill"'},
      'word.start_with?("q")'
    )

    exercise << Problem.new(
      "find_first_word_ending_with_er",
      {"words" => %w(biggest pour blight finger pie border)},
      {"found" => '"finger"'},
      'word.end_with?("er")'
    )

    exercise << Problem.new(
      "find_first_number_greater_than_20",
      {"numbers" => [1, 8, 19, 21, 29, 31, 34]},
      {"found" => 21},
      'number > 20'
    )

    exercise.test_suites
  end
end

