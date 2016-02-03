// DOM Manipulation Challenge


// I worked on this challenge with: Joe Case.


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className='done';


// Release 1:

document.getElementById('release-1').style.display='none';



// Release 2:

document.getElementsByTagName("H1")[0].innerHTML = 'I completed release 2.';


// Release 3:
document.getElementById('release-3').style.backgroundColor = "#955251";


// Release 4:

var text = document.getElementsByClassName('release-4');
for (var i = 0; i < text.length; i ++) {
	text[i].style.fontSize = "2em";
}

// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflection 
// What did you learn about the DOM? - I learned that DOMs are another way of editing the file
// without going back into the HTML. They're pretty cool if you want to change multiple sections that 
// have the same element. It saves a bit of time. 
// What are some useful methods to use to manipulate the DOM? - getElementById as well as getElementByClassName
// are pretty useful. There are also methods to change the style as you would in CSS, which is really
//useful. 
