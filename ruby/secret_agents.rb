
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
	return word
end

encrypt("abc")
encrypt("zed")


def decrypt(y)

   word = y
   index = 0
   alphabet = "abcdefghijklmnopqrstuvwxyz"

       while index < word.length
           word[index] = alphabet[alphabet.index(word[index])-1]
       	   index += 1
       end

   puts word
   return word

end

decrypt(encrypt("swordfish"))