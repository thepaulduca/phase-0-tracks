class Santa
	attr_accessor :gender, :age, :ethnicity
	#attr_reader :ethnicity


	def initialize #(gender, ethnicity)
		puts "Initializing a new santa."
		#@gender = gender
		#@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaaapy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.insert(-1, reindeer)
	end
	
=begin
		
	rescue Exception => e
		
	end

	Getter

	def gender
		@gender
	end

	Setter

	def gender=(new_gender)
		@gender = new_gender
	end


=end 


end



=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas.each do |santa|
	puts santa.gender
end

santas.each do |santa|
	santa.celebrate_birthday
end

chris_kringle = Santa.new("male","white")
santas << chris_kringle

chris_kringle.gender = "female"
puts chris_kringle.gender 
puts chris_kringle.ethnicity

santas.map! do |santa|
	santa.age = santa.age + rand(1..140)
end 

=end


arry_of_santas = []

arry_of_genders = ['male', 'female', 'trans', 'no answer', 'gender fluid']

arry_of_ethncity = ['white', 'black', 'human', 'asian', 'canadian', 'mixed', 'german', 'antartican']

1000.times do
	arry_of_santas << Santa.new
end

arry_of_santas.map! do |santa|
	puts '------------------------'
	santa.gender = arry_of_genders.sample
	puts "The santa's gender: #{santa.gender}"
	santa.age = santa.age + rand(1..140)
	puts "The santa is #{santa.age} years old"
	santa.ethnicity =  arry_of_ethncity.sample
	puts "the santa's ethnicity: #{santa.ethnicity}"

end






