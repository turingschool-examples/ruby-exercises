RSpec.describe 'zip pattern' do

  it 'speed interview pairs' do
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = ["Xenia", "Yves", "Zach"]
    pairs = []
    list1.length.times do |i|
      pairs << [list1[i], list2[i]]
    end
    expect(pairs).to eq([["Alice", "Xenia"], ["Bob", "Yves"], ["Charlie", "Zach"]])
  end

  xit 'menu' do
    list1 = ["NY Strip Steak", "Lamb Stew", "Grilled Salmon"]
    list2 = [29, 23, 26]
    prices = []
    list1.length.times do |i|
      # Your code goes here
    end
    expect(prices).to eq([["NY Strip Steak", 29], ["Lamb Stew", 23], ["Grilled Salmon", 26]])
  end

  xit 'lottery tickets' do
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = [298, 166, 237]
    tickets = []
    # Your code goes here
    expect(tickets).to eq([["Alice", 298], ["Bob", 166], ["Charlie", 237]])
  end

  xit 'equivalent dna sequences' do
    strand1 = ["G", "A", "T", "T", "A", "C", "A"]
    strand2 = ["G", "A", "T", "G", "A", "C", "A"]
    # Your code goes here
    expect(pairs).to eq([["G", "G"], ["A", "A"], ["T", "T"], ["T", "G"], ["A", "A"], ["C", "C"], ["A", "A"]])
  end

  xit 'solitaire' do
    list1 = ["Ace", "6", "10", "Queen"]
    list2 = [:clubs, :diamonds, :hearts, :spades]
    # Your code goes here
    expect(cards).to eq([["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]])
  end

  xit 'colors' do
    list1 = ["shoes", "tie", "umbrella"]
    list2 = ["red", "pink", "black"]
    # Your code goes here
    expect(fashion).to eq([["shoes", "red"], ["tie", "pink"], ["umbrella", "black"]])
  end

end

