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

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.