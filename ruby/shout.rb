=begin

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

=end

module Shout

	def mad_yell(words)
		words.capitalize + " is so stupid!!!!  >=("
	end

	def happy_yell(words)
		words.capitalize + " is amaaazzziiiinngg!!!!!"
	end
end

class Anouncer
	include Shout
end

class Megaphone
	include Shout
end

anouncer = Anouncer.new
puts anouncer.mad_yell("this show")
puts anouncer.happy_yell("my job")

mega = Megaphone.new
puts mega.mad_yell("eating healthy")
puts mega.happy_yell("eating cake all day")
