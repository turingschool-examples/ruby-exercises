require 'rspec'
require_relative '../lib/beaver'

RSpec.describe Beaver do
  it 'exists' do
    barry = Beaver.new("Barry")

    expect(barry).to be_an_instance_of(Beaver)
  end

  it 'has a name' do
    barry = Beaver.new("Barry")

    expect(barry.name).to eq("Barry the Beaver")
  end

  it 'could have a different name' do
    beatrice = Beaver.new("Beatrice")

    expect(beatrice.name).to eq("Beatrice the Beaver")
  end
end
