# Numbers to Commas Solo Challenge

# I spent 30 minutes on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? - The number that we'd like to convert to an integer
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def separate_comma(num)
	idx = 0
	output = []
	num = num.to_s.split('').reverse
	while idx < num.length
		if (idx + 1) % 3 == 0 && idx != num.length - 1
			output << (num[idx] + ',')
		else 
			output << num[idx] 
		end 
		idx += 1
	end 
	return output.join('').reverse
end


# 2. Refactored Solution

def separate_comma(num)
	output = num.to_s.split('').reverse.map.with_index do |digit, idx|
		if (idx + 1) % 3 == 0 && idx != num.to_s.length - 1
			digit + ','
		else
			digit
		end
	end 
	return output.join('').reverse
end


# 3. Reflection