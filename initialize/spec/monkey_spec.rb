require 'rspec'
require_relative '../lib/monkey'

RSpec.describe Monkey do
  it 'exists' do
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])

    expect(margaret).to be_an_instance_of(Monkey)
  end

  it 'has a name' do
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])

    expect(margaret.name).to eq("Margaret")
  end

  it 'has a type' do
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])

    expect(margaret.type).to eq("Bonobo")
  end

  it 'has a favorite_food' do
    margaret = Monkey.new(["Margaret", "Bonobo", "Bananas"])

    expect(margaret.favorite_food).to eq("Bananas")
  end
end
