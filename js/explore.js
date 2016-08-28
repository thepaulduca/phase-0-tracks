// declare a string
// create a function which takes a string as a parameter
// save the counting varible equal to the string length minus 1 to deal with 0 index
// create a empty string variable to store your reversed string
// continue the loop while the counter varible is bigger then or equal to 0 (because of 0 indexing)
// use the counter varible as an index and save that into the empty string 
// it will start with the last letter and end on the first one which will save the reverse of your orginal string
// save each letter in opposite order 


var str = 'string'
var new_str = ''

for(var x = str.length - 1; x >= 0; new_str += str[x--]) {
};

console.log(new_str)

// now recreated with the ability to call it with different strings

function reverse_string(string) {
	for(var reverse_index = string.length - 1, new_string = ''; reverse_index >= 0; new_string += string[reverse_index--]) {};
		return new_string;
};

console.log(reverse_string('hello'));
console.log(reverse_string('What the heck'));

var another_string = 'Here is another string';
console.log(reverse_string(another_string));

if (1 == 1){
	console.log(reverse_string('turn this around'))
} else {
	console.log("Didn't work")
}

