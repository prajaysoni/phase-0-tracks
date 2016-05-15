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

test_array = [1, 100, 0, 44]
p test_array
test_array.delete_if{|x| x > 34}
p test_array

test2 = ["s", "z", "b", "a", "j"]
p test2
test2.keep_if{|z| z =~ /[za]/}
p test2

test3 = [1, 3, 11, 18, 21]
p test3
p test3.select {|y| y.even?}

test4 = [1, 2, 3, 4, 5]
p test4
p test4.drop_while {|a| a < 3}

test5 = {
  "1" => "one",
  "2" => "two",
  "3" => "three"
}
p test5.delete_if{|num, word| num.to_i > 2}

age = {
  "Simba" => 7,
  "yogi" => 8,
  "lilo" => 5
}
p age.keep_if{|name, age| age > 7}

grades = {
  "kelly" => 98,
  "tom" => 78,
  "yogi" => 100,
  "betty" => 80
}
p grades.select{|name, grade| grade > 90}

prices = {
  "soda" => 2,
  "sandwich" => 5,
  "chips" => 2,
  "hotdog" => 4
}
p prices.reject{|food, price| price > 2}