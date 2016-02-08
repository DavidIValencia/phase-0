// DOM Manipulation Challenge


// I worked on this challenge [with: James Boyd].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

document.getElementById('release-0').className += 'done';


// Release 2:

document.getElementById('release-1').style.display = "none";


// Release 3:

document.getElementsByTagName('h1')[0].innerHTML="I completed release 2";


// Release 4:

document.getElementById('release-3').style.backgroundColor = 955251;


// Release 5:

var congrats = document.querySelectorAll(".release-4");
for ( var i = 0; i < congrats.length; i ++ ) {
  congrats[i].style.fontSize = '2em';
}

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

//Reflection

/*
What did you learn about the DOM?

I learned that you can utilize js to interact with html pages.  What I did not know going into this challenge was that you could add information directly into the html as it sits on the webpage.

What are some useful methods to use to manipulate the DOM?

document.getElementById and ElementsByTagName are both incredibly useful for selecting what you want to manipulate on the page.

*/