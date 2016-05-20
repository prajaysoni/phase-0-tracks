class Santa

	def initialize(gender, ethnicity, robot, ethn)
		puts "initializing Santa instance"
		@robot = robot
		if @robot.downcase == "yes"
			puts "This Santa is a robot"
		else
			puts "This Santa is a human"
		end
		@gender = gender
		if ethn == ""
			@ethnicity = ethnicity
		else
			@ethnicity = ethn
		end
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
							 "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak()
		puts "Ho, ho, ho!. Haaaappy holidays!"
	end

	def ethnicity_print()
		puts "This Santa's ethnicity is: #{@ethnicity}"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end

	def celebrate_birthday()
		@age += 1
	end

	def get_mad_at= (name)
		last = @reindeer_ranking.delete(name.capitalize)
		@reindeer_ranking << last
	end

	def gender= (new_gender)
		@gender = new_gender
	end

	def age()
		@age
	end

	def ethnicity()
		@ethnicity
	end

	def ranking()
		@reindeer_ranking
	end

end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities =["black", "Latino", "white", "Japanese-African", 
					  "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
	puts "Is this Santa a robot?"
	answer = gets.chomp
	puts "Please enter an ethnicity, or one will be assigned"
	ethn = gets.chomp
	santas << Santa.new(example_genders[i], example_ethnicities[i], answer, ethn)
	santas[i].ethnicity_print

	santas[i].celebrate_birthday
	puts "Santa is now #{santas[i].age} years old"

	puts "The current ranking is: #{santas[i].ranking}"
	puts "Please enter the reindeer Santa doesn't like"
	rein = gets.chomp
	santas[i].get_mad_at = rein
	puts "The new ranking is: #{santas[i].ranking}"
	puts "---------"
end










