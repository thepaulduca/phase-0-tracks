name = "Paul Duca"

def vowel_change(word)
	word = word.split(' ').reverse!.join(' ')
	word = word.downcase.split('')
	vowels = ['a','e','i','o','u']
	new_word = []
	word.map do |letter|
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

puts vowel_change(name)


#Reverse the first and last name
=begin
	
rescue Exception => e
	
end

def name_reverse(name)
	name = name.split(' ').reverse!.join(' ')
end 

name = name_reverse(name)

#change the vowels
=end
#puts name.length