require 'rspec'
require './lib/medusa'

RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.stoned?).to be false
    medusa.stare(victim)
    expect(victim.stoned?).to be true
  end

  it 'can only have three victims' do
    medusa = Medusa.new('Cassiopeia')
    leon = Person.new('Leon')
    mel = Person.new('Mel')
    huy = Person.new('Huy')
    cyclops = Person.new('Cyclops')

    medusa.stare(leon)
    medusa.stare(mel)
    expect(medusa.victims_full?).to be false

    medusa.stare(huy)
    expect(medusa.victims_full?).to be true
  end

  it 'if a fourth victim is stoned the first is unstoned' do
    medusa = Medusa.new('Cassiopeia')
    leon = Person.new('Leon')
    mel = Person.new('Mel')
    huy = Person.new('Huy')
    cyclops = Person.new('Cyclops')

    medusa.stare(leon)
    medusa.stare(mel)
    expect(medusa.victims_full?).to be false

    medusa.stare(huy)
    expect(medusa.victims_full?).to be true

    medusa.stare(cyclops)

    expect(leon.stoned?).to be false
    expect(medusa.victims_full?).to be true
    expect(medusa.statues.count).to eq(3)

    expect(mel.stoned?).to be true
    expect(huy.stoned?).to be true
    expect(cyclops.stoned?).to be true
  end
end
