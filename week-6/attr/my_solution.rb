
#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: An @name
# Output: A string with that name
# Steps: Define @name within NameData, pass it to the class greetings, invoke greetings, return the string.

class NameData
  def yourname
    "David"
  end
end



class Greetings

  def initialize
    @namedata = NameData.new
  end

  attr_reader :namedata

  def hello
    puts "Hello #{@namedata.yourname}"
  end



end

greet = Greetings.new
greet.hello



# Reflection

=begin

What are these methods doing?

These methods are assigning an age, occupation, and name to an instance variable within the class profile.  The first bit of code sets up the instance variable to default for Matt Kim upon initialization and then allows the ability to modify any of the objects using methods.  The code makes a new instance of Profile, p's the name, age, and occupation, then changes it to the new person using the defined methods and re p's it.

How are they modifying or returning the value of instance variables?
They are using p to return values of the instance variables and they are modifying existing instance variables using another method and its input.

What changed between the last release and this release?

The definition of age has been replaced with an attr_reader.

What was replaced?

The age method.

Is this code simpler than the last?
Yes it is simpler, because it was shortened by a method.  This can be implemented for the other variables as well.

What changed between the last release and this release?

Age is now both reader and writer.

What was replaced?

The writing age method.

Is this code simpler than the last?
Quite a bit so

What is a reader method?

A reader method is one that allows the instance variable you defined earlier to be read by other methods, but not changed.

What is a writer method?

A writer method is one that allows the instance variable you defined earlier to be changed by other methods, but not read.

What do the attr methods do for you?

The attr methods allow me to easily utilize instance variables between methods within the class.  They also allow me th customize which methods I want to access which variables to prevent bugs.

Should you always use an accessor to cover your bases? Why or why not?
What is confusing to you about these methods?

You should not always use an accessor.  Accessor methods are only for instance variables that need to be written and read outside of the variable they are defined in.  There is no reason to have a variable which only exists in a specific method have accessor.  Not much is confusing about these methods.

=end
