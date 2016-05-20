class Santa

	def initialize(gender, ethnicity, robot)
		puts "initializing Santa instance"
		@robot = robot
		if @robot.downcase == "yes"
			puts "This Santa is a robot"
		else
			puts "This Santa is a human"
		end
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
							 "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak()
		puts "Ho, ho, ho!. Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end

end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities =["black", "Latino", "white", "Japanese-African", 
					  "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
	puts "Is this Santa a robot?"
	answer = gets.chomp
	santas << Santa.new(example_genders[i], example_ethnicities[i], answer)
	puts "---------"
end