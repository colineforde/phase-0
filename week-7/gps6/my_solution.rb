# Virus Predictor

# I worked on this challenge with Mike.
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative 'state_data' #require_relative requires the file that you've indicated in quotes and usually refers to the file in that same directory. Require gives you access to programming libraries bundled with ruby programming. 

#
class VirusPredictor
  #Initializes the class and stores the input arguments as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Runs the methods predicted_deaths and speed_of_spread using the instance variables from the  intialized method and returns the values.

  def virus_effects
    predicted_deaths
    speed_of_spread
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

  private
  
  #calculates the number of predicted deaths based on the instance variables determined in the initialize method. Using the .floor Ruby method rounds the number of deaths down to the nearest whole number. Predicted_deaths method also puts a string stating the predicted number of deaths for the state.  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end 

  end
  #Calculates the predicted speed of spread based on the instance variables determined in the initialize methods. The method then puts the predicted speed of spread calculated by running the method. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      @speed = 0.5
    elsif @population_density >= 150
      @speed = 1
    elsif @population_density >= 100
      @speed = 1.5
    elsif @population_density >= 50
      @speed = 2
    else
      @speed = 2.5
    end

  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# Have a variable states that are all the keys in the hash. 

STATE_DATA.each_key do |state|
  current_state = VirusPredictor.new(state, STATE_DATA[state][:population_density],   STATE_DATA[state][:population])
  current_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file? - The two differnt hash syntaxes are symbols and strings. The strings are used for the names of the states. The strings are used to represent the name of each state, while the hashes in the hash are symbols to represent the values for each key. 
# What does require_relative do? How is it different from require? - require_relative allows you to require the same file in that directory, while require gives you access to any files bundled in the Ruby libraries. 
# What are some ways to iterate through a hash? - You can iterate through a hash using .each_key, or .each key, while iterateing over the keys and values. 
# When refactoring virus_effects, what stood out to you about the variables, if anything? - The only thing that stood out about the variables is that they were a bit un needed. We didn't use them in the method, so it wasn't necessary to use them when calling the method. 
# What concept did you most solidify in this challenge? - The use of instance variables and when it's necessary to call them. I think I understand them better now and realized it's important to only use them when required. 


