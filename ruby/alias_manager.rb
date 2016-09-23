# iterate through the name;
# if the letter is a vowel, create a new name "alias_name" which replaces each vowel with the next vowel. 
# and replace each consonant with the next consonant. 




def encrypt_name(name)

	loop do 
	puts "please enter your name (type quit if you want to exit the program)"
	name = gets.chomp
	break if name == 'quit'

name_storage = {}

name_storage[:real_name] = name

	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	alias_name = ""
	name.each_char do |letter|
	# if the letter is inside the array called vowels
		if vowels.include?(letter)

			# replace the letter with the next vowel in the array
			# put it into alias_name
			alias_name << vowels[vowels.index(letter)+1]
		
		# replace the letter with the next consonant in the array
		# put it into alias_name
		elsif consonants.include?(letter)
			alias_name << consonants[consonants.index(letter)+1]
		
		# put letter into alias_name
		# this is for the spaces	
		else
			alias_name << letter
			
		end
	end
	encrypted_name = alias_name.split.reverse.map(&:capitalize)*' '

	name_storage[:fake_id] = encrypted_name


	puts "This is your alias name!"
	p encrypt_name(name)

end


end


