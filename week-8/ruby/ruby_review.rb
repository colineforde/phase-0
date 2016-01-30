# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#A number is a fibonacci number if the two numbers before that in the sequence sum up to the current number. In order to find out whether a number is a fibonacci number, you need to check to see if the numeber in the sequence is a fibonacci number. 


# Initial Solution
def is_fibonacci?(num)
	output = [1]
	counter = 1
	while counter <= num
		output << next_num(output)
		if output.last == num
			return true
		elsif output.last > num
			return false
		end
		counter += 1
	end
	return output
end


def next_num(arr)
	if arr.length < 2
		arr.last
	else
		arr.last + arr[-2]
	end
end



# Refactored Solution

def is_fibonacci?(num)
	output = [1]
	counter = 1
	while counter <= num
		output << next_num(output)
		if output.last == num
			return true
		elsif output.last > num
			return false
		end
		counter += 1
	end
	return output
end


def next_num(arr)
	arr.length < 2 ? arr.last : arr.last + arr[-2]
end


# Reflection