What does puts do? - puts, which stands for "put string" prints the output to the console with a new line but doesn't return the output. 

What is an integer? What is a float? - An integer is a whole number while a float is the number with the decimal place. 

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming? - Integers are only whole numbers while floats are decimals. If you do division in irb, you will return an integer, but you can return a decimal by adding '.to_f' to the end of the divisor or dividend. 

Using IRB or submlime, write a program that calculates and outputs the:

Hours in a year
Minutes in a decade

```ruby
def hours_in_year
	num_of_days = 365
	hours_per_day = 24
	return num_of_days * hours_per_day
end 

def minutes_in_decade
	yrs_in_decade = 10
	return hours_in_year * 60 * yrs_in_decade
end 

puts hours_in_year
puts minutes_in_decade

```