class Santa

	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "initializing Santa instance"
		#@robot = robot
		#if @robot.downcase == "yes"
		#	puts "This Santa is a robot"
		#else
		#	puts "This Santa is a human"
		#end
		#@gender = gender
		#if ethn == ""
		#	@ethnicity = ethnicity
		#else
		#	@ethnicity = ethn
		#end
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

	def celebrate_birthday()
		@age += 1
	end

	def get_mad_at= (name)
		last = @reindeer_ranking.delete(name.capitalize)
		@reindeer_ranking << last
	end

end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities =["black", "Latino", "white", "Japanese-African", 
					  "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Vampire", 
					  "Omicron Persei 8", "Elf"]

=begin
example_genders.length.times do |i|
	puts "Is this Santa a robot?"
	answer = gets.chomp
	puts "Please enter an ethnicity, or one will be assigned"
	ethn = gets.chomp
	santas << Santa.new(example_genders[i], example_ethnicities[i], answer, ethn)
	puts "This is Santa's ethnicity: #{santas[i].ethnicity}"

	santas[i].celebrate_birthday
	puts "Santa is now #{santas[i].age} years old"

	puts "The current ranking is: #{santas[i].reindeer_ranking}"
	puts "Please enter the reindeer Santa doesn't like"
	rein = gets.chomp
	santas[i].get_mad_at = rein
	puts "The new ranking is: #{santas[i].reindeer_ranking}"
	puts "---------"
end
=end

random = rand(20..2500)

random.times do |x|
	rand_gen = rand(0..example_genders.length-1)
	rand_eth = rand(0..example_ethnicities.length-1)
	santas << Santa.new(example_genders[rand_gen], example_ethnicities[rand_eth])
	santas[x].age = rand(0..140)
	puts santas[x].age
	puts santas[x].gender
	puts santas[x].ethnicity
	puts "-------"
end

puts "There were #{random} Santas created."




