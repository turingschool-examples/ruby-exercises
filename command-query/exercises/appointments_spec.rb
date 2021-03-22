require 'rspec'
require_relative 'appointments'

RSpec.describe Appointments do
  it 'has no appointments' do
    slots = Appointments.new

    expect(slots.earliest).to be_nil
  end

  it 'has an earliest one' do
    slots = Appointments.new
    t1 = Time.new(2014, 3, 14, 4, 30)

    slots.at(t1)

    expect(slots.earliest).to eq(t1)
  end

  it 'has an earliest of several' do
    slots = Appointments.new
    t1 = Time.new(2014, 6, 14, 16, 30)
    t2 = Time.new(2014, 2, 28, 8, 30)
    t3 = Time.new(2014, 2, 28, 11)
    slots.at t1
    slots.at t2
    slots.at t3

    expect(slots.earliest).to eq(t2)
  end
end
