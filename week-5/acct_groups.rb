cohort_mates = ["Dong Wook Seo (John)", "Aaron Hu", "Adam Pinsky", "Akeem Street", "Alex Forger", "Andrew Kim", "Baron Kwan", "Brian Bier", "Byron Gage", "Carl Conroy", "Charlie Bliss", "Christopher Bunkers", "Cody Kendall", "Coline Forde", "David Valencia", "Emily Claire Bosakowski", "Everett Golden", "Hagai Zwick", "Heather Conklin", "Ian Wudarski", "Ieronim Oltean", "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathan Case", "Jonathan Schwartz", "Jonathan Silvestri", "Kathryn Garbacz", "Ian Kinner", "Kyle Cierzan", "Kyle Zelman", "Linda Oanh Ho", "Yiorgos Makridakis", "Matt Harris", "Matthew Baquerizo", "Menuka Samaranayake", "Michael Pintar", "Mollie Stein", "Lydia Nash", "Aaron Opsahl", "Peter Leong", "Peter Stratoudakis", "Prince Sadie", "Ryan F. Salerno", "Sanderfer Chau", "Sarah Finken", "EMMET SUSSLIN", "Sydney Rossman-Reich", "Eric Tenza", "Thomas Yancey", "Tim Kelly", "Timothy Beck", "Tyler Doerschuk"]

def acct_groups(names)
	groups = []
	names.shuffle.each_slice(4) do |person|
		groups << person
	end
	return groups 		
end


print acct_groups(cohort_mates)