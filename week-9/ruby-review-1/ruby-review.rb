# U2.W6: Testing Assert Statements

# I worked on this challenge with: Tim.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#The code runs to see if the names match the name on line 12. If it returns true, 
#there is no error. If it returns false, the assert error raises and you'll see the message 
#"Assertion failed!".

# 3. Copy your selected challenge here
def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
 return num_1 - num_2
end

def multiply(num_1, num_2)
 return num_1 * num_2
end

def divide(num_1, num_2)
 return num_1 / num_2.to_f
end

# 4. Convert your driver test code from that challenge into Assert Statements

sum = add(1,2)
assert {sum == 5}
assert {sum == 3}

minus = subtract(7,5)
assert { minus == 2 }
assert {minus == 10}

times = multiply(2,4)
assert { times == 8 }
assert { times == 42 }

div = divide(10,2)
assert {div == 5}
assert {div == 3}


# 5. Reflection
# What concepts did you review in this challenge? - In this challenge we learned something new
#which was turning specs into assert statements. I think this is pretty cool, as it was something
#I was hoping to learn how to do before beginning at DBC. 
# What is still confusing to you about Ruby? - Nothing yet confuses me about Ruby. There
#are times when it's  a bit more challenging to solve as I'm not sure how to break the problem
#down, but other than that on using Ruby methods, I'm pretty comfortable with them so far. 
# What are you going to study to get more prepared for Phase 1? - Using assert methods, 
#Solving more complex problems, and probably do some Project Euler problems to get used to 
# manipulating objects. 
