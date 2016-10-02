# pseudocode
# correct_word is an ARRAY
# working_word is an ARRAY that keeps getting letters pushed into it. the length of this
	# must be equal to correct_word. it won't add the same letter more than necessary.

# guess_count is a WHILE loop that keeps track of guesses. Once the guesses are up
# it prints, "You are now out of guesses!" 

# user_feedback prints the progress of guesses in terms of if working word has a 
# match with correct_word. It will only fill in the blanks if there is a match with
# correct_word.

class Game
	attr_reader :correct_word, :working_word, :guess_count, 

	def initialize(correct_word)
		@correct_word = correct_word.split("")
		@working_word = Array.new(@correct_word.length, "-")
		@guess_count = 0
		@all_guesses = []
	end

	

	def user_feedback(letter)
	@guess_count = 0
	arr = Array.new(@correct_word.length, "-")
		while @guess_count < @correct_word.length
		puts "Enter another guess"
			loop do
			break if @guess_count = @correct_word.length
			add_letter_to_working_word(letter)	
				if @correct_word.include?(letter)
				p new_arr = arr.insert(@correct_word.index(letter), letter)
				else
				p arr
				puts "You have #{guess_count} guesses left"
				end
			@guess_count += 1
			end
		end	
	end	
end

# driver code / ui



puts "User 1 (aka keeper of secrets) please enter your word:"
correct_word = gets.chomp
game = Game.new(correct_word)

puts "User 2, please enter your guess:"
letter = gets.chomp
p game.user_feedback(letter)