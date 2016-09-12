Game

# pseudocode

# 1. One user enters a word 
# 2. Another user attempts to guess the word by entering one letter at a time, called a "trial." 
# (trial = number of letters in the word)
# 3. After the trials are over, the second user either wins or loses depending if he or she got all the letters right.

# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. 
# So if the secret word is "unicorn", the user will start out seeing 
# something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# -------------------------

# input: first user enters his name as a STRING
# steps: it gets stored as user1

# input: a string of the correct_word 
# steps:
	# String correct_word becomes an array through characters.
	# guess_chances will be equal to the length of the correct_word array.

# input: second user enters his name as a string (this gets fed into a class variable or getter method?)
# steps: it gets stored as user2

# Game gets initialized and user2 is prompted for his first guess

# input: string of one letter
# steps: 
	# letter gets fed into array working_word, 
		# if the letter is a match with correct_word, remaining guess_chances becomes x-1
			# PRINT "Good guess! Keep going; You have #{x-1} guesses left."
		# elsif the letter is not a match AND is a duplicate, guess_chances is unchanged
		# elsif the letter is not a match, guess_chances goes down
			# PRINT "Sorry! Try again, you have #{x-1} guesses left." 
	# When guesses are 0:
		# IF working_word == correct_word the user has won
		# ELSE the user has lost. 

class WordGame
	@guess_count
	@correct_word
	@working_word
	@match
	@is_over

 def initialize
 	@correct_word = ""
 	@guess_count = 0 
 	@is_over = false
 	@match = false 
 end 
 	
 def correct_word
 		@correct_word
 end
 	
 def game_stop(index)
 	@guess_count += 1 
 	if @guess_count == @correct_word.count
 		@is_over = true
 		puts "You have maxed your guess counts!"
 	else
 		false
 	end
 end
 
 def working_word
 	@working_word = []
 end 
 		
 	
end 
 	
# user interface

puts "Welcome to the Word Game!"
game = WordGame.new 

puts "To the keeper of secrets: What is your name?"
user1 = gets.chomp

puts "To the guesser of secrets: What is your name?"
user2 = gets.chomp 

puts "#{user1}, please enter your secret word:"
correct_word = gets.chomp.split("") 

while !game.is_over
puts "#{user2}, please guess a letter."
guess = gets.chomp 
working_word << guess