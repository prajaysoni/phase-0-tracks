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

  def roll_over()
  	puts "*rolls over*"
  end

  def dog_years(int)
  	int = int.to_f
  	dog_age = int/7
  	dog_age = dog_age.round(2)
  	puts "The dog is #{dog_age} years old"
  	dog_age
  end

  def dog_eats(mins)
  	puts "It took the dog #{mins} minutes to eat the food."
  end
end

pup = Puppy.new
pup.fetch("bone")

pup.speak(5)

pup.roll_over()

pup.dog_years(50)

pup.dog_eats(10)