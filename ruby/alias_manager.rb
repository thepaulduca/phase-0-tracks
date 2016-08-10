name = "Huge Uden"
#Reverse the first and last name

def name_reverse(name)
	name = name.split(' ').reverse!.join(' ')
end 

name = name_reverse(name)

#change the vowels

puts name.length

def vowel_change(word)
	word = word.downcase.split('')
	vowels = ['a','e','i','o','u']
	new_word = []
	word.each do |letter|
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
		puts new_word.join('')
	end
	new_word = new_word.join()
	return new_word
	
end 

puts vowel_change(name)

