class ZipProblem
  def self.test_suites
    exercise = Exercise.new(:zip)

    exercise << Problem.new(
      "speed_interview_pairs",
      {"lists" => [%w(Alice Bob Charlie), %w(Xenia Yves Zach)]},
      {"pairs" => [%w(Alice Xenia), %w(Bob Yves), %w(Charlie Zach)]},
      nil
    ).example!

    exercise << Problem.new(
      "menu",
      {"lists" => [["NY Strip Steak", "Lamb Stew", "Grilled Salmon"], [29, 23, 26]]},
      {"prices" => [["NY Strip Steak", 29], ["Lamb Stew", 23], ["Grilled Salmon", 26]]},
      nil
    ).loop!

    exercise << Problem.new(
      "lottery_tickets",
      {"lists" => [%w(Alice Bob Charlie), [298, 166, 237]]},
      {"tickets" => [["Alice", 298], ["Bob", 166], ["Charlie", 237]]},
      nil
    ).assignment!

    exercise << Problem.new(
      "equivalent_dna_sequences",
      {"strands" => ["GATTACA".chars.to_a, "GATGACA".chars.to_a]},
      {"pairs" => [["G", "G"], ["A", "A"], ["T", "T"], ["T", "G"], ["A", "A"], ["C", "C"], ["A", "A"]]},
      nil
    )

    exercise << Problem.new(
      "solitaire",
      {"lists" => [["Ace", "6", "10", "Queen"], [:clubs, :diamonds, :hearts, :spades]]},
      {"cards" => [["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]]},
      nil
    )

    exercise << Problem.new(
      "colors",
      {"lists" => [%w(shoes tie umbrella), %w(red pink black)]},
      {"fashion" => [%w(shoes red), %w(tie pink), %w(umbrella black)]},
      nil
    )

    exercise.test_suites
  end
end
