//Group project week 7

	// Release 4 - Coline Forde
	// Refactor

var sum = function(array){
  return array.reduce((a,b) => a + b);
};

// As a user, I want to take a list of numbers, and add all the numbers together. 

var mean = function(array){
  return sum(array)/ array.length;
};

// As a user, I want to take a list of numbers, add them all together, and then take the average of the sum. 

var median = function(array){
  var arr = array.sort(function(a, b){return a-b});
  if (arr.length % 2 === 0) {
    return mean([arr[arr.length/2], arr[(arr.length/2)-1]])
  } else {
    return arr[Math.floor(arr.length/2)]
  }
};

// As a user, I'd like to take a list of numbers, sort them in order from smallest to largest, and find the middle number. If there are two middle numbers, then I'd like to average the two of them to find the middle number. 