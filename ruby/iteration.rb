def iteration
	puts "We are in the method. How COOOLLL!!!!"
	yield
	puts "Now we're done with the block."
end

iteration {puts "Now we are outside of the method and we finished out block!!!"}