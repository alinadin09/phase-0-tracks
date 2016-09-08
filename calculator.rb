

def interface
	
	puts "Push ENTER to run program (Type exit to quit)"
	user_input = gets.chomp

	until user_input == "done"
	
# Prompt the user for a calculation that the user would like to perform, and make each character an element of an array:
	
	puts "Please enter your desired equation:"
	
		equation = gets.chomp.split(' ')

	
# Make those elements become the arguments in the method. Each element will be called on by its index.

		def calculate(equation)
			
			if equation[1] == "+"
			puts equation[0].to_i + equation[2].to_i
			elsif equation[1] == "-" 
			puts equation[0].to_i - equation[2].to_i
			elsif equation[1] == "*" 
			puts equation[0].to_i * equation[2].to_i
			elsif equation[1] == "/" 
			puts equation[0].to_i / equation[2].to_i
			end
				

		end
		# Print the result of the method:
		calculate(equation)	
	
	end
	
	puts "Push ENTER to run program again (Type quit to exit)"
		user_input = gets.chomp
	
end

interface

	