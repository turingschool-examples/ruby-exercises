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
			# not have to se to nil
			# could call follows pharaoh again
	end

	def feels_emotion(emotion)
		if @emotional_awareness.has_key?(emotion)
			@emotional_awareness[emotion] += 1
		
			#pharaoh dies!
			if @emotional_awareness[emotion] == 2
				@color = "scarlet"
				@mood = "fiery"
			elsif @emotional_awareness[emotion] == 3
				@color = "crimson"
				@mood = "ablaze"
				@releases_tear = true
				@pharaoh.healthy = true if @pharaoh != nil
					# if @pharaoh != nil
					# 	pharaoh.healthy = true 
					# end
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

	def follows_pharaoh(pharaoh)
		@pharaoh = pharaoh
	end
end


class Pharaoh
	attr_reader :name,
				:reputation,
				:dynastic_period,
				:phoenix

	attr_accessor :age, :healthy

	def initialize(name, reputation, dynastic_period, phoenix)
		@name = name
		@reputation = reputation
		@dynastic_period = dynastic_period
		@phoenix = phoenix
		@healthy = true
		@dead = false
		@age = 0
	end

	def healthy?
		@healthy
	end

	def ages
		@age += 1
		if @age >= 18
			@healthy = false
		end
	end

	def takes_action(emotion)
		@phoenix.feels_emotion(emotion)
	end

	def alive?
		!@dead
	end

	def dies
		#DOES this make sense here? NO = it should be in the Phoneix class
		5.times { @phoenix.feels_emotion(:sorrow) }
		@dead = true
	end
end
