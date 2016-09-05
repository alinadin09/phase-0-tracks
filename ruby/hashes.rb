# Application needs to take in data from user about his name, age, address, preferences
idesign_job_app = []

# Ask the user the first question
puts "Hello! Welcome to the interior design job application! Please enter your name."

# Gather data from the user.
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "How many kids do you have?"
kids = gets.chomp.to_i
puts "What is your address?"
address = gets.chomp
puts "What is your decor theme?"
theme = gets.chomp

# Feed all gathered data into the program array:
idesign_job_app << [name, age, address, kids, theme]

# initialize program
idesign_job_app

# print data collected for the interior design application:
puts "Here is your completed application."


# store the data in keys
 idesign_job_app = {
	:name => name,
	:age => age,
	:kids => kids,
 	:address => address,
	:theme => theme
 }
 
 p idesign_job_app
 
 # Allow user to update the key. He or she types the key as a string; which gets converted to a key. User is prompted to enter in new data for the key, which then updates the key. The hash is printed back to the user.
 
 loop do
 puts "Would you like to update anything?"
 answer = gets.chomp.downcase
 break if answer == "no"
 
	 if answer == "yes"
	 puts "Which section would you like to update? (name, age, kids, address, or theme?)"
	 reply = gets.chomp.downcase
	 
	 	case reply 
		 when "name" then puts "please update"
		 idesign_job_app[:name] = gets.chomp
		 when "age" then puts "please update"
		 idesign_job_app[:age] = gets.chomp.to_i
		 when "kids" then puts "please update"
		 idesign_job_app[:kids] = gets.chomp.to_i
		 when "address" then puts "please update"
		 idesign_job_app[:address] = gets.chomp
		 when "theme" then puts "please update"
		 idesign_job_app[:theme] = gets.chomp
		end
		
	 end
	 
end
  	
puts "Great! You're done."
puts idesign_job_app