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

	xit "can age" do
	end

	xit "can will burst into flames every 500 years" do
	end

	xit "is reborn after bursting into flames" do
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

	it "releases a tear after feeling the same emotion 3 times & returns to default mood & color" do
		phoenix = Phoenix.new("Bennu")

		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)

		expect(phoenix.emotional_tracker[:joyful]).to eq(3)
		expect(phoenix.releases_tear?).to be true
		expect(phoenix.mood).to eq("stoic")
		expect(phoenix.color).to eq("golden")
	end

	it "it forgets an emotion after releasing a tear/feeling the same emotion 3 times" do
		phoenix = Phoenix.new("Bennu")

		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)
		phoenix.feels_emotion(:joyful)	
		expect(phoenix.emotional_tracker[:joyful]).to eq(3)

		phoenix.feels_emotion(:joyful)
		expect(phoenix.emotional_tracker[:joyful]).to eq(1)
		expect(phoenix.releases_tear?).to be false
	end

	xit "feels joyful when being near a human" do
	end


	xit "when that human is sick it's tear can heal the human" do
	end

	xit "spends time with humans" do
	end

end