puts "Welcome to the Amazing nested data structure!!"

#create empty hash

city = {}

#create empty arrays

city[:nyc] = []
city[:philly] = []
city[:chicago] = []
city[:dallas] = []

puts city

#NYC arrays

nyc_streets = ['42nd', 'broadway', '7th ave', '3rd ave', '38th st']
city[:nyc] << nyc_streets

nyc_sights = ['statue of liberty', 'empire state building', 'yankee stadium','citi field', 'MOMA', 'MSG']
city[:nyc] << nyc_sights

nyc_famous = ['Notorious BIG', 'Bernie Sanders', 'Jay -z', ['donald trump', 'donald drumpf'] , 'Michael Jordan', 'J-lo']
city[:nyc] <<  nyc_famous

#Philly arrays

philly_streets = ['broad st', 'norris','22nd st', "fairmount", '13th st']
city[:philly] << philly_streets

philly_sights = ['liberty bell', 'the linc', 'the philly art museum', 'ritten house square', 'The Temple University']
city[:philly] << philly_sights

philly_famous = ['billy cosby', 'will smith', 'warren buffet', 'wilt the stilt', 'brad cooper']
city[:philly] << philly_famous

#Chi arrays

chicago_streets = ['michigan ave','park ave', 'coyle ave', 'cortez st']
city[:chicago] << chicago_streets

chicago_sights = ['art institute','shedd aquarium', 'millennium park', 'navy pier']
city[:chicago] << chicago_sights

chicago_famous = ['kanye west', 'd-rose', 'Barack Obama','harrison ford', 'Hugh Heff']
city[:chicago] << chicago_famous


#Dallas arrays 

dallas_streets = ['cowboy st', 'access rd', 'beall st', 'beck ave', 'hoel st']
city[:dallas] << dallas_streets

dallas_sights = ['cowboy stadium','dealey plaza', 'world aquarium','klyde warren park']
city[:dallas] << dallas_sights

dallas_famous = ['usher', 'erkah badu', 'JFK', 'jayne mansfield']
city[:dallas] << dallas_famous


# Access the data, THE FUN PART ... i guess? 

puts "I went to #{city[:philly][1][4]}"

puts "My favorite place is the one and only #{city[:nyc][1][2]}"

puts "The president of the United states is #{city[:chicago][2][2]}"

puts "#{city[:dallas][2][1]} makes amazing music"

puts city[:nyc]

puts city[:nyc][1]

puts city[:chicago].assoc('kanye west')

puts city[:dallas]

#Some iteration for extra fun

city.each do |key, value|
	puts "This is the key :#{key}"
	puts "This is the value :#{value}"
	puts
end 


city.each do |key,value|
	value.each do |array|
		array.include?('d-rose')
		puts 
		puts "The chi is moving you to #{city[:nyc][1][5]}"
	end
end

city[:nyc].each do |array_of_arrays|
	array_of_arrays.each do |array|
		if array.length > 7
			puts array
		end 
	end
end

puts city
