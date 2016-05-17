=begin

Define method as spyName
It takes a string as an argument
Set variable spy = the string argument split at the space
This will result in an array of length 2
Set variable name =  spy.rotate
Join name with a space in the argumant

	
=end


def spyName(name)
	spy = name.split(' ')
	name = spy.rotate
	name = name.join(' ')
end

p spyName("Bob Saget")