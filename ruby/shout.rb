module Shout

	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + '!!' + ' :D'
	end

	def yell_very_angrily(words)
		words.upcase + '!!!' '>:o'
	end
end

class Mad_dude
	include Shout
end

class Mad_woman
	include Shout
end 

guy = Mad_dude.new
girl = Mad_woman.new

puts guy.yell_angrily("sometimes I eat cookies")
puts girl.yell_happily('thank you so much')
puts girl.yell_angrily('thank you so much')
puts girl.yell_very_angrily('thank you so much')
