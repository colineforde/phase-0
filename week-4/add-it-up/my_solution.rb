# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Heather.

# 0. total Pseudocode
# make sure all pseudocode is commented out!
# - have the method take in an array of numbers
# - have a sum, which starts at zero. 
# - iterate over each number and add that number to the total
# - return the total of all the numbers

# Input: Array of numbers
# Output: Sum of the numbers in the array.
# Steps to solve the problem.


# 1. total initial solution
def total(nums)
	total = 0
	nums.each do |num|
		total += num
	end 
	return total 
end 


# 3. total refactored solution
def total(nums)
	total = 0
	nums.each do |num|
		total += num
	end 
	return total 
end 


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# - go through each string in the array of strings
# - if it's the first word, return the string capitalized. 
# - if it's the last word, return the string with period at the end
# - for every word in between, add the word to the output array with a space between the words.
# Input: Array of strings
# Output: Sentence
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(strings)
	output = ''
	index = 0
	while index < strings.length
		if index == 0
			output << strings[index].to_s.capitalize + ' '
		elsif index == strings.length - 1
			output << strings[index].to_s + '.'
		else
			output << strings[index].to_s + ' '
		end
		index += 1
	end 
	return output
end

# 6. sentence_maker refactored solution
def sentence_maker(strings)
	output = strings[0].capitalize + ' '
	index = 1
	while index < strings.length
		if index == strings.length - 1
			output << strings[index].to_s + '.'
		else
			output << strings[index].to_s + ' '
		end
		index += 1
	end 
	return output
end






