def encrypt(x)
	word = x
	index = 0
		while index < word.length
		word[index] = word[index].next!
			if word[index] == "a"
				word[index] = ""
			end
		index += 1
		end
	puts word
end

encrypt("abc")
encrypt("zed")