module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
end

class Mad_dude
	include Shout
end

guy = Mad_dude.new
puts guy.yell_angrily("sometimes I eat cookies")