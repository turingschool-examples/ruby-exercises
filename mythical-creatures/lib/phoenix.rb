class Phoenix
		attr_reader :name,
								:color,
								:mood,
								:emotional_tracker

	def initialize(name, color = "golden", mood = "stoic")
		@name = name
		@color = color
		@mood = mood
		@emotional_tracker = {}
		@releases_tear = false
	end

	def feels_emotion(emotion)
		@color = "sarlet"
		@mood = "heated"

		if @emotional_tracker.has_key?(emotion)
			@emotional_tracker[emotion] += 1
		
			if @emotional_tracker[emotion] == 3
				@releases_tear = true
				@color = "golden"
				@mood = "stoic"
			elsif @emotional_tracker[emotion] > 3
				@releases_tear = false
				@emotional_tracker[emotion] = 1
			end
			
		else
			@emotional_tracker[emotion] = 1
		end
	end

	def releases_tear?
		@releases_tear
	end

end