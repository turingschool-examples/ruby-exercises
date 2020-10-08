require 'rspec'
require_relative '../lib/costume'
require_relative '../lib/bag'
require_relative '../lib/candy'
require_relative '../lib/trick_or_treater'

RSpec.describe TrickOrTreater do
  it 'wears a costume' do
    costume = Costume.new('Cowboy')
    trick_or_treater = TrickOrTreater.new(costume)
    expect(trick_or_treater.dressed_up_as).to eq('Cowboy')
  end

  xit 'can have a different costume' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Alien'))

    expect(trick_or_treater.dressed_up_as).to eq('Alien')
  end

  xit 'has an empty bag by default' do
    trick_or_treater = TrickOrTreater.new(Costume.new("Alien"))

    expect(trick_or_treater.bag.empty?).to be true
  end

  xit 'has an empty bag, so no candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new("Knight"))

    expect(trick_or_treater.has_candy?).to be false
  end

  xit 'can get candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Spaceship Mechanic'))
    trick_or_treater.bag << Candy.new('Gummy bears')

    expect(trick_or_treater.has_candy?).to be true
  end

  xit 'it can count candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Spaceship Mechanic'))

    expect(trick_or_treater.candy_count).to eq(0)

    trick_or_treater.bag << Candy.new('Gummy bears')

    expect(trick_or_treater.candy_count).to eq(1)
  end

  xit 'can eat candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Baron'))
    trick_or_treater.bag << Candy.new('Gummy worms')
    trick_or_treater.bag << Candy.new('Liquorice')
    trick_or_treater.bag << Candy.new('Salty Serpents')

    expect(trick_or_treater.candy_count).to eq(3)
    trick_or_treater.eat

    expect(trick_or_treater.candy_count).to eq(2)
    trick_or_treater.eat

    expect(trick_or_treater.candy_count).to eq(1)
    trick_or_treater.eat

    expect(trick_or_treater.candy_count).to eq(0)
  end

  xit 'has a sugar level that starts at 0' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Hobbit'))

    expect(trick_or_treater.sugar_level).to eq(0)
  end

  xit 'increases the sugar level when it eats candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Hobbit'))

    trick_or_treater.bag << Candy.new('Gummy worms', 88)
    trick_or_treater.bag << Candy.new('Liquorice', 83)
    trick_or_treater.bag << Candy.new('Salty Serpents', 71)

    trick_or_treater.eat
    trick_or_treater.eat
    trick_or_treater.eat

    expect(trick_or_treater.sugar_level).to eq(242)
  end
end
