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