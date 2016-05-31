/*

Longest phrase function
Input: An array of strings
Output: Longest string from array

	Start the function with one argument
	Create an array with the value of the argument
	Create a variable to hold the longest phrase
	Create a loop to go through each element in the array
	Assign the first value of the array to the longest phrase variable
	Test to see if this is bigger than the next
		If it is, then move to the next
		Else, assign the next value to the variable, then move on
	When the loop is done, the variable should hold the longest string

*/

function longestPhrase(list) {

	var phrases = list;
	var longest = phrases[0];

	for (var i = 0; i < phrases.length - 1; i++) {
		if (longest.length < phrases[i+1].length) {
			longest = phrases[i+1];
		}

	}
	return longest;
}

/*

Key-value match function
Input: two objects
Output: boolean

	Create a function with two arguments for each object
	Create a for in loop
	If both objects have the same key
		If both objects have the same value
			return true
	If none of the conditions are met through the whole loop
		return false





*/


function keyValue(obj1, obj2) {

	for (var key in obj1) {
		if (obj1.hasOwnProperty(key) && obj2.hasOwnProperty(key)) {
			if (obj1[key] == obj2[key]) {
				return true;
			}

		}
		
	}
	return false;



}


console.log(keyValue({name: 'bob', test: '123', qwerty: 'asdfg'}, {name: 'bill', test: '123'}));
console.log(keyValue({color: 'red', num: '3'}, {age: '31', car: 'Corvette'}));











console.log(longestPhrase(['long', 'longer', 'longest']))
console.log(longestPhrase(['longest', 'longer', 'long']))
console.log(longestPhrase(['long', 'longest', 'longer']))


