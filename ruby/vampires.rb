
puts "What is your name?"
name = gets.chomp!

puts  "Nice to meet you #{name}!! How old are you #{name} ?"
age = gets.chomp!

puts  "What year were you born? "
birth_year = gets.chomp!

if (age.to_i == (2016 - birth_year.to_i)) == true
	vampire_time = false 
else
	vampire_time = true
end 



puts "Our cafateria serves garlic bread, would you like some? (y/n)"
garlic_pref = gets.downcase.chomp!
		

puts  "Are you interested in health insurence? (y/n)"
health = gets.downcase.chomp!


if garlic_pref= "y"
	garlic_pref = true
elsif garlic_pref = "n"
	garlic_pref = false
else 
	puts "I didn't understand"
end

if health == "y"
	health = true
elsif health == "n"
	health = false
else
	puts "I didn't understand"
end


case vampire_time
	when (garlic_pref || health) 
	puts "Probably not a vampire"	
	else
	puts "You might be a vampire"
	end 

