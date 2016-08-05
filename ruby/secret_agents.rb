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
	puts "Program ending"
end

