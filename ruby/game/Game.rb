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
	attr_accessor :correct_word
	attr_accessor :working_word
	attr_reader :guess_count

	def initialize
		@correct_word = correct_word
		@working_word = working_word
		@guess_count = 0
	end

	def add_letter_to_working_word(letter)
			@working_word = []
			@working_word << letter
			p @working_word
	end

	def user_feedback(letter)
	counter = 0
	arr = Array.new(@correct_word.length, "-")
		while @guess_count <= @correct_word.length
			puts "Enter another guess"
			if @correct_word.include?(letter)
			p new_arr = arr.insert(@correct_word.index(letter), letter)
			else
			p arr
			puts "You have #{guess_count} guesses left"
			end
		end
		counter += 1
	end
	
end

# driver code / ui

puts "Welcome to the Word Game!"
game = Game.new

puts "User 1 (aka keeper of secrets) please enter your word:"
p game.correct_word = gets.chomp.split('')

puts "User 2, please enter your guess:"
letter = gets.chomp
p game.add_letter_to_working_word(letter)
p game.user_feedback(letter)