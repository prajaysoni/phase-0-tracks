test = []
p test

test << 1 << 2 << 3 << 4 << 5
p test

test.delete_at(2)
p test

test.insert(2, 100)
p test

test.delete(1)
p test

if test.include?(100)
	puts "100 is in the array"
end
 