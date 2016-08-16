# Be able to create instances of the class of basketball players
# You can then assign them to a team either the bulls or the lakers
# You pick which players shoot
# At the end the team with the most points wins

class Basketball_team
	attr_accessor :location
end


class Basketball_player < Basketball_team
	attr_accessor :position, :points, :fouls, :height
	attr_reader :points
	
	def initialize(position, height)
		@position = position
		@points = 0
		@fouls = 0
		@height = height

	end

	def shoot
		num = rand(1 .. 100)
		if num > 40
			puts "he scores"
			@points += 2
		else
			puts "and he misses"
		end
	end

	def shoot_3
		num2 = rand(1 .. 100)
		if num2 > 65
			puts "he hits from down town"
			@points += 3 
		else
			puts "he misses from 3"
		end
	end

	def pass(team_mate)
		puts "he passes to #{team_mate}"
	end

	def foul
		puts "he fouls the other team"
		@fouls += 1
	end

	def points_scored
		puts points
	end


end

players = []
puts "Welcome to the Basketball Player Creator!"
puts "How many players would like to create?"
num_of_players = gets.chomp
num_of_players.to_i.times do |x|
	puts "what position would you like this player to be?"
	puts "PG - SG - SF - PF - C"
	position = gets.chomp.downcase
	puts "how tall are they? (type feet, then space and then inches)"
	player_height = gets.chomp.split(' ')
	players << Basketball_player.new(position, player_height)
end

p '----------------'

####new thing !


bulls = []
lakers = []


players.map do |player|
	puts "Would you like him to play for the bulls or the lakers?"
	puts "You are choosing for : #{player.position}"
	team_loop = true
	until !team_loop
		puts "type the team name you would each player to join!!"
		team_name = gets.chomp
		if team_name.downcase == 'bulls'
			puts "the player joined the Chicago Bulls"
			player.location = team_name
			bulls << player 
			team_loop = false
		elsif team_name.downcase == 'lakers'
			puts "the player joined the LA lakers"
			player.location = team_name
			lakers << player
			team_loop = false
		else
			puts "You cant type! try again"
		end
	end
end

p '----------------'
puts "bulls players:"
puts bulls.length
bulls.each do |player|
puts player.position
end
	
p '----------------'
puts "lakers players"
puts lakers.length
lakers.each do |player|
puts player.position
end

p '----------------'


 
unless bulls.length == lakers.length

	puts "The teams are uneven"
	puts "would you like to create another player to make it even?"
	puts "type even to even up"
	even_teams = gets.chomp
	if even_teams == 'even'
		puts "what position would you like player one to be?"
		position = gets.chomp.downcase
		puts "how tall are they? (type feet, then space and then inches)"
		player_height = gets.chomp.split(' ')
		new_player = Basketball_player.new(position, player_height)
		players << new_player
		if bulls.length > lakers.length
			new_player.location = 'lakers'
			lakers << new_player
		else
			new_player.location = 'bulls'
			bulls << new_player
		end
	else
		puts "I like it."
	end


	p '----------------'
	puts "bulls players:"
	puts bulls.length
	bulls.each do |player|
		puts player.position
	end
	p '----------------'
	puts "lakers players"
	puts lakers.length
	lakers.each do |player|
		puts player.position
	end
	p '----------------'

end 



p '----------------'
puts "All players players"
puts players.length 
puts players

### if broken delete that first ^^




p '----------------'

players.each do |player|
	puts "Player position"
	puts player.position
	puts player.location
	puts "Player Height"
	puts "Feet/inches : #{player.height} " 
	p '----------------'
end

puts '-----------------'

shooting = true
until shooting == false
puts "Type the position of the position you want to shoot (from 2)!"
puts "If you select a position that has multiple players they will both shoot"
shooting_p = gets.chomp.downcase
players.each do |player|
		if player.position == shooting_p
			puts player.location
			player.shoot
		end
	end
puts "Would you like to have another player shoot? (y/n)"
continue = gets.chomp
		if continue =='y'
		else
			shooting = false
		end
end 

puts '-----------------'

puts "Type the position of the player you want to shoot from 3!"
shooting_p = gets.chomp.downcase
players.each do |player|
	if player.position == shooting_p
		player.shoot_3
	end
end 


puts '-----------------'

puts "Here is how the teams  played!"
bulls_points = 0
lakers_points = 0
puts '-----------------'
lakers.each do |player|
	puts  player.position
	puts "Points: "
	puts "#{player.points_scored}"
	lakers_points = lakers_points + player.points
end
p "---------------"
bulls.each do |player|
	puts  player.position
	puts "Points: "
	puts "#{player.points_scored}"
	bulls_points = bulls_points + player.points
end

p "---------------"

puts "FINAL SCORE"
puts "Bulls : #{bulls_points}"
puts "Lakers : #{lakers_points}"
if bulls_points > lakers_points
	puts "Bulls WIN!"
elsif lakers_points > bulls_points
	puts "Lakers WIN!"
else
	puts "It's a tie!"
end


