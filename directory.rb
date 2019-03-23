# let's put all students into and array 

students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The wicked Witch of the West",
  "Terminator",
  "Freddu Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# and then print them 
puts "The students of Directory Academy"
puts "____________"
students.each do |student|
  puts student
end
# finally, we print the total
puts "Overall, we have #{students.count} great students"



