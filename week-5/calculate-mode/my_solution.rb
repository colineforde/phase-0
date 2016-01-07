# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? - An array of strings or integers with different quanitties
# What is the output? (i.e. What should the code return?) - The number(s) that appear most often in the Array. 
# What are the steps needed to solve the problem? - Create a hash. Add one to the value of each hash where there is  a Key. Iterate over each key and value in the hash and return the keys that have the greatest count. 

# 1. Initial Solution

def mode(arr)
  count = Hash.new(0) 
  arr.each do |num|
    count[num] += 1
  end 
  mode_array = []
   counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  return mode
end

# 3. Refactored Solution

def mode(arr)
  count = Hash.new(0) 
  arr.each do |num|
    count[num] += 1
  end 
  max_num = count.max_by { |key, value| value }[1]
  mode = count.select { |key, value| value == max_num }.map { |key, value| key }
  return mode
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why? - We decided to use a Hash. That way you can keep track of the number and the count for how many times it appears in the array that is inputed. 

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?  - Yes. Pseudocode was the easier part. It was clear what we wanted to do and how to go about it.The challenge came in when trying to figure out how to return the correct output if there is more than one mode, or if the mode wasn't a number.

# What issues/successes did you run into when translating your pseudocode to code? - One issue was making this work for both integers and strings. Initially, I thought we could just set the mode equal to zero, and by counting the number of times each number appears in the hash, and iterating over each key/value, update the mode if the value was greater than the previous value. Then I ran into a problem if 0 appeared the most, and if there was more than one mode. It took a bit of thinking and some review of the different methods for .max, but was able to come to a solution that worked for all cases, not just numbers or one mode in the array. 

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? - We used .each, .max_by, and .select. For me, max_by took a bit more thinking as it returns both the key and value in the array, and we only want the number with the max value to be returned. I also didn't know we could call the index after a curly bracket, so it was an interesting discovery!