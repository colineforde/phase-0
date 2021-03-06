# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], 
["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |array|
	if array.is_a?(Array)
		array.each do |num|
			p num + 5
		end
	else
		p array + 5
	end 
end 


# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# startup_names.each do |array|
# 	if array.is_a?(Array)
# 		array.each do |arr|
# 			if arr.is_a?(Array)
# 			arr.each do |word|
# 				p word + "ly"
# 			end
# 		else
# 			p arr + "ly"
# 		end
# 		end
# 	else
# 		p array + "ly"
# 	end
# end

def startup_name_generator(item)
	if item.is_a?(Array)
		item.each do |nested_item|
			startup_name_generator(nested_item)
		end
	else
		p item + "ly"
	end
end


puts startup_name_generator(startup_names)


