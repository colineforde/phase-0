// I chose the problem I did for Ruby review - the fibonacci sequence, and checkign to see if a number is in the fibonacci sequence. 
// Pseudocode: Write a method that creates the fibonacci sequence up to the input number. In order to do this, the next number in the sequence will be the sum of the two previous numbers. Every time we output a number, we want to check to see if the number is equal to the number we're checking. If it's less than, the sequence can continue. If it's greater than, we want to return. If it's equal to, that means the number is in the fibonacci sequence and we should return true. 

//initial solution:

var is_fibonacci = function(num) {
	var output = [1]
	counter = 1
	while (counter <= num) {
		output << next_num(output)
		if (output[output.length - 1] === num) {
			return true
		}else if (output[output.length - 1] > num) {
			return false
		};
		console.log(output)
		counter += 1
	}
};  


var next_num = function(arr) {
	if (arr.length < 2) {
		return arr[arr.length-1]
	}else{
		return arr[arr.length-1] + arr[arr.length-2];
	}
};

//spec

//"returns true with a large Fibonacci number" 
console.log(is_fibonacci(8670007398507948658051921))  //true

//returns false when it's not in the Fibonacci seqence"
console.log(is_fibonacci(3+100)) // false

//"returns false on large non-Fibonacci numbers"
console.log(is_fibonacci(927372692193078999171)) //false
