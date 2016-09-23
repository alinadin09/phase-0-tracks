class Santa 
	attr_reader :age, :ethnicity
	attr_accessor :gender 
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		
      puts "Initializing new Santa instance..."
  	end
 
	def reindeers 
	  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end
	
	
	def celebrate_birthday=(age_by)
		@age = age + age_by
		puts "new age is #{@age}!"
	end
	
	def get_mad_at=(reindeer)
		reindeers.delete_at(reindeers.index(reindeer))
		reindeers << reindeer
		puts "#{reindeer} has been sent to end of the line."
	end
	
# getter methods

	def age
		@age = 0 
	end
	
	# def ethnicity
	# 	@ethnicity
	# end


# setter method

	# def gender=(new_gender)
		# @gender = new_gender
		# puts "My new gender is #{new_gender}."
	# end
	
	# Release 4
	

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

	puts "Welcome to SantaCon!"
	puts "How many santas would you like to register?"
	number_of_santas = gets.chomp.to_i
		number_of_santas.times do 
			Santa.new(example_genders.sample, example_ethnicities.sample)
		end
	
end




# tim = Santa.new("Male", "American")
# tim.speak
# tim.eat_milk_and_cookies("oreo")
# tim.celebrate_birthday=4
# tim.get_mad_at = ("Vixen")
# tim.gender = ("n/a")


