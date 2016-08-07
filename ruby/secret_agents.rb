=begin
	
	Create a method that encrpyts a password by moving each letter one foward in the string. 

	method with one parameter (string)
		counter which will be labeled as index because it will be used to index 
		create variable new string where you can store the encrypted password
		use a while loop while the counter(called index) is less the the length of the string 
		so it will go through the whole string
		add each letter into the new string, calling the next method on it so it changes to one letter foward
		the counter/index moves up one
		pring the encrypted password to the screen

		the decrypt method employees similar logic, but has an extra step, it gets matched up with the alphabet 
		then using the alphabet number as its index and subtract one to go backwards one

	
=end

def encrypt(string)
	index = 0 
	new_string = ""
	while index < string.length
  	new_string = new_string + string[index].next!
  	index += 1
	end
	p new_string
end


def decrypt(string)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	new_string = ""
	while index < string.length
		letter = string[index]
		alph_num = alphabet.index(letter)
		new_string = new_string + alphabet[alph_num - 1]
		index += 1
	end
	p new_string
end


puts "Would you like to encrypt a password?(y/n)"
agent_encrypt = gets.chomp
if agent_encrypt == "y"
	puts "What is the password you would like to decrypt?"
	pass_encrypt = gets.chomp
	encrypt(pass_encrypt)
	puts "Program ending"
elsif agent_encrypt == "n"
	puts "Would you like to decrypt a password? (y/n)"
	agent_decrypt = gets.chomp
	if agent_decrypt == "y"
		puts "What is the password you would like to decrypt?"
		pass_decrypt = gets.chomp
		decrypt(pass_decrypt)
		puts "Program ending"
	else 
		puts "Program ending"
	end
else
	puts "Improper input, you could be a spy program ending"
end


=begin
	
decrypt(encrypt("swordfish"))
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

=end

