// This challenge took me [#] hours.

// /Create a function that takes an array of athletes that include a name and event property. (Sarah Hughes (Links to an external site.), for example, could have "Ladies' Singles" as her event). Your function should add a  win property to each athlete in the array. In the example above,  win would print "Sarah Hughes won the Ladies' Singles!"


// Would it make more sense to have win be defined as a function expression or a function declaration?


// Warm Up
var add_win = function (athletes_array) {
  for (var index = 0; index < athletes_array.length; index++) {
    athletes_array[index].win = athletes_array[index].name + " won the " + athletes_array[index].event + "!";
    console.log(athletes_array[index].win);
  }
}

var mike = {name: "Mike Smith", event: "Men's swimming"};

var sarah = {name: "Sarah", event: "Ladies running"};

var my_array = [sarah, mike];

add_win(my_array);

// Bulk Up


// Jumble your words
var reverse = function(words) {
 return words.split('').reverse().join('');
}

var word = "hello how are you"
console.log(reverse(word))

// 2,4,6,8

var even_numbers = function (num_array) {
  var new_array = []
  for (var i = 0; i < num_array.length; i++) {
    if (num_array[i] % 2 === 0) {
      new_array.push(num_array[i]);
    }
  }
  return new_array;
}

var arr = [1,2,3,4,5,6,7,8]
console.log(even_numbers(arr))

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name; 
  this.age = age; 
  this.sport = sport; 
  this.quote = quote;
};

  
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection