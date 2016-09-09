# Alina Din (alinadin09) and Ricardo Gomez 

# Release 0 and 1

class Puppy

    def initialize
        p "Initializing new puppy instance..."
    end

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

    def speak(integer)
    (integer).times do 
        puts "Woof"
    end
    end
    
    def roll_over
        puts "rolls over"
    end
    
# 1 dog year is equal to 6.5 human years.
    
    def dog_years(human_year)
        puts human_year*6.5
    end
    
    def sit(commond)
        puts "I #{commond} down"
    end
    
end

# Rolly is an instance of the Puppy class
rolly = Puppy.new
rolly.fetch("ball")
rolly.speak(3)
rolly.roll_over
rolly.dog_years(2)
rolly.sit("sat")

# Release 2

class Athletes
	
	def initialize
		puts "Initializing new Athlete instance..."
	end
	
	def kobe
		puts "One of the greatest basketball players"
	end
	
	def derrick_jeter
		puts "one of the greatest baseball players"
	end
end

athlete_list = []
# Use a loop to create 50 instances of the class Athlete.
50.times do
	athlete_list << athlete = Athletes.new
end

athlete_list.each do |player| 
	 player.kobe
	 player.derrick_jeter 
end


