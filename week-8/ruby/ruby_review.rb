# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#A number is a fibonacci number if the two numbers before that in the sequence sum up to the current number. In order to find out whether a number is a fibonacci number, you need to check the sequence up to that number and see if the number appears. If it does, return true. If it does not, return false. 


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


# What concepts did you review or learn in this challenge? - I reviewed .each_with_index as well as ternary operators. It was also a good review of calling methods within methods.  
# What is still confusing to you about Ruby? - One thing that's a bit confusing is not solving the problems, but breaking it down far enough to be able to implement every step. I knew exactly what I needed to do, but it took me a while to figure out how exactly (even with the pseudocode) I would work through the solution. 
# What are you going to study to get more prepared for Phase 1? - Work on breaking the problem down into better steps. The better my pseudocode, the easier it is for me to write out the methods. I will also try to learn more built in Ruby methods. They're pretty handy and it would be good to have a solid understanding of how they each work. 
