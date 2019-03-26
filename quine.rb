# A quine is a program that prints out its own source code
# This is my implementation of quine 

greet = "\nputs \"greet = \"Hello world\""
puts "greet = " + greet.inspect + greet
