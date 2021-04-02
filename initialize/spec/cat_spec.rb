require 'rspec'
require_relative '../lib/cat'

RSpec.describe Cat do
  it 'exists' do
    carlos = Cat.new("Carlos")

    expect(carlos).to be_an_instance_of(Cat)
  end

  it 'has a name' do
    carlos = Cat.new("Carlos")

    expect(carlos.name).to eq("Carlos")
  end

  it 'has a sound' do
    carlos = Cat.new("Carlos")

    expect(carlos.sound).to eq("meow")
  end
end
