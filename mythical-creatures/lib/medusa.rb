class Medusa
	attr_reader :name,
							:statues
						
	def initialize(name)
		@name = name
		@statues = []
		@victims_full = false
	end

	def stare(victim)
		@statues << victim
		victim.stoned = true
		revive
	end

	def revive
		if @statues.count > 3 
			@statues[0].stoned = false
			@statues.shift
		end
	end

	def victims_full?
		if @statues.count >= 3
			@victims_full = true
		else
			false
		end
	end 
end

class Person
	attr_reader :name
	attr_accessor :stoned
						
	def initialize(name)
		@name = name
		@stoned = false
	end

	def stoned?
		@stoned
	end
end