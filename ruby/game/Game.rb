# Pseudocode:
# 1. user 1 gets prompted for a word, which gets stored as correct_word.
# 2. correct_word gets broken into an array.
# 3. user 2 gets prompted for a guess. guesses are limited to the length of correct_word.
	# each time the user makes a guess of 1 letter, guess_count goes up by 1.
# 4. guesses are stored in the all_guesses array.
	# if there is a match between all_guesses and correct_word, the letter will
	# get pushed into a working_word array, at the correct index spot.
# 5. as user 2 makes a guess, he gets a user_feedback string printed each time, until guesses are up, that shows where his correct_guesses have gone. the letters he has not guessed yet are replaced_with a "-."
# 6. when guesses are up, if all_guesses match correct_word he has won.
	# otherwise, he has lost.

class Game
	attr_reader :correct_word, :working_word, :guess_count, :length

	def initialize(correct_word)
		@correct_word = correct_word
		@length = correct_word.length
		@working_word = Array.new(@length, "-")
		@guess_count = 0
		@all_guesses = []
	end
	
	def increase_guess_count_when_adding_letter(letter)
		@all_guesses << letter
		@guess_count += 1
		puts "You have #{(@length - @guess_count)} guesses left"
		p user_feedback(letter)
	end
	
	def user_feedback(letter)
		@correct_word.each do |element|
			if element == letter 
			@working_word.replace(@correct_word.index(letter), letter)
			# if @correct_word.include?(letter)
			# 	@working_word.delete_at(@correct_word.index(letter))
			# 	@working_word.insert(@correct_word.index(letter), letter).join(' ')
			else
				p @working_word.join(' ')
			end
		end
	end
	
	def repeated_guesses_dont_count(letter)
		if @all_guesses.include?(letter)
			puts "You already guessed that!"
			@guess_count -= 1
		end
	end
  	
  	
end

# driver code / ui



puts "User 1 (aka keeper of secrets) please enter your word:"
correct_word = gets.chomp.split('')
game = Game.new(correct_word)

while game.guess_count < game.length 
puts "User 2, please enter your guess:"
letter = gets.chomp
game.repeated_guesses_dont_count(letter)
game.increase_guess_count_when_adding_letter(letter)
end 


