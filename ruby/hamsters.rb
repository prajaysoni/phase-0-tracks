puts "Hamster's name?:"
hamster_name = gets.chomp
puts "Volume level (1 to 10):"
volume = gets.chomp
puts "Fur color:"
fur_color = gets.chomp
puts "Do you think this hamster is a good candidate for adoption?:"
adoption = gets.chomp
puts "Give an estimate of the hamster's age:"
age = gets.chomp

if age == ""
	age = nil
end