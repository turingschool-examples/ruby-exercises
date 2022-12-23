class Direwolf
    attr_reader :name,
								:home,
								:size,
								:starks_to_protect,
								:location

    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
				@home = home
				@size = size
				@starks_to_protect = []
				@location = home
    end

		def protects(a_stark)
			if a_stark.location == @location && @starks_to_protect.length < 2
					@starks_to_protect << a_stark 
			end
		end

end

class Stark
	attr_reader :name, 
							:home,
							:location

	def initialize(name, location = 'Winterfell')
		@name = name
		@home = "Winderfell"
		@location = location 
		@safe = false
		@house_words = house_wo
	end

	def safe?
		@safe
	end

end