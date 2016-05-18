class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times do  
  		puts "Woof!"
  	end
  end

end

pup = Puppy.new
pup.fetch("bone")

pup.speak(5)