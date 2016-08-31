# This was done by github users alinadin09 and juancarlosfield

# In phase,-0-tracks/ruby/iteration.rb, write your own method that takes a block. 
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

# Let's relate three Hollywood actors to the characters they are famous for
# 1. Johnny Depp = Jack Sparrow
# 2. Kate Winslet = Rose 
# 3. Sylvester Stalone = Rambo

# Release 1, part 1: With hashes.

realname_stagename = {"depp" => 'sparrow', "winslet" => 'rose', "stalone" => 'rambo'}

realname_stagename.each do |actor, role|
	puts "#{actor} is known for #{role}."
end

# Release 1, part 1: With array.

actors = ['Deep', 'Winslet', 'Stalone']
character_name = ['Sparrow', 'Rose', 'Rambo']

# Our block of code
# puts "the actor #{each actor} is known for #{character name!."

# Our solution

index = 0 
while index < actors.length
puts "the actor #{actors[index]} is known for #{character_name[index]}."

index +=1 
end

# Release 1, part 2 with map!:

appliances = ["oven", "fridge", "microwave"]

appliances.map! do |appliance|
#puts appliance
 puts "The #{appliance} goes in the kitchen."
end 

# Release 1, part 2 with each

# create an algorithim with each event.
# -- var name with elements.
# -- apply code .each do with |keyword|
# -- puts " with #{interpolation}. "
# -- end

appliances = ["oven", "fridge", "microwave"]

appliances.each do |appliance|
	puts "The #{appliance} goes in the kitchen."
end

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

# i want it to return numbers higher than 5
# we need a method
# arr.drop_while { |a| a < 4 }

def iterate 
	var = [-1, 0, 1, 22, 34, 100, 1000]
    var.drop_while { |f| f < 5 }
end

iterate

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

# arr.keep_if { |a| a < 4 }

def keep
	var = [-2, 40, 30, 20, 300000]
	var.keep_if { |f| f < 50 }
end

keep

# 3. A different method that filters a data structure for only items satisfying a 
#certain condition -- Ruby offers several options!

var = [1, 4, 7, 10, 12]
var.reject {|x| x >=   4 } 


# 4. A method that will remove items from a data structure until the condition in the block 
# evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

hash1 = { "apple" => 13, "cat" => 22 }
hash2 = { 7 => 35, "cat" => 22, "apple" => 13 }
hash3 = { "apple" => 13, "cat" => 22, 7 => 35 }
hash4 = { "apple" => 13, "day" => 5, "field" => 8 }

hash4 == hash1
hash2 == hash3







