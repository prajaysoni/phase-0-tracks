# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative lets the class access the 'STATE_DATA' hash
#
require_relative 'state_data'

class VirusPredictor

  # Sets up the instance variables for the class
  # Sets arguments for the input

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls two private methods in class

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Prints out how many people will die from each state

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      print "#{@state} will lose #{(@population * 0.4).floor} people in this outbreak"
    elsif @population_density >= 150
      print "#{@state} will lose #{(@population * 0.3).floor} people in this outbreak"
    elsif @population_density >= 100
      print "#{@state} will lose #{(@population * 0.2).floor} people in this outbreak"
    elsif @population_density >= 50
      print "#{@state} will lose #{(@population * 0.1).floor} people in this outbreak"
    else
      print "#{@state} will lose #{(@population * 0.05).floor} people in this outbreak"
    end

  end

  # Conditional statement to see how quickly virus will spread in given state

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      puts " and will spread across the state in #{0.5} months.\n\n"
    elsif @population_density >= 150
      puts " and will spread across the state in #{1} months.\n\n"
    elsif @population_density >= 100
      puts " and will spread across the state in #{1.5} months.\n\n"
    elsif @population_density >= 50
      puts " and will spread across the state in #{2} months.\n\n"
    else
      puts " and will spread across the state in #{2.5} months.\n\n"
    end

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


STATE_DATA.each do |name, data|
  state = VirusPredictor.new(name, data[:population_density], data[:population])
  state.virus_effects

end







#=======================================================================
# Reflection Section