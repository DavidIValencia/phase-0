# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "What is your first name"
f_name = gets.chomp.to_s
puts "What is your middle name"
m_name = gets.chomp.to_s
puts "What is your last name"
l_name = gets.chomp.to_s
puts "Hello #{f_name} #{m_name} #{l_name}"

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "What is your favorite number?"
number = gets.chomp.to_i
number = number + 1
puts "#{number} is a bigger and better number!"

=begin
How do you define a local variable?

A local variable is defined as a one word thing that is equal to what is assigned to it by an "=".  Local variables are called by name, and can change values based on resetting their assignment with "=".

How do you define a method?

A method is a one word thing that contains parameters attached to the end of it in between parenthesis "method()".  Methods take on these parameters by the user entering in the method name along with the parameter they type in e.g. "method(parameter)".  You define a method using "def method" and then beneath that what the method actually does is written followed by end.

What is the difference between a local variable and a method?

A local variable is assigned to whatever it does whereas a method takes in parameters and outputs the result of the method.  Methods and local variables can work together such as when a local variable is assigned to "gets" and then entered into a method on the next line of code.

How do you run a ruby program from the command line?

ruby "file.rb"

How do you run an RSpec file from the command line?

rspec "file.rb"

What was confusing about this material? What made sense?
I don't really think there was that much confusing material this week.  This really just served as a good review of the stuff we covered prior to our interview with DBC.

https://github.com/USCForever/phase-0/blob/master/week-4/define-method/my_solution.rb
https://github.com/[USCForever]/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/[USCForever]/phase-0/blob/master/week-4/math/my_solution.rb
=end

