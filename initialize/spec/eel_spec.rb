require 'rspec'
require_relative '../lib/eel'

RSpec.describe Eel do
  it 'exists' do
    eel = Eel.new("Earl")

    expect(eel).to be_an_instance_of(Eel)
  end

  it 'is anonymous' do
    eel = Eel.new("Earl")

    expect(eel.name).to eq("just another eel")
  end
end
