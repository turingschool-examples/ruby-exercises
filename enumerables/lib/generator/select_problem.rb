class SelectProblem
  def self.test_suites
    exercise = Exercise.new(:select)

    exercise << Problem.new(
      "pick_even_numbers",
      {"numbers" => (1..10).to_a},
      {"evens" => [2, 4, 6, 8, 10]},
      "number.even?"
    ).example!

    exercise << Problem.new(
      "pick_odd_numbers",
      {"numbers" => (1..10).to_a},
      {"odds" => [1, 3, 5, 7, 9]},
      "number.odd?"
    ).loop!

    exercise << Problem.new(
      "pick_words_with_three_letters",
      {"words" => %w(pill bad finger cat blue dog table red)},
      {"selected" => %w(bad cat dog red)},
      "word.length == 3"
    ).assignment!

    exercise << Problem.new(
      "pick_words_with_more_than_three_letters",
      {"words" => %w(pill bad finger cat blue dog table red)},
      {"selected" => %w(pill finger blue table)},
      "word.length > 3"
    )

    exercise << Problem.new(
      "pick_words_ending_in_e",
      {"words" => %w(are you strike thinking belt piece warble sing pipe)},
      {"selected" => %w(are strike piece warble pipe)},
      "word.end_with?('e')"
    )

    exercise << Problem.new(
      "pick_words_ending_in_ing",
      {"words" => %w(bring finger drought singing bingo purposeful)},
      {"selected" => %w(bring singing)},
      "word.end_with?('ing')"
    )

    exercise << Problem.new(
      "pick_words_containing_e",
      {"words" => %w(four red five blue pizza purple)},
      {"selected" => %w(red five blue purple)},
      "word.include?('e')"
    )

    exercise << Problem.new(
      "pick_dinosaurs",
      {"animals" => %w(tyrannosaurus narwhal eel achillesaurus qingxiusaurus)},
      {"dinosaurs" => %w(tyrannosaurus achillesaurus qingxiusaurus)},
      "animal.end_with?('saurus')"
    )

    exercise << Problem.new(
      "pick_floats",
      {"numbers" => [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]},
      {"floats" => [1.4, 3.5, 4.9, 9.1, 8.0]},
      "number.is_a?(Float)"
    )

    exercise << Problem.new(
      "pick_arrays",
      {"elements" => ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]},
      {"arrays" => [["dog"], [56, 3, 8]]},
      "element.is_a?(Array)"
    )

    exercise << Problem.new(
      "pick_hashes",
      {"elements" => ["cat", {dog: "fido"}, 23, {stuff: "things"}, "aimless", 43]},
      {"hashes" => [{dog: "fido"}, {stuff: "things"}]},
      "element.is_a?(Hash)"
    )

    exercise.test_suites
  end
end

