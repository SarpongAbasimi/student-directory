# let's put all students into and array 

students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex Delarge ", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
 ]

def print_header 
  puts "The students of Directory Academy"
  puts "____________"
end

def print(students)
  students.each_with_index do |student,index|
    if student[:name].length < 12
      puts "#{index + 1 }. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = [] 
  name = gets.chomp 
    
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  
   students
end

def interactive_menu
  students = []
  loop do
    puts "1. Input the students "
    puts "2. show the students" 
    puts "9. Exit"
    
    selection = gets.chomp 
   
    case selection
    when "1"
      students = input_students 
    when "2" 
      print_header
      print(students)  
      print_footer(students)
    when "9"
      exit
    else 
      puts "I don't know what you meant, try again"    
    end   
  end
end
#nothing happens until we call the methods

interactive_menu()

=begin
students = input_students
print_header
print(students)
print_footer(students)
=end
