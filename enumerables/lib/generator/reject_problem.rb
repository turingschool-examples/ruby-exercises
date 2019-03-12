class RejectProblem
  def self.test_suites
    exercise = Exercise.new(:reject)

    exercise << Problem.new(
      "remove_zeros",
      {"numbers" => [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]},
      {"filtered" => [2, 93, 7, 1, 31, 368]},
      "number.zero?"
    ).example!

    exercise << Problem.new(
      "remove_vowels",
      {"letters" => "all your base are belong to us".chars.to_a},
      {"remaining" => "ll r bs r blng t s".chars.to_a},
      '["a", "e", "i", "o", "u", "y"].include?(letter)'
    ).loop!

    exercise << Problem.new(
      "remove_numbers_divisible_by_3",
      {"numbers" => (1..20).to_a},
      {"remaining" => [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]},
      "number % 3 == 0",
    ).assignment!

    exercise << Problem.new(
      "remove_words_with_more_than_three_letters",
      {"words" => %w(pill bad finger cat blue dog table red)},
      {"selected" => %w(bad cat dog red)},
      "word.length > 3"
    )

    exercise << Problem.new(
      "remove_words_ending_in_e",
      {"words" => %w(are you strike thinking belt piece warble sing pipe)},
      {"selected" => %w(you thinking belt sing)},
      "word.end_with?('e')"
    )

    exercise << Problem.new(
      "remove_words_ending_in_ing",
      {"words" => %w(bring finger drought singing bingo purposeful)},
      {"selected" => %w(finger drought bingo purposeful)},
      "word.end_with?('ing')"
    )

    exercise << Problem.new(
      "remove_words_containing_e",
      {"words" => %w(four red five blue pizza purple)},
      {"selected" => %w(four pizza)},
      "word.include?('e')"
    )

    exercise << Problem.new(
      "remove_dinosaurs",
      {"animals" => %w(tyrannosaurus narwhal eel achillesaurus qingxiusaurus)},
      {"notasaurus" => %w(narwhal eel)},
      "animal.end_with?('saurus')"
    )

    exercise << Problem.new(
      "remove_numbers",
      {"elements" => ["cat", "dog", 23, 81.1, 56, "aimless", 43]},
      {"not_numbers" => ["cat", "dog", "aimless"]},
      "element.is_a?(Numeric)"
    )

    exercise << Problem.new(
      "remove_floats",
      {"elements" => ["cat", "dog", 32.333, 23, 56, "aimless", 43.2]},
      {"not_numbers" => ["cat", "dog", 23, 56, "aimless"]},
      "element.is_a?(Float)"
    )

    exercise << Problem.new(
      "remove_animals_starting_with_vowels",
      {"animals" => ["aardvark", "bonobo", "cat", "dog", "elephant"]},
      {"remaining" => ["bonobo", "cat", "dog"]},
      '["a", "e", "i", "o", "u", "y"].include?(animal[0])'
    )

    exercise << Problem.new(
      "remove_capitalized_words",
      {"words" => %w(CAT dog AIMLESS Trevor butter)},
      {"remaining" => %w(dog Trevor butter)},
      "word.upcase == word"
    )

    exercise << Problem.new(
      "remove_arrays",
      {"elements" => ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]},
      {"remaining" => ["CAT", 23, "AIMLESS", 43, "butter"]},
      "element.is_a?(Array)"
    )

    exercise << Problem.new(
      "remove_hashes",
      {"elements" => ["cat", {dog: "fido"}, 23, {stuff: "things"}, "aimless", 43]},
      {"remaining" => ["cat", 23, "aimless", 43]},
      "element.is_a?(Hash)"
    )

    exercise.test_suites
  end
end

