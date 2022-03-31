require 'rspec'
require_relative '../lib/bag'
require_relative '../lib/candy'

RSpec.describe Bag do
  it 'is empty' do
    expect(Bag.new.empty?).to be true
  end

  xit 'can count the candy in an empty bag' do
    expect(Bag.new.count).to eq(0)
  end

  xit 'has no candies when it is empty' do
    expect(Bag.new.candies).to eq([])
  end

  xit 'can put a candy in a bag' do
    bag = Bag.new

    candy = Candy.new('Sour frogs')

    bag << candy

    expect(bag.candies).to eq([candy])
  end

  xit 'is not empty when it has candies' do
    bag = Bag.new
    bag << Candy.new("Nerds")

    expect(bag.empty?).to be false
  end

  xit 'can count candies' do
    bag = Bag.new
    bag << Candy.new("Caramelized Almonds")

    expect(bag.count).to eq(1)
  end

  xit 'contains candies and candies have a type' do
    bag = Bag.new
    bag << Candy.new("Hershey's Kisses")
    # You usually don't want to chain a bunch of different
    # types of things together like this.
    # We'll talk about it more in a few weeks.
    # It's important to understand how these methods work, though.
    type = bag.candies.first.type

    expect(type).to eq("Hershey's Kisses")
  end

  xit 'can be asked if it has a particular kind of candy' do
    bag = Bag.new
    bag << Candy.new("Lindt chocolate")

    expect(bag.contains?('Lindt chocolate')).to be true
    expect(bag.contains?('Nerds')).to be false
  end
end
