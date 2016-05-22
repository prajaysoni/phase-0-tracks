module Shout
	# we'll put some methods here soon, but this code is fine for now!
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		"Yay!!! " + words + "!! =)"
	end
end

puts Shout.yell_angrily("I spilled my coffee")
puts Shout.yelling_happily("We won the game")