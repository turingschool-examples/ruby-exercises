require 'rspec'
require_relative '../lib/jackalope'

RSpec.describe Jackalope do
  it 'exists' do
    jorge = Jackalope.new("Jorge")

    expect(jorge).to be_an_instance_of(Jackalope)
  end

  it 'has a name' do
    jorge = Jackalope.new("Jorge")

    expect(jorge.name).to eq("Jorge")
  end

  it 'starts with an array of etymology' do
    jorge = Jackalope.new("Jorge")

    expect(jorge.etymology).to eq(["Jackrabbit", "Antelope"])
  end
end
