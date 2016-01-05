# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# 1. Separate items based on spaces so they're each an individual string. 
# 2. Use a hash to store the item name and the quantity as the key and the value for each item.
# 3. Set default quantity to zero
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(items)
  list = Hash.new(0)
  items.split(' ').each do |item|
    list[item] = 0
  end
  look_pretty(list)
end

# create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps:  add the item and quantity to the hash

# output: new hash containing all previous items with added item
def add_item(list, item, quantity=0)
  list[item] = quantity
end

def add_multiple_items(list, items={})
  items.each do |key, value|
    list[key] = value
  end
end
# input the list, the item with the qantity
#for reach item, add to list with quanitty 

# Method to remove an item from the list
# input: list and item to be removed
# steps: select item by key and delete from list
# output: list of items without the deleted item

def delete_item(list, item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: item and new quatity
# steps: access that item and give it a new quantity
# output: list of items with updated quantity
def update_item(list, item, quantity)
  add_item(list, item, quantity)
end

# Method to print a list and make it look pretty
# input:list to print
# steps: Add formatting/style to have hash print out pretty.
# output: pretty printed hash

def look_pretty(hash)
  puts "grocery list"
  hash.each do |key,value|
    puts "#{key} : #{value}"
  end
end

groceries = create_list("carrots apples cereal pizza")
add_item(groceries,"lemonade", 2)
add_item(groceries,"tomatoes", 3)
add_item(groceries,"onions", 1)
add_item(groceries,"ice cream", 4)
look_pretty(groceries)
delete_item(groceries, "lemonade")
look_pretty(groceries)
update_item(groceries, "ice cream", 1)

add_multiple_items(groceries, {"lemonade" => 2, "tomatoes" => 3, "onions" => 1, "ice cream" =>  4 })
look_pretty(groceries)


# What did you learn about pseudocode from working on this challenge? - It helps think through each step of the solution. Writing pseudocode before diving into the add_multiple_items method helped piece apart every step. 
# What are the tradeoffs of using Arrays and Hashes for this challenge? - Using a hash was very useful. It allowed us to store values to each item which helped as each grocery item had a price. 
# What does a method return? - A method returns the final output of the the commands called in the method. 
# What kind of things can you pass into methods as arguments? - You can pass arrays, strings, arrays containing strings, or integers as arguments into methods. You can also give methods default values by adding '=' followed by the value to default. 
# How can you pass information between methods? You can pass information betwen methods by having one method have an argument that is the output that a previous method returns. You can also modify the input in a method so that the next method can use that same input with the modifications.
# What concepts were solidified in this challenge, and what concepts are still confusing? - Using hashes were solidified as well as having default values. I didn't find anything too confusing but it was good practice to add multiple items to the hash at once. It was a newer concept rather than adding items of an array, which seems to be of good use, but I can probably use more practice with in the future.  
