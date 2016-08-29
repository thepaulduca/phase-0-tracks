// have an empty string (longest_string) to store the longest string inside of and to compare to
// iterate through the array
// compare each string length to the (longest_string) varible length
//if it is longer then the current string stored in (longest_string) 
//replace the variable (longest_string) with the current string)
//return the (longest_string) variable

function longest_string_finder(array) {
for(var x = 0, longest_string = ""; x < array.length; x ++)
 if(longest_string.length < array[x].length){longest_string = array[x]};
	return longest_string;
};


var my_array = ["Saab", "Volvo", "longest", "BMW"]
console.log(longest_string_finder(my_array));


// iterate through two objects and see if they have matching key, value pair

// hit wall so lost ! 



