# Class Warfare, Validate a Credit Card Number

# I worked on this challenge with Emmet S.
# I spent 1 hour on this challenge.

# Pseudocode

# Input: a credit card number with no spaces as an integer. 
# Output: true/false depending on whether the credit card number entered is valid. 
# Steps: 
#1. Initialize the credit card numbers to make sure that there are 16 digits. If there are not, rais an ArgumentError  - > "Please re-enter your card number". If number.length != 16 raise the error. 
#2. Card number would be. Initialize card number and make card number and turn it into an array of strings, with each string representative of a digit on the card number. 
#3.Go through each number and for every other number double the size. If num % 2 == 0 then double the number. Otherwise leave num as-is. 
#4.If the idx % 2 != 0. Split each string so that each number is a single digit. Go through each number and add them together. 
#5. If sum % 10 == 0 return true. Else return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
 
  def initialize(card_num)
    
    @card_num = card_num
    @card_string = @card_num.to_s
    @card_array = @card_string.chars.to_a
    
    raise ArgumentError.new('Please re-enter your card number') if @card_array.length != 16    
    
  end    
  
 def check_card
   output = @card_array.map.with_index do |digit, idx|
     if idx % 2 == 0 
        digit.to_i * 2
     else
        digit.to_i
     end 

   end
   sum = output.join('').split('').map(&:to_i).reduce(:+)
   if sum % 10 == 0
     true
   else
     false
   end
end
end

# Refactored Solution
class CreditCard
 
  def initialize(card_num)
    @card_num = card_num.to_s.split('')
    raise ArgumentError.new('Please re-enter your card number') if @card_num.length != 16   
  end    
  
 def check_card
    @card_num.map.with_index do |digit, idx|
      idx.even? ? digit.to_i * 2 : digit.to_i 
    end.join('').split('').map(&:to_i).reduce(:+) % 10 == 0
  end
end

# Reflection

# What was the most difficult part of this challenge for you and your pair? - The most difficult challenge for me and my pair was trying to figure out a way to add up the double digits after doubling every other string. Once we found a solution, which was to join the array again, then split, which returned individual strings. Once figuring that bit out, the rest became much easier.
# What new methods did you find to help you when you refactored? -  I didn't learn any new methods for this challenge. What I did do is incorporate a suggestion I received in previous feedback to use .reduce, as well as using the &: instead of a block. I also used ternary operators after reviewing them in a previous challenge. 
# What concepts or learnings were you able to solidify in this challenge? - Using the &: instead of using a block, as well as .map. I'm getting more comfortable with the use of .map and how handy it can be instead of creating a separate array. 