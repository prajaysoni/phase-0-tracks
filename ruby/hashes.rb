=begin

Create hash named 'client' and add symbols
	client = {name, age, number of kids, decor theme, apt or house?, number of rooms}

Prompt user for data to fill the hash
	Please enter your name:
	Enter your age:
	How many kids do you have?:
	What theme do you want?:
	Apartment or house?:
	How many rooms?:

Convert data to appropriate type
	Age.to_i
	Kids.to_i
	Rooms.to_i

Print hash back to user with data filled in.
	p client[:name]
	p client[:age]
	...
	...
	...
	p client[:num of rooms]

Opportunity to update a key
	If user says none
		finish the program
	Elsif whatever key in inputted
		give user the option to update the key
	End

Print updated hash out
	
=end


client = {}
			
puts "Please enter your name"
client[:name] = gets.chomp

puts "Enter your age"
client[:age] = gets.chomp

puts "How many children do you have?"
client[:kids] = gets.chomp

puts "What type of theme do you want?"
client[:decorTheme] = gets.chomp

puts "Do you live in an apartment or a house?"
client[:residence] = gets.chomp

puts "How many rooms in your home?"
client[:numRooms] = gets.chomp

client[:age] = client[:age].to_i
client[:kids] = client[:kids].to_i
client[:numRooms] = client[:numRooms].to_i

puts "Your name is: #{client[:name]}"
puts "Your age is: #{client[:age]}"
puts "You have #{client[:kids]} children"
puts "The theme you chose is: #{client[:decorTheme]}"
puts "You live in a(n) #{client[:residence]}"
puts "There are #{client[:numRooms]} rooms in your home"

puts "Please enter a key you wish to update, or enter 'none'."
answer = gets.chomp

if answer.downcase == "name"
	puts "Enter a new name"
	client[:name] = gets.chomp
elsif answer.downcase == "age"
	puts "Enter a new age"
	client[:age] = gets.chomp
elsif answer.downcase == "kids"
	puts "Enter how many children you have"
	client[:kids] = gets.chomp
elsif answer.downcase == "decortheme"
	puts "Enter your new decor theme"
	client[:decorTheme] = gets.chomp
elsif answer.downcase == "residence"
	puts "Do you live in a house or apartment?"
	client[:residence] = gets.chomp
elsif answer == "numrooms"
	puts "How many rooms are in your home?"
	client[:numRooms] = gets.chomp
elsif answer.downcase == "none"
end

puts "Your name is: #{client[:name]}"
puts "Your age is: #{client[:age]}"
puts "You have #{client[:kids]} children"
puts "The theme you chose is: #{client[:decorTheme]}"
puts "You live in a(n) #{client[:residence]}"
puts "There are #{client[:numRooms]} rooms in your home"		
		

		
		
		






























