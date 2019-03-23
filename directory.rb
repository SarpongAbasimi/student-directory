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

def print_header 
  puts "The students of Directory Academy"
  puts "____________"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students) 

