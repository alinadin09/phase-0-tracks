# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # set default quantity to 1
  # print the list to the console [can you use one of your methods here?]
# output: [what data type goes here, array or hash?] a hash

def create_list(items)

# Make an empty hash for grocery_list:
p  grocery_list = {} 

  
# Takes the string of items that user puts in the create_list method, and turns it into an array:
p  items = items.split

# Iterate through each item in the array. This step turns the array into a hash buy asking if it has an item from the array as a key. If the item appears more than once in the array, it will count it as one key and give it a value of +1.
  items.each do | item |
    if grocery_list.has_key?(item)
      grocery_list[item] += 1
    else
      grocery_list[item] = 1
    end 

  end
  grocery_list 
end
current_list = create_list("pineapples pineapples apples bananas cucumbers")

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item name and desired quantity
# output: item => quantity

def add_item(current_list, item_added, quantity)
    current_list[item_added] = quantity
    current_list
end

add_item(current_list, "milk", 2)


# Method to remove an item from the list .delete(item)
# input: item_to_be_deleted
# steps: add item that you want to delete in parameter
# output: new list

def delete_item(current_list, item)
    current_list.delete(item)
    current_list
end

delete_item(current_list, "pineapples")



# Method to update the quantity of an item
# input: item, value
# steps: add item that you want to update, enter quantity desired
# output: new list with updated quantity

def update_quant(current_list, item, quantity)
    current_list[item] = quantity
    current_list
end

final_list = update_quant(current_list, "bananas", 4)

# Method to print a list and make it look pretty
# input: final_list
# steps: Use interpolation to list out the keys as grocery items, and values as their respective quantitites.
# output: a clean list that shows an organized breakdown of our grocery bag.

def printed_list(grocery_list)
    grocery_list.each {|item, quantity|
    puts "#{item}: #{quantity}" }
end

printed_list(final_list)