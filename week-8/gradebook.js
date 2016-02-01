/*
Gradebook from Names and Scores

I worked on this challenge [with: Prince]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {}
// var addStudentsProperty = function(array) {
//   for (var i = 0; i < array.length; i++) {gradebook[array[i]] = new Object}
// }
// addStudentsProperty(students)
// var addTestScoresProperty = function(array) {
// for (var i = 0; i < array.length; i++) {gradebook[students[i]].testScores = array[i]}
// }
// addTestScoresProperty(scores)

// gradebook.addScore = function(name,score) {
//   gradebook[name].testScores.push(score);
// }

// gradebook.getAverage = function(name) {
//   return average(gradebook[name].testScores);
// }

// var average = function(array) {
//   var total = 0;
//   for (var i = 0; i < array.length; i++) {
//     total += array[i];
//   }
//   var final = total/array.length;
//   return final;
// }

// __________________________________________
// Refactored Solution

var gradebook = {}
var addStudentsProperty = function(students_array) {
  for (var i = 0; i < students_array.length; i++) {gradebook[students_array[i]] = new Object}
}
addStudentsProperty(students)
var addTestScoresProperty = function(scores_array) {
for (var i = 0; i < scores_array.length; i++) {gradebook[students[i]].testScores = scores_array[i]}
}
addTestScoresProperty(scores)

gradebook.addScore = function(name,score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
}

var average = function(scores_array) {
  var total = 0;
  for (var i = 0; i < scores_array.length; i++) {
    total += scores_array[i];
  }
  var final = total/scores_array.length;
  return final;
}






// __________________________________________
// Reflect
/*

What did you learn about adding functions to objects?

I learned that it is best to add functions to objects within their properties.  You do so just like making a function normally, you just set a variable = to it.

How did you iterate over nested arrays in JavaScript?

We iterated over nested arrays in js by calling out the objects out by their indexes.  We also used while i loops in order to iterate over the arrays.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

I was able to use push in js for the first time, which worked how it works in Ruby.

*/