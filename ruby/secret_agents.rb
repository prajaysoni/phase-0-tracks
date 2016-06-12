
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
	#puts word
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

   #puts word
   return word

end

#decrypt(encrypt("swordfish"))
# This will first encrypt your password, print it, and then print the decrypted password



begin
	puts "Please write whether you want to encrypt or decrypt."
	answer = gets.chomp
	if answer == "encrypt"
		puts "Please enter password"
		password = gets.chomp
		puts encrypt(password)
	elsif answer == "decrypt"
		puts "Please enter password"
		password = gets.chomp
		puts decrypt(password)
	else
		puts "Please enter a valid response"
	end
end until answer.downcase == "encrypt" || answer.downcase == "decrypt"
			