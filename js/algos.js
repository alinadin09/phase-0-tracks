// figure out the length of each phrase
// SORT by length from greatest to least
// return the phrase at index 0.


var names = ["alina", "alina mehvesh", "alina mehvesh din"];

function namelength(arr) {
	
	
	var i;
	var new_variable = ""
	for (i = 0; i < arr.length; i++) { 
		if (arr[i].length > new_variable.length) {
			new_variable == arr[i];
		}
	}


}

namelength(names); 



