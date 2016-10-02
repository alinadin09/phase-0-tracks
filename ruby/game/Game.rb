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
		if @correct_word.include?(letter)
			@working_word.delete_at(@correct_word.index(letter))
			@working_word.insert(@correct_word.index(letter), letter).join(' ')
		else
			p @working_word.join(' ')
		end 	
	end
	
	def repeated_guesses_dont_count(letter)
		
	end
  	
  	
end

# driver code / ui



puts "User 1 (aka keeper of secrets) please enter your word:"
correct_word = gets.chomp.split('')
game = Game.new(correct_word)

while game.guess_count < game.length 
puts "User 2, please enter your guess:"
letter = gets.chomp
game.increase_guess_count_when_adding_letter(letter)
# game.repeated_guesses_dont_count(letter)
end 