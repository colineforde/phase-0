# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? - errors.rb
#
# 2. What is the line number where the error occurs? - The command line is saying the error occurs on line 170, but that's because there is a second 'end' missing to close the method. The missing end should be between line 16 and 17. 
#
# 3. What is the type of error message? - There is a syntax error with the method. 
#
# 4. What additional information does the interpreter provide about this type of error? - The syntax tells us that they were expecting the keyword 'end' and that we hould add another end to the method to close out the method. 
#
# 5. Where is the error in the code? - There should be an end after line 15 to close out the method. 
#
# 6. Why did the interpreter give you this error? - The interpreter gave me this message because there is only one end. This end is aligned with the method to end the method, but there needs to be an end for the while loop, which currently does not exist. We can fix this error by adding another end to the method, as I've done above. 
#

# --- error -------------------------------------------------------

south_park = "colorado"

# 1. What is the line number where the error occurs? - The error appears on line 36.
#
# 2. What is the type of error message? - There is an undefined local variable or method, which is south_park. 
#
# 3. What additional information does the interpreter provide about this type of error? - The interpreter also lets us know that there is a name error for the local variable, as said at the end in parenthesis. 
#
# 4. Where is the error in the code? - The error is on line 36, where south_park appears without being assigned. There is no string or integer to make the local variable complete. 
#
# 5. Why did the interpreter give you this error? - The interpreter gave me this error because we haven't assigned south_park to anything. If it was followed by an euqal sign and either a string or an integer, or an array, then the error would not occur. I have changed this so that the error is fixed and south_park = "colorado".
#

# --- error -------------------------------------------------------

 def cartman(thing)
 	puts thing
 end 

# 1. What is the line number where the error occurs? - The error occurs on line 51.
#
# 2. What is the type of error message?- This is a No Method Error. 
#
# 3. What additional information does the interpreter provide about this type of error? - The method has not been defined on line 51 for cartman. 
#
# 4. Where is the error in the code? - The method needs to be defined by adding 'def' and end, as well as arguments, since there's parenthesis. 
#
# 5. Why did the interpreter give you this error? - As mentioned above, the method is not complete. There needs to be a 'def' and 'end' added to the method, as well as the actual method inside the block. I've added to the method to fix the error. 
#

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs? - the error occurs on line 68.
#
# 2. What is the type of error message? - there is an argument error. 
#
# 3. What additional information does the interpreter provide about this type of error? - the interpreter tells us that when the method is called, there is one argument, but the method is defined as not taking in any arguments. 
#
# 4. Where is the error in the code? - There is an argument on line 72 when the method is called. You should either delete the argument or change the method so that it can take in an argument. 
#
# 5. Why did the interpreter give you this error? - As mentioned above, the interpreter gave me this error because the method doesn't take any arguments while the method is called with an argument. To fix the error I've deleted the argument when the method is called. 
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate cheese")

# 1. What is the line number where the error occurs? - the argument occurs on line 87. 
#
# 2. What is the type of error message? - there is an argument error. 
#
# 3. What additional information does the interpreter provide about this type of error? - there is a 0 for 1 argument error, meaning no argument is given where one is required. 
#
# 4. Where is the error in the code? - there needs to be an argument on line 91 where the method is called. 
#
# 5. Why did the interpreter give you this error? - the interpreter gave me this error because we tried to call the function with the wrong parameters. Without the argument, we're unable to puts the method, as line 88 suggests. In order to fix this, I've added an argument to line 91. 
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Joe')

# 1. What is the line number where the error occurs? - there's an error on line 12. 
#
# 2. What is the type of error message? - there is an argument error. 
#
# 3. What additional information does the interpreter provide about this type of error? - there are one out of the needed two arguments. 
#
# 4. Where is the error in the code? - The error is on line 112. We need to add an additional argument so that the method can run correctly.
#
# 5. Why did the interpreter give you this error? - The interpreter gave me this error because it's attempting to puts the sentence on line 109, but cannot perform as there's no argument for name. In order to fix this, I've added a name argument on line 112. 
#

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5  

# 1. What is the line number where the error occurs? - The error is on line 127
#
# 2. What is the type of error message? - Type Error
#
# 3. What additional information does the interpreter provide about this type of error? - A string cannot be coerced with a fixed number. 
#
# 4. Where is the error in the code? - The error is the asterisk and order of the string and number. 
#
# 5. Why did the interpreter give you this error? - The error occurred because of the order of the string and the integer. The interpreter reads  5 * [string] as trying to be the product of a string and an integer, and you can't multiply a number by a string. However, if you change this to be [string] * 5, the interpreter understands this and will return the string printed out five time. 
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs? - Line 142. 
#
# 2. What is the type of error message? -Zero division error.
#
# 3. What additional information does the interpreter provide about this type of error? - You are trying to divide by zero. 
#
# 4. Where is the error in the code? The error occurs on line 142 where there is a zero in the denominator. 
#
# 5. Why did the interpreter give you this error? - You are not able to divide by zero, so tis creates an error. You can swap the numerator and denominator in order to no longer get the error. 
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs? - line 158
#
# 2. What is the type of error message? - Load error
#
# 3. What additional information does the interpreter provide about this type of error? - the interpreter is not able to load the file as it currently does not exist.
#
# 4. Where is the error in the code? - The error occurs in the file name 
#
# 5. Why did the interpreter give you this error? - The error occurs because the file does not exist. Therefore, we are not able to run the code all the way through as the interpreter cannot load a file that does not exist. 
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


# Which error was the most difficult to read? - None of the errors were difficult to read, as I've read errors in the past. It was great to have a refresher, and for DBC to piece apart every aspect of the error message, though. 

# How did you figure out what the issue with the error was? - I read through the error. Initially it took some time to 'decode' the error when first starting out, but now it's pretty clear what each error says. 

# Were you able to determine why each error message happened based on the code?  - Yes, and I revised the errors so they would run properly... except for the last which I left as-is. 

# When you encounter errors in your future code, what process will you follow to help you debug? - I will start by trying to find the error the line is on, and compare the error message on the interpreter to what I have written in the code. By reading through the error and revising each one individually, it will help me debug. I've found that instead of trying to tackle all things that may appear to be errors, it's easier to do it one by one according to what shows up in the interpreter. It helps to handle one thing at a time and clear it up as you go in order to not create errors where they didn't exist. 