class Wizard
  attr_reader :name,
							:bearded
							# don't need rested here because we don't call it outside the class file

	def initialize(name, bearded: true)
		@name = name
		@bearded = bearded
		@rested = true
		@spells = 0
	end

	def bearded?
		@bearded
	end

	def incantation(input)
		"sudo #{input}"
	end

	def rested?
		@rested
	end

	def cast
		if @spells < 2
			@spells += 1
			"MAGIC MISSILE!"
		else
			@rested = false
		end
		# this method doesn't allow the wizard to cast any spells 
		# AFTER the wizard is tired!

		# OPTIONS 2 #	
	
		# @spells += 1
		# if @spells < 3
		# else
		# 	@rested = false
		# end
		# "MAGIC MISSILE!"
		# this last line is the return so it MUST go at the end
	end


end