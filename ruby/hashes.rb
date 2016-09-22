puts "Please enter the following information as it appears on your screen:"
puts "What is your name?"
name = gets.chomp.to_s

puts "What is your email?"
email = gets.chomp.to_s

puts "What is your phone number?"
phone = gets.chomp.to_s

puts "Is ombre cool?"
ombre_is_cool = gets.chomp.to_s

job_app = {

	name: name,
	email: email,
	phone: phone.to_i,
	ombre_is_cool: ombre_is_cool.to_b
}

puts "Here is your completed application:"
p job_app

loop do
break if input == "no" 
	
	puts "Do you want to update anything? (type yes/no)"
	input = gets.chomp
	if input == "yes"
		puts "what do you want to update?"
		update = gets.chomp
		if update == "name"


