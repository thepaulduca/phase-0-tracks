class Basketball_team
	attr_accessor :team_name, :location
end


class Basketball_player < Basketball_team
	attr_accessor :position, :points, :fouls, :name
	
	def initialize(position)
		@position = position
		@points = 0
		@fouls = 0
		@name = name
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
	puts "what position would you like this one to be?"
	position = gets.chomp.downcase
	players << Basketball_player.new(position)
end

puts '----------------'

players.each do |player|
	puts player.position
end

puts '-----------------'

puts "Type the position of the position you want to shoot!"
shooting_p = gets.chomp.downcase
players.each do |player|
	if player.position == shooting_p
		player.shoot
	end
end 

puts '-----------------'


=begin
kobe = Basketball_player.new('SG')
puts kobe.team_name = 'Lakers'
puts kobe.location = "LA"
puts kobe.team_name
10.times do |x|
	kobe.shoot
end 

kobe.foul
kobe.foul

5.times do |x|
	kobe.shoot_3
end

kobe.points_scored
=end
