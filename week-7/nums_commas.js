// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

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

// // Your Own Tests (OPTIONAL)


console.log(numCommas(1000000))

// Reflection
// Initial Solution



// Refactored Solution




// Your Own Tests (OPTIONAL)
console.log(numCommas(1,000)
console.log(numCommas(10,000)
console.log(numCommas(1,000,000)
console.log(numCommas(10,000,000)
console.log(numCommas(100,000,000)



// Reflection