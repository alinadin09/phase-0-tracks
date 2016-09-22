# #Writing a method that takes a block:

# 	def shopping_bag
# 		puts "Check out my bag!"
# 		yield("shampoo", "soap", "onions", "milk")
# 	end

# 	shopping_bag { |item1, i2, i3, i4| puts "#{item1}, #{i2}, #{i3}, and #{i4} are so useful!" }

# #Release 1:

# 	baby_names = ["Arya", "Zain", "Raheem", "Haqq"]
# 	feeder = []

# 	top_news = { 

# 		headliner:"Branglina broke up! :'(", 
# 		sub_header:"It was Brad's fault", 
# 		lower_corner:"Hillary Clinton did something", 
# 		footer:"Trump sucks and we don't care anymore" 

# 	}
# 	puts "Before modification:"
# 	p baby_names
# 	puts "After .each modification"
# 	baby_names.each { |name| puts "These are the names I like: #{name}" }
# 	puts "After .map! modification"
# 	baby_names.map! { |name| p "Cute "  + "#{name}" }
# 	p baby_names

# 	puts "Before modifying the hash:"
# 	p top_news

# 	puts "After using .each on the hash:"
# 	top_news.each { |ranking, name| puts "The #{ranking} is #{name}" }

# Release 2:

	array = [1, 2, 3, 4, 5]
	
	hash = {
		1 => "one", 
		2 => "two", 
		3 => "three",
		100 => "one hundred"
	}

	# hash.delete_if { |digit, word| digit < 5 }
	# p hash

	hash.keep_if { |digit, word| digit < 5 }
	p hash