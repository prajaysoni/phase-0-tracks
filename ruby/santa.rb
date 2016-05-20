class Santa

	def speak()
		puts "Ho, ho, ho!. Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end

	def initialize()
		puts "initializing Santa instance"
	end

end

nick = Santa.new

nick.speak()
nick.eat_milk_and_cookies("Chocolate Chip")
nick.initialize()