# Pad an Array

# I worked on this challenge with: Aaron 

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? - an array, a mininum size of the returned array, and a value which has a default value of zero. 
# What is the output? (i.e. What should the code return?) - The output is either a destructive array, or a new array with a length the size of the min_size, and the value added into the array. 
# What are the steps needed to solve the problem? Have an output array. For the bang method, you'll want to have the original array altered. For the pad method without the bang, you'll want to either create an output array or make a clone of the original array so that the original array isn't changed. WHILE the length of the output array is less than the mininum size, you'll want to shovel into the array the value. Once the array is the size of the minimum array, you want to RETURN the new array. 


# 1. Initial Solution
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array << value 
  end
    return array
end

def pad(array, min_size, value = nil) #non-destructive
  output = array.dup
  while output.length < min_size
    output << value
  end 
  return output
end

# # 3. Refactored Solution
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array << value 
  end
    return array
end

 def pad(array, min_size, value = nil) #non-destructive
  pad!(array.clone, min_size, value)
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps? - Yes, I think we were pretty successful at breaking down the problem into small steps. We didn't run into any major issues while writing the methods. 

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have? - Yes, we were easily able to transate it into code. The difficulty that I ran into was first having putting <= instead of < for the first pad function, which caused some of the specs to fail. After realizing due to the while loop and how it works, it'll shovel into the array until that condition is met, and once it's met it will exit AFTER the last value has been shoveled in. I was easily able to change it, but it's something to keep in mind when making sure to define the method correctly. 

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them? - The initial solution was not successful at passing for the pad! method, for reasons mentioned in the previous response. In addition to changing the code I mentioned above, I inserted a few puts statements to see what is being printed out into the console to see when the error is occuring. ONnce realizing where the error was, I removed them from the code.  

# When you refactored, did you find any existing methods in Ruby to clean up your code? -  No existing methods. We just replaced .dup with .clone.

# How readable is your solution? Did you and your pair choose descriptive variable names? - I think the solution is pretty readible. It's pretty short and straightforward. We tried to use Ruby methods to make it look a bit cleaner, but I'm sure there's a way to better refactor .pad

# What is the difference between destructive and non-destructive methods in your own words? - Destructive methods alter the original array, so if you were to call the array after making the change, you wouldn't see the original; instead you'd see the output as a result of the method running. With destructive methods, you create a separate array that is the output which is different from the original. If you were to puts the original array, it would still look the same. 