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

  def initialize()
  	puts "initializing new puppy instance..."
  end

end

class Kittens

	def initialize()
		puts "Initializing new kitten instance..."
	end

	def kitten_fetch(item)
		puts "The kitten brought back a #{item}"
	end

	def kitten_lives(lives)
		if lives > 9
			puts "Cats only have 9 lives. You're wrong!"
		elsif lives <= 0
			puts "Your cat's already dead!"
		else
			puts "Your cat has #{lives} lives left"
		end
	end	






end




=begin 
pup = Puppy.new
pup.fetch("bone")

pup.speak(5)

pup.roll_over()

pup.dog_years(50)

pup.dog_eats(10)
=end

cat = Kittens.new

cat.kitten_fetch("mouse")
cat.kitten_lives(6)
cat.kitten_lives(0)
cat.kitten_lives(20)

idx = 0
kitten_array = []
until idx == 50

	cat = Kittens.new
	idx += 1
	kitten_array << cat
	
end
kitten_array.each {|cat| cat.kitten_fetch("mouse")}
kitten_array.each {|cat| cat.kitten_lives(7)}