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
Reflection: 

How does Ruby handle addition, subtraction, multiplication, and division of numbers? - Ruby adds, subtracts, and multiplies normally. For division, ruby returns whole numbers unless the number has .0 at the end (eg 10.0, which would be the literal float) or has .to_f to the end of the divisor or dividend in order to give the decimal of the division. 

What is the difference between integers and floats? - Integers are whole numbers while floats are decimals. 

What is the difference between integer and float division? - Integer division returns how many times the number can be divided by the denominator without any remainders, whereas float division will return the decimal. For example, 7/3 = 2 fir integer division, but 7/2.to_f or 7/2.0 = 3.5/

What are strings? Why and when would you use them? - Strings are a list of characters. They are useful when you want to include text or a list of numbers and letters. Strings can sometimes be words or sentences but don't have to always contain only letters, and can include other characters as well. Like numbers, you can add strings, but instead of adding as you would in math, adding strings concatenates them together. You would use strings if you'd like to add names, addresses, or other things that don't just have a numeric value.  

What are local variables? Why and when would you use them? - Local variables are names that you use to store strings or numbers. Local variables are lowercase and instead of using spaces you use underscores. You would use a local variable if you'd like to store a string or number to not type out the same string over and over again; instead it will be saved in a variable, which you can change at any time. 

How was this challenge? Did you get a good review of some of the basics? - This challenge was pretty easy. I had a bit of a foundation in Ruby so this was more of a refresher of the basics, as well as learn how to better explain some of the concepts. 
