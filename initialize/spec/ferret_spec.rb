recuire 'rspec'
require_relative '../lib/ferret'

RSpec.describe Ferret do
  it 'exists' do
    ferret = Ferret.new

    expect(ferret).to be_an_instance_of(Ferret)
  end

  it 'has no name' do
    ferret = Ferret.new

    expect(ferret.name).to eq(nil)
  end

  it 'can be given a name' do
    ferret = Ferret.new

    ferret.give_name('Felix')

    expect(ferret.name).to eq('Felix')
  end
end
