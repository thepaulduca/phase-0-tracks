puts "What is your hamsters name?(If you dont know, type none)"
name = gets.chomp

if name == "none"
	name = "(Name Required)"
end 

puts "How loud is your hamster from (1-10)"
volume = gets.chomp

volume = volume.to_i

puts "What color is your hamster?"
color = gets.chomp

puts "Is your hamster a good candidate for adoption? y/n"
adopt = gets.chomp

if adopt == "y"
	adopt = true
elsif adopt == "n"
	adopt = false
else
	adopt = nil
end 

puts "How old is your hamster? ( If you dont know, type unknown)"
age = gets.chomp

if age.downcase == "unknown"
	age = nil
end


puts "The Hamsters name is #{name}"
puts "The Hamster is a #{volume} on a scale of 1-10 for volume."
puts "The Hamsters fur is #{color}"
puts "The Hamster is good for adoption: #{adopt}"

if age == nil
	puts 'We dont know how old the hamster is.'
else
	age.to_i
	puts "The hamster is #{age} years old."
end

