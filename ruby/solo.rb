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
		@age = age
		@power = power
		puts "Initializing Superhero instance"
	end

	def power_up=(powerup)
		@powerup = powerup
	end

	def weakness(weak)
		@weakness = weak
	end

	def villain(vill)
		@villain = vill
	end


end









