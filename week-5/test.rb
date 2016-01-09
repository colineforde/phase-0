class Ticket
	def initialize(venue, date) 
		@venue = venue
		@date = date
	end

	def date	
		@date	
	end

	def set_price(amount)
		@price = amount
	end

	def price=(amount)
		@price = amount 
	end 

	def venue
		@venue
	end

	def discount(percent)
		@price = @price * (100 - percent) / 100.0
	end
end


# th = Ticket.new("Town Hall", "11/12/14", 63.00 )
# cc = Ticket.new("Convention Center", "12/13/14")
# puts "We've created two tickets."
# puts "The first is for a #{th.venue} event on #{th.date}"
# puts "The second is for an event on #{cc.date} at #{cc.venue}"


ticket = Ticket.new("Town Hall", "11/12/13")
ticket.set_price(63.00)
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.set_price(72.50)
puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."