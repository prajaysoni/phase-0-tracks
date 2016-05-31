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

/*

Test Data generator function
Input: integer
Output: array of string

	Create function with 1 argument for the number of words (integer)
	Create an empty array inside the function
	Create a for loop running 0 to (number of words - 1) times.
	Store a random number 1-10 in a variable
	Create a random word variable that is empty
	Nest another for loop inside running 0 to (random number of letters) times
	Each time, add a random letter to the random word variable
	When the  inner loop is done, push the word into the array
	When the outer loop is done, return the array
*/

function testData(words) {
	var list = [];
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < words; i++) {
		var randNum = Math.round(Math.random() * (10-1) + 1);
		var randWord = '';
		for (var n = 0; n < randNum; n++) {
			var randChar = Math.round(Math.random() * (25));
			randWord += alpha[randChar];
		}
		list.push(randWord);


	}

	return list;
}


testData(5);
console.log(testData(5));







// Driver code for keyValue

console.log(keyValue({name: 'bob', test: '123', qwerty: 'asdfg'}, {name: 'bill', test: '123'}));
console.log(keyValue({color: 'red', num: '3'}, {age: '31', car: 'Corvette'}));



// Driver code for longestPhrase

console.log(longestPhrase(['long', 'longer', 'longest']))
console.log(longestPhrase(['longest', 'longer', 'long']))
console.log(longestPhrase(['long', 'longest', 'longer']))


