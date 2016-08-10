name = "Paul Duca"
#Reverse the first and last name

def name_encrypt(name)
	name = name.split(' ').reverse!.join(' ')
	name = name.downcase.split('')
	vowels = ['a','e','i','o','u']
	new_word = []
	name.each do |letter|
		if vowels.include?(letter)
			letter_index = vowels.index(letter)
			if letter_index == 4
			letter = vowels[0]
			else
			letter = vowels[letter_index + 1]
			end 
			new_word << letter
		elsif letter == " "
			new_word << letter
		else 
			letter = letter.next!
			new_word << letter
		end
	end
	new_word = new_word.join()
	return new_word
end 

puts name_encrypt(name)

