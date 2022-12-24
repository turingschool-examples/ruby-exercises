class Phoenix
	attr_reader :name,
							:color,
							:mood,
							:emotional_awareness

	attr_accessor :feels_emotion(emotion)

	def initialize(name, color = "golden", mood = "stoic")
		@name = name
		@color = color
		@mood = mood
		@emotional_awareness = {}
		@releases_tear = false
	end

	def burst_into_flame
			@color = "golden"
			@mood = "stoic"
			@emotional_awareness = {}
	end

	def feels_emotion(emotion)
		if @emotional_awareness.has_key?(emotion)
			@emotional_awareness[emotion] += 1
		
			if @emotional_awareness[emotion] == 2
				@color = "scarlet"
				@mood = "fiery"
			elsif @emotional_awareness[emotion] == 3
				@releases_tear = true
				@color = "crimson"
				@mood = "ablaze"
			elsif @emotional_awareness[emotion] == 4
				@releases_tear = false
				@color = "deep violet"
				@mood = "incandescent"
			elsif @emotional_awareness[emotion] >= 5
				burst_into_flame
			end

		else
			@emotional_awareness[emotion] = 1
			@color = "amber"
			@mood = "heated"
		end
	end

	def releases_tear?
		@releases_tear
	end
end


class Pharaoh
	attr_reader :name,
				:reputation,
				:dynastic_period

	def initialize(name, reputation, dynastic_period)
		@name = name
		@reputation = reputation
		@dynastic_period = dynastic_period
		@health = true
		@alive = true
	end

	def healthy?
		@health
	end

	def age(number)
		if number >= 30
			@health = false
		end
	end

	def takes_action(emotion)
		phoenix.feels_emotion(emotion)
	end

	def alive?
		@alive
	end

	def dies
		@alive == false
		5.times { phoenix.feels_emotion(:sorrow) }
	end

end
