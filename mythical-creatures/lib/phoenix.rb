class Phoenix
	attr_reader :name,
							:color,
							:mood,
							:emotional_awareness,
							:pharaoh

	def initialize(name, color = "golden", mood = "stoic")
		@name = name
		@color = color
		@mood = mood
		@emotional_awareness = {}
		@releases_tear = false
		@pharaoh = nil
	end

	def bursts_into_flames
			@color = "golden"
			@mood = "stoic"
			@emotional_awareness = {}
			@releases_tear = false
			@pharaoh = nil
	end

	def feels_emotion(emotion)
		if @emotional_awareness.has_key?(emotion)
			@emotional_awareness[emotion] += 1
		
			if @emotional_awareness[emotion] == 2
				@color = "scarlet"
				@mood = "fiery"
			elsif @emotional_awareness[emotion] == 3
				releases_tear
				@color = "crimson"
				@mood = "ablaze"
			elsif @emotional_awareness[emotion] == 4
				@releases_tear = false
				@color = "deep violet"
				@mood = "incandescent"
			elsif @emotional_awareness[emotion] >= 5
				bursts_into_flames
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
	
	def releases_tear
		@releases_tear = true
		if @pharaoh != nil
		@pharaoh.health = true 
		end
	end 

	def follows_pharaoh(pharaoh)
		@pharaoh = pharaoh
	end
end


class Pharaoh
	attr_reader :name,
				:reputation,
				:dynastic_period,
				:phoenix

	attr_accessor :health

	def initialize(name, reputation, dynastic_period, phoenix)
		@name = name
		@reputation = reputation
		@dynastic_period = dynastic_period
		@phoenix = phoenix
		@health = true
		@alive = true
	end

	def healthy?
		@health
	end

	def age(number)
		if number >= 18
			@health = false
		end
		@health
	end

	def takes_action(emotion)
		@phoenix.feels_emotion(emotion)
	end

	def alive?
		@alive
	end

	def dies
		5.times { @phoenix.feels_emotion(:sorrow) }
		@alive = false
	end
end
