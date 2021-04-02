require 'rspec'
require_relative '../lib/iguana'

RSpec.describe Iguana do
  it 'exists' do
    iguana = Iguana.new

    expect(iguana).to be_an_instance_of(Iguana)
  end

  it 'starts with no colors' do
    iguana = Iguana.new

    expect(iguana.colors).to eq([])
  end

  it 'can set colors' do
    iguana = Iguana.new

    iguana.colors = ["Green", "Red", "White"]

    expect(iguana.colors).to eq(["Green", "Red", "White"])
  end
end
