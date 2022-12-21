class Vampire
	attr_reader :name,
							:pet,
							:thirsty

	def initialize(name, pet = "bat")
		# pet in paramaters above are a default-optional argument
		# but pet is change-able cuz it's ALSO below too: 
		@name = name
		@pet = pet
		@thirsty = true
		#thirsty here is good cuz as an argument (above) you wouldn't know WHAT is true
	end

	def drink
		@thirsty = false
	end

end