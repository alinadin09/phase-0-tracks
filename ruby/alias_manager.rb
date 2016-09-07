puts "please enter your name"
name = gets.chomp
	
#turns name into an array with two elements.
# arrayed_name = original_name.split(' ')

#separates name into individual objects in an array:
# p name_in_char = arrayed_name.map! { |a| a.chars }

# iterate through the name, if the letter is a vowel, create a new name "alias_name" which replaces with the next vowel. else, it will replace with the next consonant. 

def encrypt_name(name)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	alias_name = ""
	name.each_char do |letter|
	# if the letter is inside the array called vowels
		if vowels.include?(letter)
			alias_name << vowels[vowels.index(letter)+1]
			# replace the letter with the next letter in the array
			# put it into alias_name
		elsif consonants.include?(letter)
			alias_name << consonants[consonants.index(letter)+1]
			# replace the letter with the next consonant in the array
			# put it into alias_name
		else
			alias_name << letter
			# put letter into alias_name
			# this is for the spaces
		end
	end
	puts alias_name.split.map(&:capitalize)*' '
end

encrypt_name(name)
	
	# Swaps first and last name order:
	# fakename = next_vowel("alina din").reverse
	
	# Capitalizes the first letter of each word:
	# fakename.split.map(&:capitalize)*' '



