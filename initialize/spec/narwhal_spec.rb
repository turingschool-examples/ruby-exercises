require 'rspec'
require_relative '../lib/narwhal'

RSpec.describe Narwhal do
  it 'exists' do
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})

    expect(nancy).to be_an_instance_of(Narwhal)
  end

  it 'has a name' do
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})

    expect(nancy.name).to eq("Nancy")
  end

  it 'has a weight' do
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})

    expect(nancy.weight).to eq(500)
  end

  it 'has is cute' do
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})

    expect(nancy.cute?).to eq(true)
  end

  it 'can be a different narwhal' do
    neville = Narwhal.new({cute: false, weight: 499, name: "Neville"})

    expect(neville.name).to eq("Neville")
    expect(neville.weight).to eq(499)
    expect(neville.cute?).to eq(false)
  end
end
