=begin

Pseudocode
Take cohort, have code see if number of people is divisible by 5 or by 4, if not, see remove groups of 4 until it is divisible by groups of 5, have the groups come out in separate arrays for each accountability group, return all of the groups.


=end
#Initial solution

cohort = [
"John Seo",
"Aaron Hu",
"Adam Pinsky",
"Akeem Street",
"Alex Forger",
"Andrew Kim",
"Baron Kwan",
"Brian Bier",
"Byron Gage",
"Carl Conroy",
"Charlie Bliss",
"Christopher Bunkers",
"Cody Kendall",
"Coline Forde",
"David Valencia",
"Emily Bosakowski",
"Everett Golden",
"Hagai Zwick",
"Heather C",
"Ian Wudarski",
"Ieronim Oltean",
"Jake Hamilton",
"James Boyd",
"Jasmeet Chatrath",
"Jenna El-Amin",
"Jerrie Evans",
"Joe Case",
"Jonathan Case",
"Jonathan Schwartz",
"Jonathan Silvestri",
"Kathryn Garbacz",
"Ian Kinner",
"Kyle Cierzan",
"Kyle Zelman",
"Andrew Larson",
"Linda Oanh Ho",
"Yiorgos Makridakis",
"Charlotte Manetta",
"Matt Harris",
"Matthew Baquerizo",
"Menuka Samaranayake",
"Michael Pintar",
"Mollie Stein",
"Lydia Nash",
"Aaron Opsahl",
"Peter Leong",
"Peter Stratoudakis",
"Prince Sadie",
"Ryan F. Salerno",
"Sanderfer Chau",
"Sarah Finken",
"Emmet Susslin",
"Sydney Rossman-Reich",
"Eric Tenza",
"Thomas Yancey",
"Tim Kelly",
"Timothy Beck",
"Tyler Doerschuk",
]



def cohort_sort(array)
  if array.length % 5 == 0
    final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 1
    array << ""
    final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 2
    array << ""
    array.insert(0, "")
    final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 3
    array << ""
    array.insert(0, "")
    array.insert(5, "")
    final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 4
    array << ""
    array.insert(0, "")
    array.insert(5, "")
    array.insert(10, "")
    final_assignments = array.each_slice(5).to_a
  end
  p final_assignments
end


# Refactored Solution

def cohort_sort(array)
  if array.length % 5 == 0; final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 1
    array << ""
    final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 2
    array << ""
    array.insert(0, "")
    final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 3
    array << ""
    array.insert(0, "")
    array.insert(5, "")
    final_assignments = array.each_slice(5).to_a
  elsif array.length % 5 == 4
    array << ""
    array.insert(0, "")
    array.insert(5, "")
    array.insert(10, "")
    final_assignments = array.each_slice(5).to_a
  end
  p final_assignments
end

=begin

What was the most interesting and most difficult part of this challenge?

I feel like the most difficult part of this challenge was the multitude of ways I had to assess it before I could find a working solution.  It took me well over 2 hours to put together what I have above, and I feel as though there is probably a much better solution I am just not seeing using Enumerables.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, I feel as though I am improving my ability to break the problem down.  It provides a good baseline so that I don't repeatedly have to start over from scratch again.  I think learning every method in Ruby Docs is a good way to make this even more effective.

Was your approach for automating this task a good solution? What could have made it even better?

I could have figured out a way to sort the data into groups using an enumerable method.  I could not figure out a way to properly have the groups sort themselves if the number was not divisible by 4 or 5.  If the method could analyze the number of things we want to break up into 5 and how many 4 and then put them in groups, that would be a lot more elegant.

What data structure did you decide to store the accountability groups in and why?

I stored them in a hash so that I could access them easily.  Originally, I put the entire listing into a string so that I could count the number of commas.  My hope was that I could figure out a way to break up the string by every 4th comma, but I was unable to figure out how to do that split.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I did not learn any new methods by refactoring my solution, but I did learn the method .each_slice while I was solving this problem.  This is a really good method for splitting things up into groups, however, it is somewhat limited in this utility because I cannot tell it to break things up into groups of 5 or 4 evenly.  Maybe there is a better method or some type of simple logic that I am missing to this.

=end




