#What does puts do?

Puts returns nil, takes the value of the console, and prints this new value to a new line.  This is distinct from print because print does not start a new line.

#What is an integer? What is a float?

An integer is a whole number such as 2, 4, or 64.  A float is a number with a decimal point such as 1.0, 4.5, or -4.3.  Integers within Ruby round down to the closest whole number during division.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference, as described above, is that integers round down during division.  This represents how integers are whole objects and not divisible by decimal values.  A real world example of this is if you were buying oranges and they cost $3 each, you couldn't get more than $9 dollars worth if you had $10 on you.  This is distinct from float division which is more similar to how a calculator would divide.

# Hours in a year

```ruby
puts 24*365
```

# Minutes in a decade

```ruby
puts 60*24*365*10
```

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles addition, subtraction, multiplication, and division of numbers in two different ways.  Ruby works separately with integers and floats (numbers with decimals), and cannot be input with both.  Math is similar between floats and integers, the one exception being Ruby rounds down to the nearest whole number with integers during division.

#What is the difference between integers and floats?

Integers are negative or positive whole numbers whereas floats contain decimals.  If there is no value in the decimal place of a float, one must still attach one for Ruby to see it as a float (e.g. 2.0).

#What is the difference between integer and float division?

As I explained above, Ruby treats integer and float division separately.  One can find the remainder of an integer division by using the modulus command "%".

#What are strings? Why and when would you use them?

Strings are groups of letters contained in quotation marks.  Strings are useful because Ruby treats letters, blocks of letters, and number similarly.  Using this knowledge, Ruby can be made to convert strings into floats for calculation, convert integer data into a string that is shown to the user, and a wide variety of other possibilities.

#What are local variables? Why and when would you use them?

Local variables are one word lines of text written within Ruby.  If one wants to name a local variable more than one word, one must use _ in order to separate the words instead of a space.  Local variables are used in order to define pieces of ruby that will be used repeatedly.  Since one can set a large amount of code to a variable, one can build out more complex equations without wasting time.

#How was this challenge? Did you get a good review of some of the basics?

This was a good challenge.  I was a bit unsure in the sepcificity of some of the directions, but I found that it wasn't too hard to work out what would pass the tests.  I had a good review of the basics, it's good to go back and review everything again because it's all so new.

<a href="basic.math.rb">Basic Math</a>

<a href="defining-variables.rb">Defining Variables</a>

<a href="simple-string.rb">Simple-String</a>