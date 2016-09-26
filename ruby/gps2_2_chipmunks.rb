# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
	# create an hash called "grocery list"
 
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(food_items_string)

	grocery_list = {}

	food_items_array = food_items_string.split

	food_items_array.each do | item |
		grocery_list[item] = 1
		end

	p grocery_list
	grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity 
# steps: add new item and quantity to hash
# output: a new hash with updated items and quantity

def add_item(grocery_hash, food_item_string, quantity)
	grocery_hash[food_item_string] = quantity
	grocery_hash
end

# Method to remove an item from the list
# input: grocery list (hash), food item (key in a key-value pair)
# steps: use a built-in delete method for removing a key-value pair from the hash.
# output: updated grocery list (new hash with updated key-value pairs)

def delete_item(grocery_hash, food_item)
	grocery_hash.delete(food_item)
	grocery_hash
end

# Method to update the quantity of an item
# input: grocery list hash, food item, quantity
# steps: same as add_item
# output: updated grocery list with new quantities

def update_quantity(grocery_hash, food_item_string, new_quantity)
	grocery_hash[food_item_string] = new_quantity
	grocery_hash
end

# Method to print a list and make it look pretty
# input: grocery list (hash)
# steps: iterate through hash and print it in a list-format.
# output: pretty list

def print_list(grocery_hash)
	grocery_hash.each do | food_item_key, quantity | 
		puts food_item_key + ": #{quantity}"
	end
end

# DRIVER CODE

example_list = create_list("carrots apples cereal pizza")
p add_item(example_list, "milk", 3)
p delete_item(example_list, "apples")
p update_quantity(example_list, "cereal", 5)
print_list(example_list)

