def testArr(a, b, c)
	newArr = [a, b, c]
	return newArr
end

def testArr2(a, x)
	a.push(x)
	return a
end


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

test2 = [44, 14, 65, 9]

test.concat(test2)
p test 

p testArr("hello", 43, true)
p testArr(false, 33333, "squid")

p testArr2([1, 2, 3, 4], "bob")
p testArr2(["a", "b", "c"], 154)
p testArr2(["hello", "how"], ["are", "you?"])
p testArr2([], "QWERTY!!!!")