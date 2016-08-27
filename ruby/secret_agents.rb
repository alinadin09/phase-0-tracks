# This was done by alinadin09 and timctao

# Every letter input will output the next letter forward in the string.
# When we put in a string, we are asking encrypt to find the next letter
# and go forward and return the new string or word.

def encrypt(input)
	index = 0 
	while index < input.length
		if input[index] == "z"
			input[index] = "a"
		elsif input[index] == " "
			input[index] = " "
		else
			input[index] = input[index].next
		end
		index += 1 
	end
	input
end


# Every letter input will output the previous letter backward in the string.
# When we put in a string, we are asking decrypt to find the index of each individual letter, and then telling it to 
# go backwards one index value to the right and return the corresponding letter for 
# the new index value.

def decrypt(input)
index = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < input.length
		if input[index] == "z"
			input[index] = "a"
		elsif input[index] == " "
			input[index] = " "
		else
			input[index] = alphabet[alphabet.index(input[index]) - 1]
		end
		index += 1
	end
	input
end

puts "Encrypt or Decrypt?"
answer = gets.chomp

	until answer == "Encrypt" || answer == "Decrypt"
		puts "Invalid answer, try again"
		answer = gets.chomp
	end

	if answer == "Encrypt"

	puts "Type in passcode"
	passcode = gets.chomp

	p encrypt(passcode)

	end

	if answer == "Decrypt"

	puts "Type in coded phrase"
	locked_phrase = gets.chomp.downcase

	p decrypt(locked_phrase)

	end