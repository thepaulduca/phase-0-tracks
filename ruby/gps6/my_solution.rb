# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative most of the time it is code that you wrote 
# require is commonly used for other peoples code
require_relative 'state_data'

class VirusPredictor

attr_reader :state, :population, :population_density

#sets instance variables on initializeation of a new instances 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


#runs other methods, puts the two strings together in a sensical sentence

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#based on population density sets number of deaths using population
#prints results in a string
  
    def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200 
      multiplyer = 0.4 
    elsif population_density >= 150 
      multiplyer = 0.3  
    elsif population_density >= 100
      multiplyer = 0.2
    elsif population_density >= 50
      multiplyer = 0.1
    else
      multiplyer = 0.05
    end

    number_of_deaths = (@population * multiplyer).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end



#uses population density to set the speed of the spread and prints it in a string 

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, population_info|
  test_state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
  test_state.virus_effects
end 


=begin 
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section