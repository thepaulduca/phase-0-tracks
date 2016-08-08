#Greet the user and initialize an empty hash

puts "Welcome to 'Design Client Info Saver 3000'"
client_hash = {}

# Ask the user for the name and address save in hash as string

puts "What is your clients last name?"
last_name = gets.chomp
client_hash[:last_name] = last_name

puts  "What is your clients first name?"
first_name = gets.chomp
client_hash[:first_name] = first_name

puts "What is the clients state?"
state = gets.chomp
client_hash[:state] = state 

puts "What is your clients town?"
town = gets.chomp
client_hash[:town] = town 

puts "What is the clients street address?"
address = gets.chomp
client_hash[:address] = address

#Ask if this is a returning customer, set to true or false
#if they don't answer correct input ask again until correct
#if they are a new customer ask if they should be added to mailing list

correct_answer = false
until correct_answer == true
puts "Is #{first_name} a returning customer? (y/n)"
returning = gets.chomp
	if returning == 'y'
		client_hash[:returning] = true
		correct_answer = true
	elsif returning == 'n'
		client_hash[:returning] = false
		correct_answer = true
	else
		puts "You didnt enter correct input, try again."
	end
end

if client_hash[:returning] == false
	correct_answer2 = false
	until correct_answer2 == true
	puts "Would #{first_name} like to be added to the mailing list? (y/n)"
	mail = gets.chomp
		if mail == 'y'
			client_hash[:mail] = true
			correct_answer2 = true
		elsif mail == 'n'
			client_hash[:mail] = false
			correct_answer2 = true
		else
			puts "You didnt enter correct input, try again."
		end
	end
end

#Ask user for clients estimated house value number of rooms to redecorate and estimated cost
#get rid of all non digits, convert to int 

puts "Estimated house value? (numbers only, no words)"
house_value = gets.chomp.gsub(/\D/,"").to_i
client_hash[:house_value] = house_value

puts "Number of rooms to be redecorated?"
rooms = gets.chomp.gsub(/\D/,"").to_i
client_hash[:rooms_to_decorate] = rooms

puts "Estimated redecoration cost? (numbers only, no words)"
cost = gets.chomp.gsub(/\D/,"").to_i
client_hash[:cost] = cost

#Ask user for clients color scheme preference, and style type
#store it in hash as a string, if there is not one leave value empty using nil

puts "What is their color choice? (type none if they dont have one)"
color = gets.chomp
if color == "none"
	color = nil
end 
client_hash[:color] = color

puts "What is their style choice? (type none if they don't have one)"
style = gets.chomp
if style == "none"
	style = nil
end
client_hash[:style] = style 

#Show the user what the hash looks like right now

puts "Your current client information looks like this"
puts client_hash

#ask if the user would like to change anything 
#if they would ask for the key they would like to change

puts "Would you like to change it? (y/n)"
change = gets.chomp

if change == "y"
	puts "Type the category(key) that you would like to alter"
	key = gets.chomp.gsub(" ","_").to_sym
	puts "Now type what you would like to save under #{key}"
	value = gets.chomp
	client_hash[key] = value
	puts client_hash
	puts "Thanks for using our program goodbye"
else
	"Thanks for using the program goodbye"
end
