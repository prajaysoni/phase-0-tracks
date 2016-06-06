# Take data from user
# Name, bodyweight
# Display what weight in kg they are

# Create a table to hold squat, bench, and deadlift numbers for the day
# Each row is a day at the gym (some rows may be all 0s)
# Prompt user for their squat, bench, and deadlift numbers for the day
# Store in the table

require 'sqlite3'

db = SQLite3::Database.new("lifts.db")
#db.results_as_hash = true


# Get user info

puts "Please enter your name"
name = gets.chomp

puts "Please enter your bodyweight in lbs"
weight = (gets.chomp.to_i / 2.2).round(2)

puts "Welcome to the lifts tracker #{name.capitalize}!"
puts "Your weight is #{weight} kg."


create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS lifts(
		id INTEGER PRIMARY KEY,
		squat INT,
		bench INT,
		deadlift INT
	)
SQL

db.execute(create_table_cmd)


def add_lifts (db, squat, bench, deadlift)
	db.execute("INSERT INTO lifts (squat, bench, deadlift) VALUES (?, ?, ?)", [squat, bench, deadlift])
end

lift_data = db.execute("SELECT * FROM lifts")

puts "Do you want to see the lifts from the previous days? Enter 'yes' or 'no'."
answer = gets.chomp

if answer.downcase == "yes"
	p lift_data
end

puts "Do you want to add more lift data? Enter 'yes' or 'no'."
answer = gets.chomp
if answer.downcase == "yes"
	begin
		puts "Please enter your squat for the day in lbs or enter 0"
		squat = gets.chomp.to_i
		
		puts "Please enter your bench for the day in lbs or enter 0"
		bench = gets.chomp.to_i
		
		puts "Please enter your deadlift for the day in lbs or enter 0"
		deadlift = gets.chomp.to_i
		
		add_lifts(db, squat, bench, deadlift)
	
		puts "Do you want to add data for another day?"
		another_day = gets.chomp
	end until another_day.downcase == "no"
end

puts "Do you want to see final set of data?"
answer = gets.chomp
if answer.downcase == "yes"
	p lift_data
	puts "Thank you for using the program. Happy lifting!!!"
else
	puts "Thank you for using the program. Happy lifting!!!"
end











