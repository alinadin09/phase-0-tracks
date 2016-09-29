class Santa

	def initialize(gender, ethnicity)
		puts "Intializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		puts "gender is #{gender} and ethnicity is #{ethnicity}"
	end

	def reindeer_ranking
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def age
		@age = 0
	end

	def speak
		puts "Ho ho ho! Happy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

end

# santa = Santa.new("girl", "Pakistani")
# santa.speak
# santa.eat_milk_and_cookies("sugar")

santas = []


	santas << Santa.new("agender", "black")
	santas << Santa.new("female", "Latino")
	santas << Santa.new("bigender", "white")
	santas << Santa.new("male", "Japanese")
	santas << Santa.new("female", "prefer not to say")
	santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
	santas << Santa.new("N/A", "N/A")

# puts "Creating a loop with each santa:"
# santas.each do |santa|
# 	puts "#{santa} says: " 
# 	santa.speak
# end






