# Die Class 1: Numeric

# I spent 15 minutes on this challenge.

# 0. Pseudocode

# Input: The number of sides for the die
# Output: the number rolled at random that will be a maximum of the number of sides the die has. 
# Steps: Start by initializing the number of sides. IF the number of size is less than or equal to zero, raise an error. Create an attribute reader, which is the number of sides in the input, and then create a die.roll method which rolls the die and selects a randome number using the rand built in Ruby method.  


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless sides > 0
    	raise ArgumentError.new("Please select select a number from 1 to 6") 
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end


# # 3. Refactored Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     raise ArgumentError.new("Please select select a number from 1 to 6") if sides <= 0 
#   end

#   attr_reader :sides

#   def roll
#     rand(1..sides)
#   end
# end


# 4. Reflection

# What is an ArgumentError and why would you use one? - An ArgumentError is an error that appears when you call a method with the wrong number of arguments (ex, the method takes in two arguments and you've only put in one). You can use an ArgumentError if you'd like for there to be specific inputs, not just for the number of inputs, but what type of input, like we only wanted the user to have a certain number of sides. 

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them? - I used the rand method which is a random number generator and will give you a random number depending on the range. If you use two dots (..), the range will be inclusive of the end number. If you use three, it will not include the end number. 

# What is a Ruby class? - A class is a class in iteself but can best be described as a bluerpint for mapping out and performing methods on each object. An example of classes would be Strings, Arrays, and Fixnums. Each variable that you assign to an object already has a class. For example, if you define home = "where the heart is" and then call home.class, the terminal will return the class as String. 

# Why would you use a Ruby class? - You can use a Ruby class to give objects a set of commands. For example, if you wanted to write steps for cooking a pizza or building a house, you can create  a Pizza or BuildHouse class, and you can create objects by defining Pizza.new and call each method you create inside those new objects to run the code defined in your class. 

# What is the difference between a local variable and an instance variable? - A local variable is local to the method it is inside. If you try calling a local variable within another method without defining it, you will get an error. An instance variable can be used throughout the class without having to recreate the variable. Instance and local variables can have the same name, but an instance variable will have an @ sign in front of it, while the local variable will not. 

# Where can an instance variable be used? - An instance variable can be used in different methods within the same class. 
