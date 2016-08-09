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

nyc_sights = ['statue of liberty', 'empire state building', 'yankee stadium','citi field', 'MOMA']
city[:nyc] << nyc_sights

nyc_famous = ['Notorious BIG', 'Bernie Sanders', 'Jay -z', 'Donald trump', 'Michael Jordan', 'J-lo']
city[:nyc] <<  nyc_famous

#Philly arrays

philly_streets = ['broad st', 'norris','22nd st', "fairmount", '13th st']
city[:philly] << philly_streets

philly_sights = ['liberty bell', 'the linc', 'the philly art museum', 'ritten house square']
city[:philly] << philly_sights

philly_famous = ['billy cosby', 'will smith', 'warren buffet', 'wilt the stilt', 'brad cooper']
city[:philly] << philly_famous

#Chi arrays

chicago_streets = ['michigan ave','park ave', 'coyle ave', 'cortez st']
city[:chicago] << chicago_streets

chicago_sights = ['art institute','shedd aquarium', 'millennium park', 'navy pier']
city[:chicago] << chicago_sights

chicago_famous = ['kanye west', 'd=rose', 'POTUS','harrison ford', 'Hugh Heff']
city[:chicago] << chicago_famous


#Dallas arrays 

dallas_streets = ['cowboy st', 'access rd', 'beall st', 'beck ave', 'hoel st']
city[:dallas] << dallas_streets

dallas_sights = ['cowboy stadium','dealey plaza', 'world aquarium','klyde warren park']
city[:dallas] << dallas_sights

dallas_famous = ['usher', 'erkah badu', 'JFK', 'Jayne Mansfield']
city[:dallas] << dallas_famous

puts city
