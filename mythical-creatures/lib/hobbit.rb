class Hobbit
	attr_reader :name,
							:disposition,
							:age,
							:is_short

	def initialize(name, disposition = "homebody")
		@name = name
		@disposition = disposition
		@age = 0
		@is_short = true
	end

	def celebrate_birthday
		@age += 1
	end

	def adult?
		@age > 32 
		# doesn't need an if statement because adult? will return a boolean
	end

	def old?
		@age > 100
	end

	def has_ring?
		@name == "Frodo"
	end

	def is_short?
		@is_short
	end

end