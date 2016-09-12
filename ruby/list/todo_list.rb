class TodoList

def initialize(arr)
	@arr = arr 
end

def get_items
	@arr
end

def add_item(chore)
	@arr << chore
end

def delete_item(chore)
	@arr.delete(chore)
end

def get_item(index)
	@arr.at(index)
end

end

