# Leap Years

# I worked on this challenge with: Sydney.

# Create a method leap_year? that accepts an integer representing a year as input.

# It should return true if the year input is a leap year and false otherwise.


# Your Solution Below

def leap_year?(year)
	if year % 4 == 0 && year % 100 == 0 && year % 400 != 0 
		return false
	elsif year % 4 == 0 && year % 100  == 0 
		return true
	elsif year % 4 == 0 && year % 100 != 0 
		return true 
	elsif year % 400 == 0 
		return true
	else 
		return false
	end 
end 

