# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Welcome, " + first_name +" "+ middle_name +" "+ last_name + "."


# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "What is your favorite number?"
fav_num = gets.chomp.to_i
puts (fav_num + 1).to_s + " is a bigger, better number."


# How do you define a local variable? - You define a local variable by assigning a string or number to a name. When defining a local variable, the name of the variable goes on the left side of the equal sign, and the assigned variable goes on the right. ex. potato = 3. You can change the value of a local variable by simply assigning it to a new number. 

# How do you define a method? - You define a method by using 'def' followed by the method name, and any parameters that the method takes in. Then inside the method, you put what you'd like for the method to do when called, which could be to return a statement, or do math. At the end of the method, you will close it by putting 'end' once you're finished.

# What is the difference between a local variable and a method? - A local variable  assigns a string or number to a name, whereas a method is defined within a method name. The syntax is different as local variables are on one line, whereas when you define a method, the first line you put 'def' followed by the method name, then the next line is the method, and close the method with 'end'. In more complex methods, you can also add local variables within the method, but the variable is then only local to that method. 

# How do you run a ruby program from the command line? - You run a ruby program from the command line either by entering irb and typing the program directly into the command line, or you can type the program into sublime and then just type ruby followed by the file name to run the program. 

# How do you run an RSpec file from the command line? - You run an RSpec file from the command line by typing in rspec followed by the file name. 

# What was confusing about this material? What made sense? - Nothing was confusing in this section of the challenge. I misread a piece of the instructions and did rspec for my solution file instead of the spec file, but other than that this was pretty straightforward. 