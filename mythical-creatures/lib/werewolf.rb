class Werewolf
	attr_reader :name,
							:location,
							:victims
						
						
	def initialize(name, location = "London")
		@name = name
		@location = location
		@human = true
		@hungry = false
		@victims = []
  end

	def human?
		@human
	end

	def wolf?
		if human? 
			false
		else
			true
		end
	end

	def change!
		if human?
			@human = false
			@hungry = true
		else
			@human = true
			@hungry = false
		end
	end

	def hungry?
		@hungry
	end

	def consumes(victim)
		if wolf?
			@victims << victim
			@hungry = false
			victim.status = :dead_as_a_doorknob
		end
	end
end

class Victim
	attr_accessor :status

	def initialize
		@status = :alive
	end
end