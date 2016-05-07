puts "Hamster's name?:"
hamster_name = gets.chomp

puts "Volume level (1 to 10):"
volume = gets.chomp
volume = volume.to_i
until volume >= 1 && volume <= 10
	puts "Please enter a number 1 to 10"
	volume = gets.chomp
	volume = volume.to_i
end

puts "Fur color:"
fur_color = gets.chomp

puts "Do you think this hamster is a good candidate for adoption?:"
adoption = gets.chomp
until adoption.downcase == "yes" || adoption.downcase == "no"
	puts "Please enter 'yes' or 'no'."
	adoption = gets.chomp
end

puts "Give an estimate of the hamster's age:"
age = gets.chomp

if age == ""
	age = nil
end

if adoption.downcase == "yes"
	adoption = true
elsif adoption.downcase == "no"
	adoption = false
end
		
age = age.to_f

puts "The name is: #{hamster_name}"
puts "The volume is: #{volume}"
puts "The fur color is: #{fur_color}"

if adoption == true
	puts "This hamster is a good candidate"
elsif adoption == false
	puts "This hamster is not a good candidate"
end

puts "The hamster's age is: #{age}"		