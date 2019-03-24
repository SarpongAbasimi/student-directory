# let's put all students into and array 
@students = []

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

def print_student_list
  @students.each_with_index do |student,index|
    puts "#{index + 1 }. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  name = gets.chomp 
    
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
   when "1" 
     input_students 
   when "2" 
     show_students
   when "3" 
     save_students
   when "4"
     load_students
   when "9" 
     exit 
   else 
     puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def save_students
  file = File.new('students.csv','w')
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    join_student_info = student_data.join(',')
    file.puts join_student_info
  end 
  file.close
end

def load_students(filename = 'students.csv')
  file_to_read = File.open(filename, 'r')
  file_to_read.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file_to_read.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exit?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else 
    puts "Sorry, #{filename} doesn't exit."
    exit
  end  
end

#nothing happens until we call the methods
interactive_menu

=begin
students = input_students
print_header
print(students)
print_footer(students)
=end
