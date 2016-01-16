#Attr Methods

# I worked on this challenge by myself.

# I spent 45 minutes on this challenge.

# Pseudocode

# Input: The input for the class is a name when creating a new object. 
# Output: The output will be a greeting by calling the hello method under Greetings Class and including the namedata object. 
# Steps: Initialize the name data class for a name value. Also add the name as an attr_reader so that it may later be read in the greetings class. For the greetings class, initialize the class by creating an instance of the name data, with your name as the name. Then for the hello method inside the greetings class, call @namedata.name so that the method will retrieve the information from the NameData class, as it was initialized in Greetings. A sentence should appear, greeting the individual who's name is in the namedata object. 

class NameData
	attr_reader :name
	def initialize(name)
		@name = name
	end 
end


class Greetings
	def initialize
		@namedata = NameData.new("Susan")
	end

	def hello
		puts "Hello, #{@namedata.name}! How wonderful to see you today"
	end
end

greet = Greetings.new
greet.hello


# Reflection
# What is a reader method? - A reader method lets you call the method outside the class and read the value, but you cannot change or set the value. For example, you can initialize a class to have the name value. You can then have a the reader method name -> def name; @name = name; end. If you create an object and call .name on the object, it will return the name  that you input. But if you try to change the name by calling object.name = "newname", you will get an error message. 

# What is a writer method? - A writer allows you to set or change the variable outside of the method. For example, if you want to be able to change the name of individuals in a Person class, you can create a writer method such as def name=(name); @name = name; end. This will allow you to call the method outside of the class and set the name equal to whatever you choose. However, if you tried calling person.name with just a setter method, you will get an error. 

# What do the attr methods do for you? - The attr_reader lets you call the method outside the class and read the value, but you cannot change or set the value. The attr_writer allows you to set or change the value outside of the class, but you aren't able to read it. An attr_accessor allows you to do both the reading and setting of values. 

# Should you always use an accessor to cover your bases? Why or why not? - You will not always want to use an accessor. What you're building and the information you're storing will decide what you'd like to use. For example, if you have a list of names and addresses and you want to look up the name, an attr_reader might be better, so that way the information cannot be accidentally changed by others. On the other hand, maybe you want to be able to store someone's address but not be able to display the information, as the person would like it to be private. You should use an attr_writer. If you'd want to be able to pull (display) as well as change addresses, it would be better to use an attr_accessor. 

# What is confusing to you about these methods? - I'm still not 100% on when to use each. I get the concept behind it (one displays the info, one allows you to set the info, and the last allows you to do both), but i'm trying to thing of real-life scenarios (banking informaiton, ss#, student grades, etc) where we'd use each, and why one is preferred over the other. 

#Release1
# What are these methods doing? - The methods for release 1 are initializing the name, age, and occupation for the Profile class. It's then printing the information, and defining the attr_readers, which allows you to read the name, occupation, and age, if you were to call profile.name, profile.occupation, or profile.age. It also sets the attr_writer for each of the variables, enabling the user to change or set the name, occupation, or name of the profile, which they later do foirther down in the script. 

# How are they modifying or returning the value of instance variables? - They are modifying the values for the name, age, and occupation for the profile by creating the attr_writer. It allows you to set the values according to what you'd like it to be equal to. You can see on lines 26, 34, and 43 where the attr_writers are defined for the methods, and lines 71 to 73 where they set the new values. 

#Release 2
# What changed between the last release and this release? - Instead of creating the method what_is_age and definging it as equal to @age, the attr_reader was set to :age, so that if you call the object.age, it will still be able to read that value. 
# What was replaced? - Instead of defining a method, the attr_reader has replaced it. 
# Is this code simpler than the last? - The code is simpler. You don't have to create a separate method and can instead just create the attr_reader for the variable you'd like. 

#Release 3
# What changed between the last release and this release? - The method def change_my_age=(new_age) has been commented out and instead an attr_writer with :age is in the code
# What was replaced? - The Method was replaced with the attr_writer for age. 
# Is this code simpler than the last? - The code is simpler because it takes up fewer lines. 
