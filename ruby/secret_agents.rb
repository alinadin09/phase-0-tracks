# Every letter input will output the next letter forward in the string.
# When we put in a string, we are asking encrypt to find the next letter
# and go forward and return the new string or word.





encrypt("tim")

# Every letter input will output the previous letter backward in the string.
# When we put in a string, we are asking decrypt to find the index of each individual letter, and then telling it to 
# go backwards one index value to the right and return the corresponding letter for 
# the new index value.
def encrypt(input)
	index = 0 
	while index < input.length
		input[index] = input[index].next
		index += 1 
	end
	puts input
end

def decrypt(input)
index = 0
key = "abcdefhijklmnopqrstuvwxyz"
	while index < input.length
	  input[index] = key[key.index(input[index])-1]
	  index += 1
	end
	puts input
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

	encrypt(passcode)

	end

	if answer == "Decrypt"

	puts "Type in coded phrase"
	locked_phrase = gets.chomp

	decrypt(locked_phrase)

	end