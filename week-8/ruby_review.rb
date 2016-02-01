# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement
=begin

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

=end

# 2. Pseudocode what happens when the code above runs

#The code fails because the assertion was not met.

# 3. Copy your selected challenge here

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



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert { cohort.kind_of?(Array) == true }
assert { cohort.length >= 20 }

cohort_sort(cohort)

# 5. Reflection

=begin

What concepts did you review or learn in this challenge?

In this concept, I learned about using assert.  Like js, you can use assertions to make sure if there something wrong with your code from the get-go, it will not run.  I learned how to assign these assertions in Ruby and how to use them.

What is still confusing to you about Ruby?

I am still confused about what rails is and how we interact with it.

What are you going to study to get more prepared for Phase 1?

I am definitely going to brush up more on my js skills.  I have not put the time in to get as good at js as I would like, and that is something that seems to be very useful

=end
