class Puppy

  def initialize
  	puts "Initializing new puppy instance"
  end 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times do |x|
  		puts "Woof"
  	end
  end

  def roll_over
  	puts "roll over"
  end

  def dog_years(human_years)
  	dog_years = human_years * 7
  	puts dog_years
  end 

  def smell_butt(other_dog)
  	puts "I smelled #{other_dog}'s butt"
  end 

end

class Cat
	
	def initialize(name)
		@name = name
		puts "hi my name is #{name}"
	end

	def gender(gender)
		puts "I am a #{gender}"
	end

	def scratch
		puts " I scratched myself"
	end

	def hairball(int)
		int.times do |x|
			puts "hairball"
		end
	end 

end 


fido = Puppy.new

fido.fetch("Ball")
fido.speak(4)
fido.roll_over
fido.dog_years(5)
fido.smell_butt('dutches')


tinkle = Cat.new('tinkle')

cat_arry = []

50.times do |x|
	cat_arry << Cat.new('Cat Machine')
end

cat_arry.each do |x|
	x.gender('male')
	x.scratch
	x.hairball(rand(1..10))
end 

