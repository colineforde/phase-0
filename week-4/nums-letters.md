What does puts do? - puts, which stands for "put string" prints the output to the console with a new line but doesn't return the output. 

What is an integer? What is a float? - An integer is a whole number while a float is the number with the decimal place. 

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming? - Integers are only whole numbers while floats are decimals. If you do division in irb, you will return an integer, but you can return a decimal by adding '.to_f' to the end of the divisor or dividend. 

Using IRB or submlime, write a program that calculates and outputs the:

Hours in a year
Minutes in a decade

```ruby
hours_in_year = 365 * 24
	
minutes_in_decade = 10 * 60 * hours_in_year
 
```