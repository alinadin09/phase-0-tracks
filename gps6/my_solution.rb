# Virus Predictor

# I worked on this challenge with: Carol Silva
# We spent [6] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# Require_relative links another ruby file, from which it pulls data.
# Require is written in the root file.

class VirusPredictor

  # initilaize method is taking the keys within the argument

  def initialize(state_of_origin, population_density, population) 
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects # virus effects it builds on 2 methods that get defined (26, 44) they take class variables as their arguments
    
    predicted_deaths
    speed_of_spread

  end

  private # it locks the code, so only certain people can access it. 

  def predicted_deaths # it predicts how many deaths will happen in a state based population density data.
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor =  0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end

     number_of_deaths = (@population * factor).floor

     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #speed of spread pre.dicts how fast a disease will spread based on pop density

  #in months
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


     puts "and will spread across the state in #{speed} months.\n\n"
    

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each { |states, purp_data| 
 VirusPredictor.new(states, purp_data[:population_density], purp_data[:population]).virus_effects}


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

  # One used a hash rocket and one used the normal syntax we've been seeing over the past few weeks.

# What does require_relative do? How is it different from require?

  # It links the two ruby files together. Require is a term I am not too sure about still, but am guessing
  # that it is related to staying within the root of a single file in and of itself. 

# What are some ways to iterate through a hash?

# By using a .each and either doing a do/end statement or by using curly brackets: {}. You iterate by specifying the 
# the key and value in the pipes ||, and then calling upon them according to the proper syntax and calling a
# method on them. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# That a lot of them overlapped, and could easily be called upon only once or twice for their respective methods.
# The methods that were written we good if used by themselves, but since a lot of the data in state_data was called
# on multiple times, it was useful to link everything togther more effciently so the code was not as clunky.

# What concept did you most solidify in this challenge?

# Line 97 took my pair and me a long time to figure out. We were unsure of how to make the code more standardized,
# and didn't realize that we could directly write STATE_DATA.each as a call. I'm still unfamiliar with all the
# terminology, so it takes me a while to understand exactly what the directions are asking. We talked it out a lot
# and looked at example codes on the web to get a better understanding. Not gonna lie, it is pretty difficult to
# troubleshoot for three hours at the end of the day when you're so tired!!


