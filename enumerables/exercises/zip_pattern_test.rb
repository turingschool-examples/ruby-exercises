gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ZipPatternTest < Minitest::Test

  def test_speed_interview_pairs
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = ["Xenia", "Yves", "Zach"]
    pairs = []
    list1.length.times do |i|
      pairs << [list1[i], list2[i]]
    end
    assert_equal [["Alice", "Xenia"], ["Bob", "Yves"], ["Charlie", "Zach"]], pairs
  end

  def test_menu
    list1 = ["NY Strip Steak", "Lamb Stew", "Grilled Salmon"]
    list2 = [29, 23, 26]
    prices = []
    list1.length.times do |i|
      # Your code goes here
    end
    assert_equal [["NY Strip Steak", 29], ["Lamb Stew", 23], ["Grilled Salmon", 26]], prices
  end

  def test_lottery_tickets
    skip
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = [298, 166, 237]
    tickets = []
    # Your code goes here
    assert_equal [["Alice", 298], ["Bob", 166], ["Charlie", 237]], tickets
  end

  def test_equivalent_dna_sequences
    skip
    strand1 = ["G", "A", "T", "T", "A", "C", "A"]
    strand2 = ["G", "A", "T", "G", "A", "C", "A"]
    # Your code goes here
    assert_equal [["G", "G"], ["A", "A"], ["T", "T"], ["T", "G"], ["A", "A"], ["C", "C"], ["A", "A"]], pairs
  end

  def test_solitaire
    skip
    list1 = ["Ace", "6", "10", "Queen"]
    list2 = [:clubs, :diamonds, :hearts, :spades]
    # Your code goes here
    assert_equal [["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]], cards
  end

  def test_colors
    skip
    list1 = ["shoes", "tie", "umbrella"]
    list2 = ["red", "pink", "black"]
    # Your code goes here
    assert_equal [["shoes", "red"], ["tie", "pink"], ["umbrella", "black"]], fashion
  end

end