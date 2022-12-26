require 'rspec'
require './lib/phoenix'

RSpec.describe Phoenix do

	describe "The Phoenix was Self-created at the Beginning of Time" do
		it "exists" do
			phoenix = Phoenix.new("Bennu")

			expect(phoenix.name).to eq("Bennu")
		end

		it "is born golden and stoic" do
			phoenix = Phoenix.new("Bennu")

			expect(phoenix.color).to eq("golden")
			expect(phoenix.mood).to eq("stoic")
		end

		#this test might NOT be needed?? Just skip to next one
		it "changes color & mood when feeling any single emotion" do
			phoenix = Phoenix.new("Bennu")

			phoenix.feels_emotion(:cognizance)

			expect(phoenix.color).to eq("amber")
			expect(phoenix.mood).to eq("heated")
		end

		it "has emotional awareness about how many times it has the same emotion" do
			phoenix = Phoenix.new("Bennu")

			phoenix.feels_emotion(:curiosity)
			expect(phoenix.emotional_awareness[:curiosity]).to eq(1)

			phoenix.feels_emotion(:curiosity)
			expect(phoenix.emotional_awareness[:curiosity]).to eq(2)
		end 

		it "has emotional awareness about how many times it has had different emotions" do
			phoenix = Phoenix.new("Bennu")
		
			phoenix.feels_emotion(:exuberance)
			phoenix.feels_emotion(:exuberance)
			phoenix.feels_emotion(:exuberance)

			phoenix.feels_emotion(:gratitude)
			phoenix.feels_emotion(:gratitude)

			phoenix.feels_emotion(:autonomy)

			expect(phoenix.emotional_awareness).to eq({:exuberance => 3, :gratitude => 2, :autonomy => 1})
			expect(phoenix.emotional_awareness.include?(:sorrow)).to eq(false)
		end

		it "changes color & mood when feeling an emotion 2, 3, and 4 times" do
			phoenix = Phoenix.new("Bennu")

			2.times { phoenix.feels_emotion(:wisdom) }
			expect(phoenix.color).to eq("scarlet")
			expect(phoenix.mood).to eq("fiery")

			phoenix.feels_emotion(:wisdom)
			expect(phoenix.color).to eq("crimson")
			expect(phoenix.mood).to eq("ablaze")

			phoenix.feels_emotion(:wisdom)
			expect(phoenix.color).to eq("deep violet")
			expect(phoenix.mood).to eq("incandescent")
		end

		it "releases a tear only after feeling the same emotion on the 3rd time" do
			phoenix = Phoenix.new("Bennu")
			
			2.times { phoenix.feels_emotion(:confusion) }
			expect(phoenix.releases_tear?).to be false

			phoenix.feels_emotion(:confusion)
			expect(phoenix.releases_tear?).to be true

			phoenix.feels_emotion(:confusion)
			expect(phoenix.releases_tear?).to be false
		end

		it "bursts into flames and is reborn after feeling the same emotion 5 times" do
			phoenix = Phoenix.new("Bennu")

			5.times { phoenix.feels_emotion(:revelation) }

			expect(phoenix.color).to eq("golden")
			expect(phoenix.mood).to eq("stoic")
			expect(phoenix.emotional_awareness).to eq({})
			expect(phoenix.releases_tear?).to eq(false)
			expect(phoenix.pharaoh).to eq(nil)
		end
	end

	describe "Pharaohs can Exist" do
		it "pharaohs have names, reputations, a dynastic period, and the phoenix" do
			phoenix = Phoenix.new("Bennu")
			narmer = Pharaoh.new("Narmer", "The Unifier", "3100 BCE", phoenix)

			expect(narmer.name).to eq("Narmer")
			expect(narmer.reputation).to eq("The Unifier")
			expect(narmer.dynastic_period).to eq("3100 BCE")
		end

		it "pharaohs can check if they are healthy" do
			phoenix = Phoenix.new("Bennu")
			narmer = Pharaoh.new("Narmer", "The Unifier", "3100 BCE", phoenix)
			
			expect(narmer.healthy?).to eq(true)
		end
	end

	describe "The Phoenix throughout Ancient Egypt" do
		it "the phoenix chooses to follow the pharaoh" do
			phoenix = Phoenix.new("Bennu")
			narmer = Pharaoh.new("Narmer", "The Unifier", "3100 BCE", phoenix)
			
			phoenix.follows_pharaoh(narmer)

			expect(phoenix.pharaoh).to eq(narmer)
		end

		it "the pharaoh is unhealthy at the age of 18 or older" do
			phoenix = Phoenix.new("Bennu")
			narmer = Pharaoh.new("Narmer", "The Unifier", "3100 BCE", phoenix)
			phoenix.follows_pharaoh(narmer)

			narmer.age = 17
			expect(narmer.healthy?).to eq(true)
			
			narmer.ages
			expect(narmer.healthy?).to eq(false)
		end

		it "the phoenix feels an emotion when the pharaoh takes an action" do
			phoenix = Phoenix.new("Bennu")
			khufu = Pharaoh.new("Khufu", "The Builder", "3150 BCE", phoenix)
			phoenix.follows_pharaoh(khufu)

			khufu.takes_action(:perseverance)
			expect(phoenix.emotional_awareness[:perseverance]).to eq(1)
		end

		# This test is NOT necessary!
		it "the phoenix releases a tear after the pharaoh takes the same 3 actions" do
			phoenix = Phoenix.new("Bennu")
			khufu = Pharaoh.new("Khufu", "The Builder", "3150 BCE", phoenix)
			phoenix.follows_pharaoh(khufu)

			3.times { khufu.takes_action(:perseverance) }
			expect(phoenix.releases_tear?).to eq(true)
		end

		it "the unhealthy pharaoh becomes healthy after the phoenix releases a tear" do
			phoenix = Phoenix.new("Bennu")
			tutankhamun = Pharaoh.new("Tutankhamun", "The Child", "1500 BCE", phoenix)
			phoenix.follows_pharaoh(tutankhamun)
			
			18.times { tutankhamun.ages }
			expect(tutankhamun.healthy?).to eq(false)

			3.times { tutankhamun.takes_action(:compassion) }
			expect(phoenix.releases_tear?).to eq(true)
			
			expect(tutankhamun.healthy?).to eq(true)
		end

		it "when the pharaoh dies the phoenix feels sorrow 5 times, bursts into flames, and is reborn" do
			phoenix = Phoenix.new("Bennu")
			tutankhamun = Pharaoh.new("Tutankhamun", "The Child", "1500 BCE", phoenix)
			phoenix.follows_pharaoh(tutankhamun)

			tutankhamun.age = 19
			expect(tutankhamun.alive?).to eq(true)
			# This should be it's own method, below a new method

			4.times { tutankhamun.takes_action(:trepidation) }
			expect(phoenix.emotional_awareness[:trepidation]).to eq(4)
			expect(phoenix.color).to eq("deep violet")
			expect(phoenix.mood).to eq("incandescent")

			tutankhamun.dies
			expect(tutankhamun.alive?).to eq(false)

			expect(phoenix.color).to eq("golden")
			expect(phoenix.mood).to eq("stoic")
			expect(phoenix.emotional_awareness).to eq({})
			expect(phoenix.releases_tear?).to eq(false)
			expect(phoenix.pharaoh).to eq(nil)
		end
	end
end