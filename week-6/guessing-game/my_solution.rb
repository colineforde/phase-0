# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 20 mins on this challenge.

# Pseudocode

# Input: When the game begins, the user will input the answer, which is the number to be guessed. For the guess method, the inputs will be a number.
# Output: The output for the guess method will be either a symbol returning :high, :low, or :correct, depending on whether the guess is higher, lower, or the same as the answer. The solved? method will return true or false.
# Steps: Initialize the answer and make it an instance variable to be used in other methods in the class. You will also need to define a guess method. You can also make the number guessed an instance variable. If the guessed number is greater than the answer, you'll return :high. If it's lower, you'll return :low. If it's neithr (therefore equal), you'll return :correct. The game is ended and has been solved when the number guessed is the same as the answer.

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#   	@answer = answer
#   end

#   def guess(num)
#   	@num = num
#   	if @num > @answer
#   		return :high
#   	elsif @num < @answer
#   		return :low
#   	else 
#   		return :correct
#   end
# end

#   def solved? 
#   	@num == @answer
#   end
# end


# Refactored Solution
class GuessingGame
  attr_accessor :solved
  alias_method :solved?, :solved

  def initialize(answer)
  	@answer = answer
    @solved = false
  end

  def guess(num)
  	@solved = (num == @answer)
  	num > @answer ? :high : (num < @answer ? :low : :correct)
  end

end


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object? - Instance variables and methods represent characteristics and behaviours in real-world objects as it allows you to use variables from one method in several other methods. 
# When should you use instance variables? What do they do for you?
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?