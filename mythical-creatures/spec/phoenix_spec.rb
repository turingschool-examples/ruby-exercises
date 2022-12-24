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

	it "changes color & mood when feeling an emotion" do
		phoenix = Phoenix.new("Bennu")
		phoenix.feels_emotion(:joyful)
		expect(phoenix.color).to eq("amber")
		expect(phoenix.mood).to eq("heated")
	end

	it "has emotional awareness about how many times it has the same emotion" do
		phoenix = Phoenix.new("Bennu")
		phoenix.feels_emotion(:joyful)
		expect(phoenix.emotional_awareness[:joyful]).to eq(1)
		phoenix.feels_emotion(:joyful)
		expect(phoenix.emotional_awareness[:joyful]).to eq(2)
	end 

	it "changes color & mood when feeling an emotion 2, 3, and 4 times" do
		phoenix = Phoenix.new("Bennu")

		2.times { phoenix.feels_emotion(:joyful) }
		expect(phoenix.color).to eq("scarlet")
		expect(phoenix.mood).to eq("fiery")

		phoenix.feels_emotion(:joyful)
		expect(phoenix.color).to eq("crimson")
		expect(phoenix.mood).to eq("ablaze")

		phoenix.feels_emotion(:joyful)
		expect(phoenix.color).to eq("deep violet")
		expect(phoenix.mood).to eq("incandescent")
	end

	it "only releases a tear after feeling the same emotion 3 times" do
		phoenix = Phoenix.new("Bennu")
		3.times { phoenix.feels_emotion(:joyful) }
		expect(phoenix.releases_tear?).to be true
		phoenix.feels_emotion(:joyful)
		expect(phoenix.releases_tear?).to be false
	end

	it "bursts into flames and is born again after feeling the same emotion 5 times" do
		phoenix = Phoenix.new("Bennu")
		5.times { phoenix.feels_emotion(:joyful) }
		expect(phoenix.emotional_awareness).to eq({})
		expect(phoenix.color).to eq("golden")
		expect(phoenix.mood).to eq("stoic")
	end

	it "pharaohs have names, reputations, and a dynastic period" do
		narmer = Pharaoh.new("Narmer", "The Unifer", "3100 BCE")
		khufu = Pharaoh.new("Khufu", "The Builder", "3150 BCE")
		tutankhamun = Pharaoh.new("Tutankhamun", "The Child", "1500 BCE")

		expect(narmer.name).to eq("Narmer")
		expect(narmer.reputation).to eq("The Unifer")
		expect(narmer.dynastic_period).to eq("3100 BCE")

		expect(khufu.name).to eq("Khufu")
		expect(khufu.reputation).to eq("The Builder")
		expect(khufu.dynastic_period).to eq("3150 BCE")

		expect(tutankhamun.name).to eq("Tutankhamun")
		expect(tutankhamun.reputation).to eq("The Child")
		expect(tutankhamun.dynastic_period).to eq("1500 BCE")
	end

	it "pharaohs can check if they are health" do
		narmer = Pharaoh.new("Narmer", "The Unifer", "3100 BCE")
		khufu = Pharaoh.new("Khufu", "The Builder", "3150 BCE")
		tutankhamun = Pharaoh.new("Tutankhamun", "The Child", "1500 BCE")

		expect(narmer.healthy?).to eq(true)
		expect(khufu.healthy?).to eq(true)
		expect(tutankhamun.healthy?).to eq(true)
	end

	it "pharaohs age and become unhealth by the age of 18" do
		narmer = Pharaoh.new("Narmer", "The Unifer", "3100 BCE")
		
		narmer.age(10)
		expect(narmer.healthy?).to eq(true)
		
		narmer.age(18)
		expect(narmer.healthy?).to eq(false)

		narmer.age(30)
		expect(narmer.healthy?).to eq(false)

	end

	it "feels an emotion when observing the action of a pharaoh" do
		phoenix = Phoenix.new("Bennu")
		khufu = Pharaoh.new("Khufu", "The Builder", "3150 BCE")

		khufu.takes_action(:fascination)
		expect(phoenix.emotional_awareness[:fascination]).to eq(1)
	end

	it "feels an emotion when a pharaoh takes an action" do
		phoenix = Phoenix.new("Bennu")
		khufu = Pharaoh.new("Khufu", "The Builder", "3150 BCE")

		3.times { khufu.takes_action(:fascination) }
		expect(phoenix.releases_tear?).to eq(true)
	end

	it "the unhealthy pharaoh become healthy after receiving a phoenix tear" do
		phoenix = Phoenix.new("Bennu")
		tutankhamun = Pharaoh.new("Tutankhamun", "The Child", "1500 BCE")
		
		expect(tutankhamun.healthy?).to eq(true)
		
		tutankhamun.age(18)
		expect(tutankhamun.healthy?).to eq(false)

		3.times { tutankhamun.takes_action(:astonishment) }
		expect(phoenix.releases_tear?).to eq(true)
		expect(tutankhamun.healthy?).to eq(true)
	end

	it "when a pharaoh dies the phoenix feels sorrow 5 times, bursts into flames, and is reborn" do
		phoenix = Phoenix.new("Bennu")
		tutankhamun = Pharaoh.new("Tutankhamun", "The Child", "1500 BCE")
		
		tutankhamun.age(19)
		expect(tutankhamun.alive?).to eq(true)

		tutankhamun.dies
		expect(tutankhamun.alive?).to eq(false)

		expect(phoenix.emotional_awareness).to eq({})
		expect(phoenix.color).to eq("golden")
		expect(phoenix.mood).to eq("stoic")
	end
end