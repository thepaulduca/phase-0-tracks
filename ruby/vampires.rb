puts "What is your name?"
name = gets.chomp!

puts  "Nice to meet you #{name}!! How old are you #{name}?"
age = gets.chomp!

puts  "What year were you born?"
birth_year = gets.chomp!

if (age.to_i == (2016 - birth_year.to_i)) == true
	human_time = true 
else
	human_time = false
end 

puts "Our cafateria serves garlic bread, would you like some? (y/n)"
garlic = gets.downcase.chomp

if garlic == "y"
	garlic = true
else
	garlic = false
end

puts  "Are you interested in health insurence? (y/n)"
health = gets.downcase.chomp!

if health == "y"
	health = true
else
	health = false
end

puts "Do you have any allergies? press enter after each allergy and type done when you are finished"
allergy = gets.chomp

until allergy == "done"
	puts "Any more allergies"
	allergy = gets.chomp
	if allergy == "sunshine"
		puts "Probably a vampire"
		human_time == false
	end 
end


if human_time == false
 if (garlic || health) == true
 	case name
			when "Drake Cula","Tu Fang"
				puts "Definitely a vampire."
			else 
				puts "Probably a vampire."
			end
 elsif !(garlic && health)
	puts "Almost certainly a vampire!"
end
end


if  human_time == true
	if (garlic || health) 
		case name
			when "Drake Cula","Tu Fang"
				puts "Definitely a vampire."
			else 
				puts "Probably not a vampire."
			end
	elsif !(garlic && health)
		case name
			when "Drake Cula","Tu Fang"
				puts "Definitely a vampire."
			else 
				puts "Probably not a vampire."
			end
	else		
		puts "Results inconclusive!"
	end
end