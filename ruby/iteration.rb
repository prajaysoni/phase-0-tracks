def iteration
	puts "We are in the method. How COOOLLL!!!!"
	yield
	puts "Now we're done with the block."
end

iteration {puts "Now we are outside of the method and we finished out block!!!"}


days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

names = {
	"Dad" => "Bob",
	"Mom" => "Cindy",
	"Sister" => "Katy"
}

p days
days.each { |day| puts "On #{day}, we will code!!" }

p names
names.each { |relation, name| puts "My #{relation}'s name is #{name}." }

puts "Lets reverse our days of the week."

new_day = days.map! { |day| day.reverse }
p new_day