// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

/*var variable = 3
  variable = 2
  console.log(variable)*/


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

/*var shell = "";
for (var i=1; i<8; i++){
console.log(shell = shell + "#")
}*/

// Functions

// Complete the `minimum` exercise.

// Your code here.

/*function min(x,y){
  return Math.min(x,y);
  }
console.log(min(0, 10));
console.log(min(0, -10));*/

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

/*var me = {
  name: "David",
  age: 24,
  favorite foods: "pizza, stir-fry, cheesecake",
  qurik: "I can lick my elbow"
}*/

/*
Ch. 1: Values, Types, and Operators (Links to an external site.)

Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

Javascript and Ruby are similar in that these objects are written similarly in both (strings with "" for example).  Basic numerical functions such as arithmetic can also be called on numbers in both languages.  The languages are different in that Ruby divides integers in whole numbers and js uses a decimal point for division.  There is also no string interpolation in js like Ruby.

Ch. 2: Program Structure (Links to an external site.)

What is an expression?

An expression is anything in JavaScript which produces a value.  Expressions can be produced using functions as an example.

What is the purpose of semicolons in JavaScript? Are they always required?

Semicolons serve the purpose of separating the lines that you feed into the js interpreter so that it knows how to process them.  They are not always required, but it is not easy for a beginner to understand all of the instances where they are optional, so you can include them to be safe.

What causes a variable to return undefined?

If you ask for the value of it, and the variable is empty.

Write your own variable and do something to it in the eloquent.js file.

see line 8

What does console.log do and when would you use it? What Ruby method(s) is this similar to?

Console.log is an expression that uses the log property from the console variable.  It is similar to puts and print from Ruby, and it is useful for showing the output of work from the js file.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

prompt("what's your favorite type of food?");
alert("Hey! That's my faorite too!")

Describe while and for loops

While and for loops are useful for iterating through objects in js.  They work similarly to how they do in Ruby, although they have a different shortcut format for being called that you can do prior to the curly brackets.  It is notable that there is no each in js.

What other similarities or differences between Ruby and JavaScript did you notice in this section?

It seems as though pretty much anything you do in Ruby you can accomplish in js.  The biggest distinction is that Ruby is a lot cleaner than js in terms of the number of steps you have to go through, and js behaves incredibly destructively.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

line 15

Ch. 3: Functions (Skip the sections on closure and recursion)

What are the differences between local and global variables in JavaScript?

Local variables are within functions and global variables are outside of them.  Local variables are only accessable within their functions, whereas global variables are accessible by all of the functions in the environment.

When should you use functions?

When you are trying to repeat an action in js.  It is similar to how you define methods within Ruby in order to repeat pieces of code for different inputs.

What is a function declaration?

It is by calling the function and then the name (like function name(){}) It is processed outside of the normal routes of control flow within js, which is useful.  You have to be careful not to put these calls within loops though.

Complete the minimum exercise in the eloquent.js file.



Ch. 4: Data Structures: Objects and Arrays

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

The difference is that the brackets are used to call specific elements within the array and the dot format is used to call the property of the whole array.

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

line 35

What is a JavaScript object with a name and value property similar to in Ruby?

It is similar to an instance variable within a class.

What are the biggest similarities and differences between JavaScript and Ruby?

I think the biggest similarities are the way the logic flows in the language and how the objects are pretty much the same as the ones we use in Ruby.  The biggest difference is that you have to redefine variables constantly because of the non-destructive nature of the language.

Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?

Absolutely.  It was great to see the way that shortcuts were defined within Ruby and how it looks like spelled out.  I understand iteration a lot more now and how it works technically.

How do you feel about diving into JavaScript after reading these chapters?

I feel as though the core concepts are similar enough for me to thrive.  The biggest challenge will be the errors don't tell you which line they broke on.
*/