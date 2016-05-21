=begin

Class name: Superhero

Create getters and setters

Initialize method
	Take (name, age, power)

Powerup method
	Take (additional power)

Weakness method
	Take (random weakness from array)

Villain method
	Take (random villain from array)

End

=end


class Superhero

	attr_reader :name, :age
	attr_accessor :power, :powerup, :weakness, :villain

	def initialize(name, age, power)
		@name = name
		@age = age.to_i
		@power = power
		puts "Initializing Superhero instance"
	end

	def power_up=(powerup)
		@powerup = powerup
	end

	def weakness=(weak)
		@weakness = weak
	end

	def villain=(vill)
		@villain = vill
	end


end



weak_array = ["Pizza", "Kryptonite", "Hot Sauce", "Penguins", "Fire", "Doughnuts", "Productivity", "Alcohol"]
villain_array = ["Donkey Kong", "Loki", "He who must not be named", "Mort Goldman", "Giant Chicken", "Barry Manilow"]


heroes = []
x = 0
begin
	rand_weak = rand(0..weak_array.length - 1)
	rand_vill = rand(0..villain_array.length - 1)
	puts "Please enter your Superhero's name"
	name = gets.chomp
	puts "Please enter your Superhero's age"
	age = gets.chomp
	puts "Please enter your Superhero's power"
	power = gets.chomp
	heroes << Superhero.new(name, age, power)
	puts "Please enter a power-up, or enter 'none'."
	powerup = gets.chomp
	unless powerup.downcase == "none"
		heroes[x].power_up = powerup
	else
		heroes[x].power_up = "none"
	end
	puts "#{heroes[x].name}'s weakness and villain will be randomly generated"
	heroes[x].weakness = weak_array[rand_weak]
	heroes[x].villain = villain_array[rand_vill]

	puts "Do you want to create another hero?"
	answer = gets.chomp
	x += 1
end until answer.downcase == "no"

puts "These are all the Superheros you've created"
heroes.length.times do |i|
	puts "NAME: #{heroes[i].name.capitalize}"
	puts "AGE: #{heroes[i].age}"
	puts "POWER: #{heroes[i].power.capitalize}"
	puts "POWER-UP: #{heroes[i].powerup.capitalize}"
	puts "WEAKNESS: #{heroes[i].weakness.capitalize}"
	puts "VILLAIN: #{heroes[i].villain.capitalize}"
	puts "----------"
end




