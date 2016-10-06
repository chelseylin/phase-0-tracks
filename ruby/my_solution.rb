# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# Require relative is an add-on to the require method which works based of the relative path of the file that has the 'require_relative' in it. Require normally requires a full file path.
#
require_relative 'state_data'
class VirusPredictor
# To set up a new instance of the VirusPredictor class with specfifc attributes
# Three instance variables : State of origin, population density, and population
def initialize(state_of_origin, population_density, population)
@state = state_of_origin
@population = population
@population_density = population_density
end
# This function uses the two return values of predicted_deaths and speed_of_spread
def virus_effects
    predicted_deaths
    speed_of_spread
end
private
# This function will calculate the amount of deaths based on the population density and population arguments and will print out a string with the results.
def predicted_deaths
# predicted deaths is solely based on population density
if @population_density >= 200
      multiplier = 0.4
elsif @population_density >= 150
      multiplier = 0.3
elsif @population_density >= 100
      multiplier = 0.2
elsif @population_density >= 50
      multiplier = 0.1
else
      multiplier = 0.05
end
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
end
# This method calculates the speed of spread by months using the population density argument.
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
STATE_DATA.each do |state, state_info|
  new_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  new_state.virus_effects
end

#=======================================================================
# Reflection Section
# 1) The first one uses  => to indicate key-value pairs and uses strings
# as key value. The second uses symbols as key-value.
# 2) Require_relative tells the code to import code from other files into
# current program. It uses relative path to call other file, but require 
# method needs more specific file paths.
# 3) We can iterate through a hash through .each method and block code. 
# We can also iterate through for and while loops.
# 4) It helps me to learn that we need to stay DRY when we use variables.
# For example, since the method here already have access to instance
# variables, we should not pass parameter and give it double access. The
# parameters are not used and became redundant.
# 5) It really helps me to learn the structure within and outside a class.