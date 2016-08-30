# In phase-0-tracks/ruby/iteration.rb, write your own method that takes a block. 
# Your method should print out a status message before and after running the block. 
# Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.

# List of groceries:
# tomatoes
# onions
# milk
# bell pepper
# first status is empty bag, ending status is full bag

def groceries

	puts "your bag is empty"

		grocery1 = "tomatoes"
		grocery2 = "onions"
		grocery3 = "milk"
		grocery4 = "bell pepper"
		yield(grocery1, grocery2, grocery3, grocery4)

	puts "your bag is full"

end 

groceries { |grocery1, grocery2, grocery3, grocery4| 
	puts "We have #{grocery1}, #{grocery2}, #{grocery3}, and #{grocery4} in the bag."}




# groceries = ["tomatoes", "onions", "milk", "bell pepper"]

# number_of_groceries = groceries.length
# number_of_groceries.times { |i| puts groceries[i] }

