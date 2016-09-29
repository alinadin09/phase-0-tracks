class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Intializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
		p @reindeer_ranking
	end

	def speak
		puts "Ho ho ho! Happy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		@age += 1
		puts "Santa's new age is #{@age}"
	end
end

# UI / Driver Code

# santa = Santa.new("girl", "Pakistani")
# santa.speak
# santa.eat_milk_and_cookies("sugar")
# santa.get_mad_at("Rudolph")
# santa.celebrate_birthday
# p santa.gender = ("boy")
# p santa.age
# p santa.ethnicity

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

5.times do | santa |
puts "---------"
santa = Santa.new(example_genders.sample, example_ethnicities.sample)
santas_age = santa.age = rand(140)
puts "santa's age is: #{santas_age}"
puts "santa's gender is: " + santa.gender
puts "santa's ethnicity is: " + santa.ethnicity
end




# santas = []


# 	santas << Santa.new("agender", "black")
# 	santas << Santa.new("female", "Latino")
# 	santas << Santa.new("bigender", "white")
# 	santas << Santa.new("male", "Japanese")
# 	santas << Santa.new("female", "prefer not to say")
# 	santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# 	santas << Santa.new("N/A", "N/A")

# puts "Creating a loop with each santa:"
# santas.each do |santa|
# 	puts "#{santa} says: " 
# 	santa.speak
# end






