# Your Names
# 1) Coline   
# 2) Andrew

# We spent 1 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key?(item_to_make) 
    raise ArgumentError.new("We don't have #{item_to_make}.")
   end

  serving_size=library[item_to_make]
  remaining_people_to_serve = num_of_servings % serving_size

  case remaining_people_to_serve
  when 0
    return "#{num_of_servings / serving_size} #{item_to_make}(s) offers enough servings to feed your group."
  when 6 || 5
    cookies = remaining_people_to_serve % library["cake"]
    return "#{num_of_servings / serving_size} #{item_to_make}(s). We'll throw in #{cookies} cookie(s) and a cake." 
  else
    return "We have enough #{item_to_make} to serve #{num_of_servings / serving_size}, but  we can throw in  #{remaining_people_to_serve} extra cookies."
  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge? - It's important to write clean code and make sure you label all the variables correctly. It helps someone else understand what you wrote and know what's going on. 
# Did you learn any new methods? What did you learn about them? - I learned that .values_at method. It comes in pretty handy if you want to select multiple values in a hash, as it returns an array. 
# What did you learn about accessing data in hashes? - You can access multiple values in a hash by calling .values_at(item(s)). However, this method was initially used for the first item, as it returns an array, and there was only one value to select. As such, we needed to call the 0 index in order to access the item. I think if we want to return a list of values, using the .values_at method is useful. Otherwise if you're just accessing one item, it might make more sense to just write hash[key] to retrieve the item. 
# What concepts were solidified when working through this challenge? - Accessing values in hashes, writing case statements, as well as using .has_key? Ruby methods. 