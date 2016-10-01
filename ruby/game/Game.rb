# pseudocode
# correct_word is an ARRAY
# working_word is an ARRAY that keeps getting letters pushed into it. the length of this
	# must be equal to correct_word. it won't add the same letter more than necessary.

# guess_count is a WHILE loop that keeps track of guesses. Once the guesses are up
# it prints, "You are now out of guesses!" 

# user_feedback prints the progress of guesses in terms of if working word has a 
# match with correct_word. It will only fill in the blanks if there is a match with
# correct_word.

def WordGame

	def initialize
		@correct_word = ""
		@working_word = ""
		@match = false
		@guess_count_maxed = false
	end

	def add_letter_to_working_word(letter)
		while @working_word.length != correct_word.length
			@working_word << letter
			@guess_count_maxed = false

			if @working_word.length = correct_word.length
				@guess_count_maxed = true
			end
		end
	end

	def user_feedback(letter)
	correct_word_hash = {
		@correct_word: 
	}
		if @correct_word.include?(letter)

	


end