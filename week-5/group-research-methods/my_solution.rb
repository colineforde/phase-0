# Research Methods

# I spent half an hour on this challenge.

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select { |el| el.to_s.include?(thing_to_find.to_s) } 
end

def my_hash_finding_method(source, thing_to_find)
  source.select { |k, v| v == thing_to_find }.keys 
end

# Identify and describe the Ruby method(s) you implemented.
# For the first method I used only .select and include?. This allowed me to select each item in the array that met the parameters I included in the block, which was whether the element included the thing that we're looking to find. I pretty much used the same for the Hash method, though I needed to add .keys to the end.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#.select can be used on both hashes and arrays. It takes in a block and will return an array with each item of the original array for which the condition is true. So by selecting the element and then calling .include?(which, by including it in the block, it checks each element to see if the "thing to find" is included in the element), the method selects all the items in the array which include the thing we want to find. For hashes, as mentioned above, you can still use include, but I've called .keys to the end of the select block. Without calling .keys, the method would select and return all the hashes (both the key and values) where the value is equal to the thing we want to find. By adding .keys to the end, it returns only the keys of those selected, which is what we need. 

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned how to use a block within a block. Initially I had a longer method which took up about 6 lines as I was trying to figure out how to use .select and .include and wasn't sure if I'd be able to call .include? inside the .select block. But once I was able to get the correct syntax and use both built-in methods the way I did I was able to make the code cleaner and easier to read. 
#
#
