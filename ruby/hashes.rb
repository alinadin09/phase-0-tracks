# Ask the user for basic information and store the answers and values.

puts "Please enter the following information as it appears on your screen:"
puts "What is your name?"
name = gets.chomp

puts "What is your email?"
email = gets.chomp

puts "What is your phone number?"
phone = gets.chomp.to_i

puts "Is ombre cool?"
ombre = gets.chomp

# Feed the values into a hash, and give them keys:

job_app = {

	name: name,
	email: email,
	phone: phone,
	ombre: ombre
}

puts "Here is your completed application:"
p job_app

# Ask the user if she wants to update:

puts "Do you want to update anything? (type yes/no)"
input = gets.chomp
	if input == "yes"
		puts "what do you want to update?" # This part turns "update" into a value for the key.
		update = gets.chomp.intern
		puts "Please update name, email, phone, or ombre."
		repsonse = gets.chomp
			if update == :name
				job_app[:name] = repsonse
			elsif update == :email
				job_app[:email] = repsonse
			elsif update == :phone
				job_app[:phone] = repsonse
			elsif update == :ombre
				job_app[:ombre] = repsonse
			end		

		
		p job_app


	elsif input == "no"
		puts "Great! You're done."
		p job_app
	end

