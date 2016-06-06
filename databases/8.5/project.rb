# Take data from user
# Name, bodyweight
# Display what weight in kg they are

require 'sqlite3'

db = SQLite3::Database.new("lifts.db")


# Get user info

puts "Please enter your name"
name = gets.chomp

puts "Please enter your bodyweight in lbs"
weight = gets.chomp.to_i / 2.2

puts "Welcome to the lifts tracker #{name.capitalize}!"
puts "Your weight is #{weight} kg."