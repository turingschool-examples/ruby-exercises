class SortByProblem
  def self.test_suites
    exercise = Exercise.new(:sort_by)

    exercise << Problem.new(
      "sort_alphabetically",
      {"words" => %w(broccoli Carrots FISH Bacon candy)},
      {"sorted" => %w(Bacon broccoli candy Carrots FISH)},
      "word.downcase"
    ).example!

    exercise << Problem.new(
      "sort_alphabetically_by_last_letter",
      {"things" => %w(pill box glass water sponge)},
      {"sorted" => %w(sponge pill water glass box)},
      "thing[-1]"
    ).loop!

    exercise << Problem.new(
      "sort_by_distance",
      {"distances" => %w(1cm 9cm 30cm 4cm 2cm)},
      {"sorted" => %w(1cm 2cm 4cm 9cm 30cm)},
      "distance.to_i"
    ).assignment!

    exercise << Problem.new(
      "sort_by_length",
      {"words" => %w(heteromorph ancyloceratina bioengineering mathematical bug)},
      {"sorted" => %w(bug heteromorph mathematical ancyloceratina bioengineering)},
      "word.length"
    )

    exercise << Problem.new(
      "sort_by_proximity_to_ten",
      {"prices" => [3.02, 9.91, 17.9, 10.01, 11.0]},
      {"sorted" => [10.01, 9.91, 11.0, 3.02, 17.9]},
      "(10.0 - price).abs"
    )

    exercise << Problem.new(
      "sort_by_number_of_cents",
      {"prices" => [3.02, 9.91, 7.9, 10.01, 11.0]},
      {"sorted" => [11.0, 10.01, 3.02, 7.9, 9.91]},
      "price - price.floor"
    )

    exercise.test_suites
  end
end
