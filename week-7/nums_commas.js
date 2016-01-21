// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Peter L..

// Pseudocode - The function will take in an integer. First split the integer and convert it to a string so that we can iterate over each item. We want to put a comma after every three zeros, so working from the back if the length / 3 leaves no remainders, and the output isn't an empty string, then you want to shovel into the output a comma. Otherwise, you want to shovel into the output  the number at that index. Once you have the array, you need to reverse the array since we started from the back, in order to have the numbers in the correct order, and return that output. 

var numCommas = function(number) {
 var num = String(number);
 var output = ""
  for (var i = num.length - 1; i >= 0 ; i --){
    if ((num.length - i - 1) % 3 === 0  && output != ''){
     output = output + ','
    }
    output = output + num[i] 
  }
  var output2 = ''
  for (var i = output.length -1; i >= 0; i --) {
    output2 = output2 + output[i]
  }
  return output2
}

// Refactored Solution

var numCommas = function(number) {
 var num = String(number);
 var output = ""
  for (var i = num.length - 1; i >= 0 ; i --){
    if ((num.length - i - 1) % 3 === 0  && output != ''){
     output += ','
    }
    output += num[i] 
  }
   return output.split('').reverse().join('')
}



// Your Own Tests (OPTIONAL)
console.log(numCommas(1,000)
console.log(numCommas(10,000)
console.log(numCommas(1,000,000)
console.log(numCommas(10,000,000)
console.log(numCommas(100,000,000)



// Reflection