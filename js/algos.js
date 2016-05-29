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

	for (var i = 0; i < phrases.length - 1; i++) {
		console.log(i);
		if (phrases[i].length > phrases[i+1]) {
			var longest = phrases[i];
		}
		else {
			longest = phrases[i+1];
		}
		/*
		i = 0
		l = aa

		i = 1
		l = aaa

		i = 2



		*/
	}
	return longest;
}

//console.log(longestPhrase(['a','aa','aaa','aaaa','aaaaa']));
console.log(longestPhrase(['aa', 'aaa', 'a']));










