class Dancer

	attr_reader :name
	attr_accessor :age, :card

	def initialize(name, age)
		@name = "Misty Copeland"
		@age = 33
	end

		def card
			@card = []
		end

		def age=(age)
			@age = age
		end

		def pirouette
			return "*twirls*"
		end

		def leap
			return "*leaps*"
		end

		def bow
			return "*bows*"
		end

		def queue_dance_with(partner)
			@card << partner
			if partner == @card[0]
			dancer_begin_next_dance;
			end
		end

		def dancer_begin_next_dance
			return "Now dancing with @card.at(0)"
			@card.shift
		end


end

