puts "Please enter the number of employees you wish to process."
employees = gets.chomp
employees = employees.to_i

while employees > 0

	puts "Please enter your name."
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.chomp
	
	puts "What year were you born in?"
	year = gets.chomp
	
	puts "Would you like some garlic bread from our cafeteria? (yes/no)"
	garlic = gets.chomp
	if garlic.downcase == "yes"
		garlic = true
	elsif garlic.downcase == "no"
		garlic = false
	end
			
	
	puts "Would you like to enroll in our health insuarance program? (yes/no)"
	health = gets.chomp
	if health.downcase == "yes"
		health = true
	elsif health.downcase == "no"
		health = false
	end
			
	
	correctAge = (2016 - year.to_i)
	age = age.to_i
	
	if age == correctAge && (garlic == true || health == true)
		puts "Probably not a vampire"
	elsif (age != correctAge && garlic == false && health == false)
		puts "Almost certainly a vampire"
	elsif age != correctAge && (garlic == false || health == false)
		puts "Probably a vampire"
	elsif name.downcase == "drake cula" || name.downcase == "tu fang"
		puts "Definitely a vampire"
	else
		puts "Results inconclusive"
	end

	employees -= 1
	puts ""
end
		
		
		