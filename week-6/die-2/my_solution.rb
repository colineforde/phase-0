# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 20 mins on this challenge.

# Pseudocode

# Input: An array with as many items as the number of sides of the die. 
# Output: The random number that was returned after running the method and creating a new die.  
# Steps: Initialize the labels variable and make it an instance variable. Check to see if the labels, which is an array, is empty, and IF it is empty, raise an ArgumentError. Next, define the sides method, which would be equivalent to the length of the array. Lastly, you want to define the roll method. We want to pick a random number, so pick a random index of the array. Since there is zero indexing, it should start at zero and end one less than the length of the array. 


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.empty? 
  		raise ArgumentError.new ("You must have a die with at least one side")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(0..sides-1)]
  end
end

# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.empty? 
  		raise ArgumentError.new ("You must have a die with at least one side")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work? - The main difference between this die class and the last is the input before was a number, and the one for this challenge is an array of numbers. This meant that we also had to change the roll method to not return a number, but the index of the side that we'd like to select at random. 
# What does this exercise teach you about making code that is easily changeable or modifiable?  - It's important to label methods correctly in order to understand what's going on. 
# What new methods did you learn when working on this challenge, if any? - I learned the .sample method which selects a random number given the the array that it's called on. 

# What concepts about classes were you able to solidify in this challenge? - Instance variables make it easy to use variables in different methods throughout the class. 
