require 'rspec'
require './lib/phoenix'

RSpec.describe Phoenix do

	it "exists" do
		phoenix = Phoenix.new("Bennu")

		expect(phoenix.name).to eq("Bennu")
	end

	it "is born a golden color and in a stoic mood" do
		phoenix = Phoenix.new("Bennu")

		expect(phoenix.color).to eq("golden")
		expect(phoenix.mood).to eq("stoic")
	end


	it "can change color & mood when feeling an emotion" do
		phoenix = Phoenix.new("Bennu")

		phoenix.feels_emotion(:joyful)

		expect(phoenix.color).to eq("sarlet")
		expect(phoenix.mood).to eq("heated")
	end

	it "can track how many times it has the same emotion" do
		phoenix = Phoenix.new("Bennu")

		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)

		expect(phoenix.emotional_tracker[:joyful]).to eq(3)
	end

	it "releases a single tear after feeling the same emotion 3 times" do
		phoenix = Phoenix.new("Bennu")

		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)

		expect(phoenix.emotional_tracker[:joyful]).to eq(3)
		expect(phoenix.releases_tear?).to be true
	end

	it "it forgets that emotion after feeling it 3 times" do
		phoenix = Phoenix.new("Bennu")

		phoenix.feels_emotion(:joyful)
		expect(phoenix.emotional_tracker[:joyful]).to eq(1)

		phoenix.feels_emotion(:joyful)
		expect(phoenix.emotional_tracker[:joyful]).to eq(2)

		phoenix.feels_emotion(:joyful)
		expect(phoenix.emotional_tracker[:joyful]).to eq(3)
		expect(phoenix.releases_tear?).to be true

		phoenix.feels_emotion(:joyful)
		expect(phoenix.emotional_tracker[:joyful]).to eq(1)
		expect(phoenix.releases_tear?).to be false
	end


end