# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  #Split items as objects in array when theres a space
  #list.split(' ')
  #list.to_h
  # set default quantity
  #list.default = 1
  # print the list to the console by using the method at the bottom
# output: our list as a hash with key value pairs of the item and its resp quantity
def create_list(list)
	list_split = list.split(' ')
	hsh = {}
	list_split.each {|item| hsh[item] = 1}
	hsh.default = 1
	hsh
end


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
	#prompt user which item want to add and optional quantity
	#list[new_item] = optional_quantity
# output: updated hash with the new item/quantity
def add_item(list)
	puts "Which item would you like to add?"
	new_item = gets.chomp
	puts "How many #{new_item}s do you want"
	quantity = gets.chomp
	list[new_item] = quantity
	list
end

# Method to remove an item from the list
# input: item name we want to remove
# steps:
	#prompt user which item want to remove
	#remove item
	#list.delete("item name")
# output: updated list with the removed item
def remove_item(list)
	puts "Which item would you like to remove?"
	delete_me = gets.chomp
	list.delete(delete_me)
	list
end

# Method to update the quantity of an item
# input: item name, new item quantity
# steps:
	#prompt user which item they want to update
	#prompt user for the new quantity they want of the item
	#list["itemname"] = updated_quantity
# output: updated list with updated quantity
def update_quantity(list)
	puts "Which item would you like to update the quantity of?"
	item_name = gets.chomp
	until item_name.downcase == "done"
		puts "Whats your new quantity?"
		new_quantity = gets.chomp
		list[item_name] = new_quantity
		puts "Enter another item or enter 'done'."
		item_name = gets.chomp
	end
	list
end

# Method to print a list and make it look pretty
# input: list
# steps: 
	#list.each {|item, quantity| puts "You need to buy #{quantity} #{item}s!"}
# output: pretty, readable list
def pretty_list(list)
	puts "You need to buy:"
	list.each {|item, quantity| puts "#{item}: #{quantity}"}
end

#DRIVER CODE
puts "What do you want to get at the store?"
response = gets.chomp
list = create_list(response)
list2 = add_item(list)
list3 = remove_item(list2)
list4 = update_quantity(list3)
final_list = pretty_list(list4)


What did you learn about pseudocode from working on this challenge?
	I learned that generally, pseudocode is structured with an input and an output

What are the tradeoffs of using arrays and hashes for this challenge?
	An array wont let you label your items.

What does a method return?
	It returns what you tell it to. We wanted to return the hash 'list', so we wrote 'list' at the bottom

What kind of things can you pass into methods as arguments?
	You can pass different objects such as strings, hashes, arrays, etc.

How can you pass information between methods?
	To do this, we used a nested method call and set it equal to a variable.

What concepts were solidified in this challenge, and what concepts are still confusing?
	Filling a hash with items from an array was something that was solidified.
	Nothing too confusing really.




