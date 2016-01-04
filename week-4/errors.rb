# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    170
# 3. What is the type of error message?
#    in `<main>'
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#    The end after the while statement is missing
# 6. Why did the interpreter give you this error?
#    It couldn't find the second end even after reading all the way down, which is why the line of the error is 170.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#    35
# 2. What is the type of error message?
#    in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method 'south_park' for main:Object (NameError)
# 4. Where is the error in the code?
#    south_park needs to be defined
# 5. Why did the interpreter give you this error?
#    south_park is an undefined variable that Ruby cannot process as it is expecting south_park to be assigned a value with = or defined as a method.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#    50
# 2. What is the type of error message?
#    in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method 'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#    The method cartman is undefined, it would need to be defined to work
# 5. Why did the interpreter give you this error?
#    The interpreter is trying to feed a nil value to the method cartman, however, this value is undefined and thus the interpreter cannot proceed.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    65
# 2. What is the type of error message?
#    in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
#    You could fix this by putting an argument into cartmans_phrase or by calling cartmans_phrase without the argument.
# 5. Why did the interpreter give you this error?
#    Because the interpreter is trying to feed the argument 'I hate Kyle' into the method cartmans_phrase since cartmans_phrase takes no arguments.

# --- error -------------------------------------------------------

=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end


# 1. What is the line number where the error occurs?
#    84
# 2. What is the type of error message?
#    in 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#    cartman_says is being called with no arguments
# 5. Why did the interpreter give you this error?
#    The interpreter is trying to puts offensive message, however, since this has not been defined, the interpreter does not know what to do.



# --- error -------------------------------------------------------

=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end

# 1. What is the line number where the error occurs?
#    108
# 2. What is the type of error message?
#    in 'cartmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#    When the method is called, it is called with only one argument instead of 2
# 5. Why did the interpreter give you this error?
#    The interpreter is trying to call the method and can only find 1 argument even though the method requires 2 to function.

# --- error -------------------------------------------------------

=begin
5 * "Respect my authoritay!"
=end

# 1. What is the line number where the error occurs?
#    129
# 2. What is the type of error message?
#    in '*'
# 3. What additional information does the interpreter provide about this type of error?
#    String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    5 is trying to be multiplied by a string, which is not something that is correct in Ruby syntax
# 5. Why did the interpreter give you this error?
#    The interpreter is trying to multiply the integer, but it is not given another integer to complete the multiplication.

# --- error -------------------------------------------------------

=begin
amount_of_kfc_left = 20/0
=end


# 1. What is the line number where the error occurs?
#    146
# 2. What is the type of error message?
#    in '/'
# 3. What additional information does the interpreter provide about this type of error?
#    divided by 0
# 4. Where is the error in the code?
#    The division by 0
# 5. Why did the interpreter give you this error?
#    The interpreter cannot process dividing by 0

# --- error -------------------------------------------------------

=begin
require_relative "cartmans_essay.md"
=end

# 1. What is the line number where the error occurs?
#    164
# 2. What is the type of error message?
#    in 'require relative'
# 3. What additional information does the interpreter provide about this type of error?
#    cannot load such file
# 4. Where is the error in the code?
#    The error is in trying to require a file that does not exist
# 5. Why did the interpreter give you this error?
#    The interpreter attempted to locate the file within the directory, did not find it, and then prompted the user with the error message.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?
I feel as though they were all pretty easy to read.  I never knew that when I got an error message that it was so easy to interpret what was going wrong.

How did you figure out what the issue with the error was?
I looked at the line for each error first and tried to see if I could tell immediately what was going wrong.  If I could not, I would look at the additional information for the error message.

Were you able to determine why each error message happened based on the code?
Yes, some of the errors were obvious to see before I even ran the file.

When you encounter errors in your future code, what process will you follow to help you debug?
I will look at the line number first to see if there is an obvious flaw in the code at that point.  If I can't easily spot the problem, I will go more into the error message and try and find what is going wrong with the code from there.  If I still can't figure out the error, I will google the error message to see what could be causing the problem.

=end
