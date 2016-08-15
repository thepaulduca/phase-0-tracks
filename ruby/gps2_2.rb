# Create an empty hash for master grocery list
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a method that accepts parameter of string of groceries and a hash that will be added into master grocery list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hash with grocery item and quantity]
hash = {}

def grocery_list(string, hash)
	array_groceries = string.split(" ")
	array_groceries.each do|i|
		hash[i.to_sym] = 1 
	end
	p hash
end

grocery_list("Lemonade Milk", hash)

# Method to add an item to a list
# input: item name and optional quantity
# steps:Take string as an argument with an optional qantity number. Add into hash. Takes a default value.
# output: Print the updated hash

def add_item_to_list(string, quantity, hash)
	hash[string.to_sym] =  (hash[string.to_sym] || 0)  + quantity
	p hash
end

#Test add method
add_item_to_list("Apple", 5, hash)
add_item_to_list("Milk", 5, hash)

def subtract_from_list(string, hash)
	if hash[string.to_sym] 
	hash.delete(string.to_sym)
else 
	end
	p hash
end

subtract_from_list("Milk", hash)
add_item_to_list('cheese', 10, hash)


# Method to update the quantity of an item
# input: put in the hash 
# steps: take the hash and update the value of a certain item
# output: return the hash with the new value 

def update_amount(hash, item, new_quantity)
	hash[item.to_sym] = new_quantity
	hash
end

update_amount(hash, 'cheese', 20)


# Method to print a list and make it look pretty
# input:
# steps:
# output: