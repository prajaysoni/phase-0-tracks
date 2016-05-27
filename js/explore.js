/*

Create reverse function
Input: string
Output: string reversed

The function takes in a string as an argument
Create a variable to store the reversed string
Create a loop
For each letter of the string, starting at the end
Add that letter to the new variable
When the loop is done, print the new string out

*/

function reverseString(str) {
	var newStr = "";
	var origStr = str;
	for (var i = origStr.length - 1; i >= 0; i--) {
		newStr = newStr + origStr[i];
	}
	return newStr;
}

console.log(reverseString("hello world"));
