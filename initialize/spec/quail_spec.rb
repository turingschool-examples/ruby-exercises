require 'rspec'
require_relative '../lib/quail'

RSpec.describe Quail do
  it 'exists' do
    quinn = Quail.new("Quinn")

    expect(quinn).to be_an_instance_of(Quail)
  end

  it 'has a name' do
    quinn = Quail.new("Quinn")

    expect(quinn.name).to eq("Quinn")
  end

  it 'will capitalize its name' do
    quinn = Quail.new("quinn")

    expect(quinn.name).to eq("Quinn")
  end
end
