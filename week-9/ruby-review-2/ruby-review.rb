# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#Go through each word in the input and reverse each word in place so that the letters 
#are reversed but the order of the words don't change. 


# Initial Solution
def reverse_letters(sentence)
  sentence.split(" ").map(&:reverse).join(" ")
end


puts reverse_letters("Hi I'm Coline")
# Refactored Solution - no refactored solution. We're not sure if this can be refactored any 
#further. 



# # Reflection
# What concepts did you review in this challenge? - Using .map, reversing in place, and splitting arrays
# What is still confusing to you about Ruby? - Nothing is still confusing at the moment. 
# What are you going to study to get more prepared for Phase 1? - Review Project Euler challenges
#to try and get used to solving mind bending problems. 