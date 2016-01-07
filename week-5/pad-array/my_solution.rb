# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? - 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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