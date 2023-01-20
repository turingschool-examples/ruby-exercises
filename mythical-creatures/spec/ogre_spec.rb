require './spec/spec_helper'
require './lib/ogre'

RSpec.describe Ogre do
  it 'has a name' do
    ogre = Ogre.new('Brak')
    expect(ogre.name).to eq('Brak')
  end

  it 'lives somewhere by default' do
    ogre = Ogre.new('Brak')
    expect(ogre.home).to eq('Swamp')
  end

  it 'doesnt have to live in a swamp' do
    ogre = Ogre.new('Brak', 'Castle')

    expect(ogre.home).to eq('Castle')
  end

  it 'can meets humans' do
    ogre = Ogre.new('Brak')
    human = Human.new
    expect(human.name).to eq('Jane')

    ogre.encounter(human)

    expect(human.encounter_counter).to eq(1)
  end

  it 'is noticed by humans every third encounter' do
    ogre = Ogre.new('Brak')
    human = Human.new

    ogre.encounter(human)
    ogre.encounter(human)
    expect(human.notices_ogre?).to be false

    ogre.encounter(human)

    expect(human.notices_ogre?).to be true
  end

  it 'is noticed by humans the sixth time' do
    ogre = Ogre.new('Brak')
    human = Human.new

    6.times { ogre.encounter(human) }

    expect(human.notices_ogre?).to be true
  end

  it 'can swing a club' do
    ogre = Ogre.new('Brak')
    human = Human.new

    ogre.swing_at(human)

    expect(ogre.swings).to eq(1)
  end

  it 'swings its club when noticed by a human' do
    ogre = Ogre.new('Brak')
    human = Human.new
    ogre.encounter(human)

    expect(ogre.swings).to eq(0)

    ogre.encounter(human)
    ogre.encounter(human)

    expect(ogre.swings).to eq(1)
    expect(human.notices_ogre?).to be true
  end

  it 'hits the human every second time it swings' do
    ogre = Ogre.new('Brak')
    human = Human.new

    6.times { ogre.encounter(human) }

    expect(human.encounter_counter).to eq(6)
    expect(ogre.swings).to eq(2)
    expect(human.knocked_out?).to be true
  end

  it 'apologizes and the human wakes up' do
    ogre = Ogre.new('Brak')
    human = Human.new

    6.times { ogre.encounter(human) }

    expect(human.knocked_out?).to be true

    ogre.apologize(human)
    expect(human.knocked_out?).to be false
  end
end
