=begin

Define method as spyName
It takes a string as an argument
Set variable spy = the string argument split at the space
This will result in an array of length 2
Set variable name =  spy.rotate
Join name with a space in the argument

Use gsub method on name to replace vowels with next vowel.
Use gsub method on name to replace consonants with next one. Skip vowels
Use split on name to make an array of length two. Then use map and capitalize to capitalize the first letter.
Then use join to make name into a string again.

Wrap above code inside an until loop
Until the name entered equals 'quit', keep taking names


	
=end

puts "Welcome to the Spy Name Generator 1000"
puts "Please enter your name, or if you wish to leave, enter 'quit'"
realName = gets.chomp

until realName.downcase == "quit"

	def spyName(name)
		name = name.downcase
		spy = name.split(' ')
		name = spy.rotate
		name = name.join(' ')
		name = name.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
		name = name.gsub(/[bcdfghjklmnpqrstvwxyz]/,'b' => 'b'.next, 'c' => 'c'.next, 'd' => 'e'.next, 'f' => 'f'.next,
		 'g' => 'g'.next, 'h' => 'i'.next, 'j' => 'j'.next, 'k' => 'k'.next, 'l' => 'l'.next, 'm' => 'm'.next, 'n' => 'o'.next,
		 'p' => 'p'.next, 'q' => 'q'.next, 'r' => 'r'.next, 's' => 's'.next, 't' => 'u'.next, 'v' => 'v'.next, 'w' => 'w'.next,
		 'x' => 'x'.next, 'y' => 'y'.next, 'z' => 'z'.next )
		name = name.split(' ').map{ |word| word.capitalize }.join(' ')
	
	
	end
	
	puts "Your spy name is: #{spyName(realName)}."
	puts "Enter another name or enter 'quit'"
	realName = gets.chomp
end