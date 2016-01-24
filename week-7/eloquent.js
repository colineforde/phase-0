// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "coline"
console.log(name * 2)


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//triangle

for (triangle = "#"; triangle.length <=7; triangle += "#"){
  console.log(triangle);
};

// Functions
//favorite food 

prompt("what is your favorite food?")
console.log("Hey! That's my favorite too!")


// Complete the `minimum` exercise.
var min = function(a,b) {
  if (a > b) {
    return b; 
  } else {
    return a; 
  }
};


// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Coline",
	age: 24,
	favoriteFoods: ["pizza", "falafel", "salad"],
	quirk: "I collect foreign money"
};
