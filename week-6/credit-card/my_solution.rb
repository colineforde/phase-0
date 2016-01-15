# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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
    end.
    join('').
    split('').
    map(&:to_i).
    reduce(:+) % 10 == 0
  end
end







# Reflection