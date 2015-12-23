# I worked on this challenge with: Sydney.

# Write a method valid_triangle? which takes as its input three non-negative numbers. It should return true if the three numbers could form the side lengths of a triangle and false otherwise.

# The arguments don't correspond to specific sides. Don't worry about handling negative inputs — garbage in gets garbage out.

# Note: When you see a method that has a ? in its name, that means the expected result is a boolean value. It should return true or false. Keep this in mind when working through later challenges or writing your own challenges.

# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0 
  	return false
  elsif a == b && b == c && c== a 
  	return true
  elsif a + b > c && a + c > b && b + c > a 
  	return true 
  elsif (a**2 + b**2) == c**2
  	return true
  else 
  	return false
  end 
end