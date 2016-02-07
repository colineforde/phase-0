// // I chose the problem I did for Ruby review - the fibonacci sequence, and checkign to see if a number 
// //is in the fibonacci sequence. 
// // Pseudocode: Write a method that creates the fibonacci sequence up to the input number. 
// //In order to do this, the next number in the sequence will be the sum of the two previous numbers. 
// //Every time we output a number, we want to check to see if the number is equal to the number we're 
// //checking. If it's less than, the sequence can continue. If it's greater than, we want to return. 
// //If it's equal to, that means the number is in the fibonacci sequence and we should return true. 

// //initial solution:

// var is_fibonacci = function(num) {
// 	var output = [1]
// 	counter = 1
// 	while (counter <= num) {
// 		output.push(next_num(output))
// 		if (output[output.length - 1] === num * 1) {
// 			return true
// 		}else if (output[output.length - 1] > num) {
// 			return false
// 		}
// 		counter += 1
// 	}
// };  


// var next_num = function(arr) {
// 	if (arr.length < 2) {
// 		return arr[arr.length - 1]
// 	}else{
// 		return arr[arr.length - 1] + arr[arr.length - 2]
// 		}
// 	}

//Refactored solution:

var is_fibonacci = function(num) {
	var output = [1]
	counter = 1
	while (counter <= num) {
		output.push(next_num(output))
		if (output[output.length - 1] === num * 1) {
			return true
		}else if (output[output.length - 1] > num) {
			return false
		}
		counter += 1
	}
};  


var next_num = function(arr) {
	if (arr.length < 2) {
		return arr[arr.length - 1]
	}else{
		return arr[arr.length - 1] + arr[arr.length - 2]
		}
	}

//spec

// //"returns true with a large Fibonacci number" 
console.log(is_fibonacci(1597))  //true

// //returns false when it's not in the Fibonacci seqence"
console.log(is_fibonacci(3+100)) // false

// //"returns false on large non-Fibonacci numbers"
console.log(is_fibonacci(927372692193078999171)) //false

//REFLECTION
// What concepts did you solidify in working on this challenge? - I am now clear on getting
//the last item in an array using JS. It was a bit confusing at first as there is no .last
//as there is in Ruby, and using [-1] for the index does not work. You must take the length
//and do -1, -2, etc to get the index starting from the back. If you're reversing, you could
//also have a for loop, and have the loop start at the array.length-1 and work downwards until
//reaching 0. 
// What was the most difficult part of this challenge? - Getting it to work for very large
//numbers. JS is pretty inaccurrate when it comes to large numbers when getting this to work
//The syntax is correct but I tried everything in the book to get it to work for super big nums
//which I'm unable to do in JS.
// Did you solve the problem in a new way this time? -- No, same way. 
// Was your pseudocode different from the Ruby version? What was the same and what was different? - My pseucode was more detailed than the Ruby code. The Ruby version just said 
// what the output would be, and what fibonacci's number is, but in this one I tried to go 
//more in depth of what we're looking for, what the input will be, how we'll find it, and what
//will the output be. 
