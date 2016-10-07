# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Tells you to look at the other file within the same directory.
# It differs from 'require' because the former complements the builtin method require by 
# allowing you to load a file that is relative to the file containing the require_relative statement.

require_relative 'state_data'

class VirusPredictor

  # passes in 3 arguments, and those arguments become attributes in the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # calls the two private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # based on the pop density, it predicts number of deaths. highers the density, higher the rate.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      increment = 0.4    
    elsif @population_density >= 150
      increment = 0.3
    elsif @population_density >= 100
      increment = 0.2
    elsif @population_density >= 50
      increment = 0.1
    else
      increment = 0.05
    end

    number_of_deaths = (@population * increment).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # predicts how fast the disease will spread based on pop density. the higher the density, the slower the spread. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, info| 
  state = VirusPredictor.new(state, info[:population_density], info[:population])
  state.virus_effects
 end


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# What does require_relative do? How is it different from require?
# What are some ways to iterate through a hash?
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# What concept did you most solidify in this challenge?




