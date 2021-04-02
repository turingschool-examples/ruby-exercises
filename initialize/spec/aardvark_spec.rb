require 'rspec'
require_relative '../lib/aardvark'

RSpec.describe Aardvark do
  it 'exists' do
    art = Aardvark.new("Art")

    expect(art).to be_an_instance_of(Aardvark)
  end

  it 'has a name' do
    art = Aardvark.new("Art")

    expect(art.name).to eq("Art")
  end
end
